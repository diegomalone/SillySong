//
//  ViewController.swift
//  Silly Song
//
//  Created by Diego Malone on 7/14/16.
//  Copyright © 2016 Diego Malone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var lyricsView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func reset(sender: AnyObject) {
        nameField.text = ""
        lyricsView.text = ""
    }

    @IBAction func displayLyrics(sender: AnyObject) {
        if let name = nameField.text where name.characters.count > 0 {
            lyricsView.text = lyricsForName(bananaFanaTemplate, fullName: name)
        }
    }
}

