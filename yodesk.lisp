;; Data types
(defun read-string (stream length)
  "Reads a string from the passed in stream of the specified length"
  (let ((str (loop for i upto (1- length)
                   collect (read-byte stream))))
    (format nil "~{~A~}" (mapcar #'code-char str))))

(defun read-header (stream)
  "Reads a section header, a 4-character long string denoting a
  section of this binary format."
  (read-string stream 4))

(defun read-number (stream &key (length 4) (endian :little-endian))
  "Reads a number from the passed in stream, defaults to 4 bytes and
  :little-endian, but those can be changed to :big-endian, or any
  number of bytes"
  (let* ((nums (loop for i upto (1- length) collect (read-byte stream)))
         (nums (if (eq endian :big-endian) (reverse nums) nums)))
    (loop for num in nums
          and i from 0
          summing (ash num (* 8 i)))))

(defun read-version (stream)
  "Reads a version number from the passed in stream"
  (+ (read-number stream :length 2 :endian :big-endian)
     (/ (read-number stream :length 2 :endian :big-endian) 1000.0)))

(defun read-data (stream length)
  "Reads a number of bytes into a list, or until :eof"
  (loop for i upto (1- length)
        for byte = (read-byte stream nil :eof)
        collect byte))

;; Format dissection
(defgeneric parse-section (type stream)
  (:documentation "Reads a section and returns a List describing it"))

(defun parse-stream-section (stream)
  "Reads a stream header from the passed-in stream, and dispatches it
  to the correct reader method."
  (parse-section (intern (read-header stream) :keyword) stream))

(defun parse-yodesk (&optional (file "YODESK.DTA"))
  "Parses the YODESK.DTA data file"
  (with-open-file (stream file :element-type '(unsigned-byte 8))
    (loop for parsed = (parse-stream-section stream)
          collect parsed
          until (eq :endf (first parsed)))))

;; Default fallback
(defmethod parse-section (type stream)
  "Handling the general section style"
  (let* ((length (read-number stream))
         (data (read-data stream length)))
    (list type :length length :data data)))

;; Version
(defmethod parse-section ((type (eql :vers)) stream)
  "Handling the version"
  (list type :length 4 :data (read-version stream)))

;; Zones
(defun parse-izone (stream)
  "Parses a single IZON section"
  (let* ((no-idea (read-number stream :length 2))
         (length (read-number stream :length 2))
         (no-idea2 (read-number stream))
         (header (read-header stream))
         (data (read-data stream (- length 6))))
    (list (intern header :keyword)
          :data (list :no-idea (cons no-idea no-idea2) :data data))))

(defmethod parse-section ((type (eql :zone)) stream)
  "Handles the \"ZONE\" section of the binary file, which includes a
  bunch of nested IZONs"
  (let* ((zone-count (read-number stream :length 2))
         (izones (loop for i upto (1- zone-count)
                       collect (parse-izone stream))))
    (list type :data izones)))

;; Images
(ql:quickload :zpng)
(load "palette.lisp")

(defun get-color (index)
  "Fetches a color list from the pallete"
  (let ((r (elt PALLETE (+ 2 (* index 4))))
        (g (elt PALLETE (+ 1 (* index 4))))
        (b (elt PALLETE (* index 4))))
    (list r g b)))

(defun write-png (tile-data name &key (width 32) (height 32))
  "Writes an individual PNG file given tile data and a filename"
  (with-open-file (out name :direction :output
                            :if-exists :supersede
                            :element-type '(unsigned-byte 8))
    (let ((png (make-instance 'zpng:pixel-streamed-png
                              :width width :height height)))
      (zpng:start-png png out)
      (loop for pixel in tile-data
            do (zpng:write-pixel (get-color pixel) png))
      (zpng:finish-png png))))

(defun write-pngs (tile-data &key (image-size-bytes 1024) (flags 4))
  "Parses a tile-data into smaller images and writes them according to
  how big the data is in image-size-bytes and flags"
  (let ((rec-size (+ image-size-bytes flags)))
    (loop for image upto (1- (/ (length tile-data) rec-size))
          for start = (+ flags (* rec-size image))
          for flag = (subseq tile-data (- start flags) start)
          for data = (subseq tile-data start (+ start image-size-bytes))
          for filename = (format nil "img/img~A flag~A.png" image flag)
          do (write-png data filename))))
