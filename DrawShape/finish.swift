//
//  finish.swift
//  DrawShape
//
//  Created by Forrest Hilton on 7/8/19.
//  Copyright © 2019 Forrest Hilton. All rights reserved.
//

import Foundation
import AppKit

//copyd from stack over flow

extension NSImage {
    var pngData: Data? {
        guard let tiffRepresentation = tiffRepresentation, let bitmapImage = NSBitmapImageRep(data: tiffRepresentation) else { return nil }
        return bitmapImage.representation(using: .png, properties: [:])
    }
    func pngWrite(to url: URL, options: Data.WritingOptions = .atomic) -> Bool {
        do {
            try pngData?.write(to: url, options: options)
            return true
        } catch {
            print(error)
            return false
        }
    }
}

// saves the image to a file

func finish(image:NSImage) {
    //gets a path from user, I gess
    //I'm reusing code for this bit
    print("path to file save?")
    let path = readLine()!
    let url = URL(fileURLWithPath: path)
    print(image.pngWrite(to: url) ? "sucseded" : "failed" )
}

//I think this is the fastest to wright implemination but is it the wright way to do this?
