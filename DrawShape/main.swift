//
//  main.swift
//  DrawShape
//
//  Created by Forrest Hilton on 7/8/19.
//  Copyright © 2019 Forrest Hilton. All rights reserved.
//

import Foundation
import AppKit


//place holder for breaf testing
let image = NSImage(size: NSSize(width: 200, height: 200) , flipped: false) { (rec) -> Bool in
    
    rec.fill()
    
    return true
}

finish(image:image)
