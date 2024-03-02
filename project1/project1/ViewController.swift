//
//  ViewController.swift
//  project1
//
//  Created by Omar Makran on 2/3/2024.
//

// which means “this file will reference the iOS user interface toolkit.”
import UIKit

// means I want to create a new screen of data called ViewController, based on UIViewController.
class ViewController: UIViewController {

    override func viewDidLoad() {
        var pictures = [String]()
        
        // This super call means “tell Apple’s UIViewController to run its own code before I run mine.
        super.viewDidLoad()
        
        // This is a data type that lets us work with the filesystem,
        // and in our case we'll be using it to look for files.
        let fm = FileManager.default
        
        // Bundle is a directory containing our compiled program and all our assets.
        // This line says, "tell me where I can find all those images I added to my app."
        // Exclamation mark (!) is used for force unwrapping.
        let path = Bundle.main.resourcePath!
        
        // That is set to the contents of the directory at a path.
        // The items constant will be an array of strings containing filenames.
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                // this a picture to Load!
                pictures.append(item)
            }
        }
        print(pictures)
    }


}

