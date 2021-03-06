(defconstant PALLETE
  #(#x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00
    #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00
    #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00
    #x00 #xFF #xFF #x8B #x00 #xC3 #xCF #x4B #x00 #x8B #xA3 #x1B #x00
    #x57 #x77 #x00 #x00 #x8B #xA3 #x1B #x00 #xC3 #xCF #x4B #x00 #xFB
    #xFB #xFB #x00 #xEB #xE7 #xE7 #x00 #xDB #xD3 #xD3 #x00 #xCB #xC3
    #xC3 #x00 #xBB #xB3 #xB3 #x00 #xAB #xA3 #xA3 #x00 #x9B #x8F #x8F
    #x00 #x8B #x7F #x7F #x00 #x7B #x6F #x6F #x00 #x67 #x5B #x5B #x00
    #x57 #x4B #x4B #x00 #x47 #x3B #x3B #x00 #x33 #x2B #x2B #x00 #x23
    #x1B #x1B #x00 #x13 #x0F #x0F #x00 #x00 #x00 #x00 #x00 #x00 #xC7
    #x43 #x00 #x00 #xB7 #x43 #x00 #x00 #xAB #x3F #x00 #x00 #x9F #x3F
    #x00 #x00 #x93 #x3F #x00 #x00 #x87 #x3B #x00 #x00 #x7B #x37 #x00
    #x00 #x6F #x33 #x00 #x00 #x63 #x33 #x00 #x00 #x53 #x2B #x00 #x00
    #x47 #x27 #x00 #x00 #x3B #x23 #x00 #x00 #x2F #x1B #x00 #x00 #x23
    #x13 #x00 #x00 #x17 #x0F #x00 #x00 #x0B #x07 #x00 #x4B #x7B #xBB
    #x00 #x43 #x73 #xB3 #x00 #x43 #x6B #xAB #x00 #x3B #x63 #xA3 #x00
    #x3B #x63 #x9B #x00 #x33 #x5B #x93 #x00 #x33 #x5B #x8B #x00 #x2B
    #x53 #x83 #x00 #x2B #x4B #x73 #x00 #x23 #x4B #x6B #x00 #x23 #x43
    #x5F #x00 #x1B #x3B #x53 #x00 #x1B #x37 #x47 #x00 #x1B #x33 #x43
    #x00 #x13 #x2B #x3B #x00 #x0B #x23 #x2B #x00 #xD7 #xFF #xFF #x00
    #xBB #xEF #xEF #x00 #xA3 #xDF #xDF #x00 #x8B #xCF #xCF #x00 #x77
    #xC3 #xC3 #x00 #x63 #xB3 #xB3 #x00 #x53 #xA3 #xA3 #x00 #x43 #x93
    #x93 #x00 #x33 #x87 #x87 #x00 #x27 #x77 #x77 #x00 #x1B #x67 #x67
    #x00 #x13 #x5B #x5B #x00 #x0B #x4B #x4B #x00 #x07 #x3B #x3B #x00
    #x00 #x2B #x2B #x00 #x00 #x1F #x1F #x00 #xDB #xEB #xFB #x00 #xD3
    #xE3 #xFB #x00 #xC3 #xDB #xFB #x00 #xBB #xD3 #xFB #x00 #xB3 #xCB
    #xFB #x00 #xA3 #xC3 #xFB #x00 #x9B #xBB #xFB #x00 #x8F #xB7 #xFB
    #x00 #x83 #xB3 #xF7 #x00 #x73 #xA7 #xFB #x00 #x63 #x9B #xFB #x00
    #x5B #x93 #xF3 #x00 #x5B #x8B #xEB #x00 #x53 #x8B #xDB #x00 #x53
    #x83 #xD3 #x00 #x4B #x7B #xCB #x00 #x9B #xC7 #xFF #x00 #x8F #xB7
    #xF7 #x00 #x87 #xB3 #xEF #x00 #x7F #xA7 #xF3 #x00 #x73 #x9F #xEF
    #x00 #x53 #x83 #xCF #x00 #x3B #x6B #xB3 #x00 #x2F #x5B #xA3 #x00
    #x23 #x4F #x93 #x00 #x1B #x43 #x83 #x00 #x13 #x3B #x77 #x00 #x0B
    #x2F #x67 #x00 #x07 #x27 #x57 #x00 #x00 #x1B #x47 #x00 #x00 #x13
    #x37 #x00 #x00 #x0F #x2B #x00 #xFB #xFB #xE7 #x00 #xF3 #xF3 #xD3
    #x00 #xEB #xE7 #xC7 #x00 #xE3 #xDF #xB7 #x00 #xDB #xD7 #xA7 #x00
    #xD3 #xCF #x97 #x00 #xCB #xC7 #x8B #x00 #xC3 #xBB #x7F #x00 #xBB
    #xB3 #x73 #x00 #xAF #xA7 #x63 #x00 #x9B #x93 #x47 #x00 #x87 #x7B
    #x33 #x00 #x6F #x67 #x1F #x00 #x5B #x53 #x0F #x00 #x47 #x43 #x00
    #x00 #x37 #x33 #x00 #x00 #xFF #xF7 #xF7 #x00 #xEF #xDF #xDF #x00
    #xDF #xC7 #xC7 #x00 #xCF #xB3 #xB3 #x00 #xBF #x9F #x9F #x00 #xB3
    #x8B #x8B #x00 #xA3 #x7B #x7B #x00 #x93 #x6B #x6B #x00 #x83 #x57
    #x57 #x00 #x73 #x4B #x4B #x00 #x67 #x3B #x3B #x00 #x57 #x2F #x2F
    #x00 #x47 #x27 #x27 #x00 #x37 #x1B #x1B #x00 #x27 #x13 #x13 #x00
    #x1B #x0B #x0B #x00 #xF7 #xB3 #x37 #x00 #xE7 #x93 #x07 #x00 #xFB
    #x53 #x0B #x00 #xFB #x00 #x00 #x00 #xCB #x00 #x00 #x00 #x9F #x00
    #x00 #x00 #x6F #x00 #x00 #x00 #x43 #x00 #x00 #x00 #xBF #xBB #xFB
    #x00 #x8F #x8B #xFB #x00 #x5F #x5B #xFB #x00 #x93 #xBB #xFF #x00
    #x5F #x97 #xF7 #x00 #x3B #x7B #xEF #x00 #x23 #x63 #xC3 #x00 #x13
    #x53 #xB3 #x00 #x00 #x00 #xFF #x00 #x00 #x00 #xEF #x00 #x00 #x00
    #xE3 #x00 #x00 #x00 #xD3 #x00 #x00 #x00 #xC3 #x00 #x00 #x00 #xB7
    #x00 #x00 #x00 #xA7 #x00 #x00 #x00 #x9B #x00 #x00 #x00 #x8B #x00
    #x00 #x00 #x7F #x00 #x00 #x00 #x6F #x00 #x00 #x00 #x63 #x00 #x00
    #x00 #x53 #x00 #x00 #x00 #x47 #x00 #x00 #x00 #x37 #x00 #x00 #x00
    #x2B #x00 #x00 #xFF #xFF #x00 #x00 #xE3 #xF7 #x00 #x00 #xCF #xF3
    #x00 #x00 #xB7 #xEF #x00 #x00 #xA3 #xEB #x00 #x00 #x8B #xE7 #x00
    #x00 #x77 #xDF #x00 #x00 #x63 #xDB #x00 #x00 #x4F #xD7 #x00 #x00
    #x3F #xD3 #x00 #x00 #x2F #xCF #x00 #x97 #xFF #xFF #x00 #x83 #xDF
    #xEF #x00 #x73 #xC3 #xDF #x00 #x5F #xA7 #xCF #x00 #x53 #x8B #xC3
    #x00 #x2B #x2B #x00 #x00 #x23 #x23 #x00 #x00 #x1B #x1B #x00 #x00
    #x13 #x13 #x00 #x00 #xFF #x0B #x00 #x00 #xFF #x00 #x4B #x00 #xFF
    #x00 #xA3 #x00 #xFF #x00 #xFF #x00 #x00 #xFF #x00 #x00 #x00 #x4B
    #x00 #x00 #xFF #xFF #x00 #x00 #xFF #x33 #x2F #x00 #x00 #x00 #xFF
    #x00 #x00 #x1F #x97 #x00 #xDF #x00 #xFF #x00 #x73 #x00 #x77 #x00
    #x6B #x7B #xC3 #x00 #x57 #x57 #xAB #x00 #x57 #x47 #x93 #x00 #x53
    #x37 #x7F #x00 #x4F #x27 #x67 #x00 #x47 #x1B #x4F #x00 #x3B #x13
    #x3B #x00 #x27 #x77 #x77 #x00 #x23 #x73 #x73 #x00 #x1F #x6F #x6F
    #x00 #x1B #x6B #x6B #x00 #x1B #x67 #x67 #x00 #x1B #x6B #x6B #x00
    #x1F #x6F #x6F #x00 #x23 #x73 #x73 #x00 #x27 #x77 #x77 #x00 #xFF
    #xFF #xEF #x00 #xF7 #xF7 #xDB #x00 #xF3 #xEF #xCB #x00 #xEF #xEB
    #xBB #x00 #xF3 #xEF #xCB #x00 #xE7 #x93 #x07 #x00 #xE7 #x97 #x0F
    #x00 #xEB #x9F #x17 #x00 #xEF #xA3 #x23 #x00 #xF3 #xAB #x2B #x00
    #xF7 #xB3 #x37 #x00 #xEF #xA7 #x27 #x00 #xEB #x9F #x1B #x00 #xE7
    #x97 #x0F #x00 #x0B #xCB #xFB #x00 #x0B #xA3 #xFB #x00 #x0B #x73
    #xFB #x00 #x0B #x4B #xFB #x00 #x0B #x23 #xFB #x00 #x0B #x73 #xFB
    #x00 #x00 #x13 #x93 #x00 #x00 #x0B #xD3 #x00 #x00 #x00 #x00 #x00
    #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00
    #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00 #x00
    #x00 #x00 #x00 #x00 #x00 #x00 #xFF #xFF #xFF #x00)
  "The pallete data for bitmaps (Extraxtcted from the .exe, and not
  the data file in any way...)")
