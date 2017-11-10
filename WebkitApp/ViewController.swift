//
//  ViewController.swift
//  WebkitApp
//
//  Created by Gaurav on 10/11/17.
//  Copyright © 2017 Gaurav. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate {

    @IBOutlet weak var webkitObj: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let myBlog = "https://google.com/"
        let myurl = URL(string: myBlog)
        let urlrequest = URLRequest(url: myurl!)
        
        // init and load request in webview.
        webkitObj.navigationDelegate = self
        webkitObj.load(urlrequest)
      
    }
    
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        print(error.localizedDescription)
    }
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("Strat to load")
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("finish to load")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

