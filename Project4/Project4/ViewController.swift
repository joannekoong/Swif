//
//  ViewController.swift
//  Project4
//
//  Created by Joanne on 11/24/15.
//  Copyright © 2015 joanne. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL(string: "https://www.reddit.com")!
        webView.loadRequest(NSURLRequest(URL: url))
        webView.allowsBackForwardNavigationGestures = true
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .Plain, target: self, action: "openTapped")
        
        
    }
    
    func openTapped() {
        let ac = UIAlertController(title: "Open page...", message: nil, preferredStyle: .ActionSheet)
        ac.addAction(UIAlertAction(title: "apple.com", style: .Default, handler: openPage))
        ac.addAction(UIAlertAction(title: "reddit.com", style: .Default, handler: openPage))
        ac.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))
        presentViewController(ac, animated: true, completion: nil)
        
    }
    
    func openPage(action: UIAlertAction) {
        let url = NSURL(string: "https://" + action.title!)!
        webView.loadRequest(NSURLRequest(URL: url))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

