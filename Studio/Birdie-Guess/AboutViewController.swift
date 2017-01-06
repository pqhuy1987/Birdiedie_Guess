//
//  AboutViewController.swift
//  Birdie-Guess
//
//  Created by doug harper on 11/8/14.
//  Copyright (c) 2014 Doug Harper. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!

    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let htmlFile = Bundle.main.path(forResource: "BirdieGuess", ofType: "html") {
            let htmlData = try? Data(contentsOf: URL(fileURLWithPath: htmlFile))
            let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
            
            webView.load(htmlData!, mimeType: "text/html", textEncodingName: "UTF-8", baseURL: baseURL)
        }
    }

}
