//
//  WBControllerViewController.swift
//  DialU°[PU]"rowser
//
//  Created by Takahito Murakami on 2016/08/31.
//  Copyright © 2016年 Takahito Murakami. All rights reserved.
//

import UIKit

class WBControllerViewController: UIViewController, UIWebViewDelegate {
    
    
    

    
    @IBOutlet weak var webView: UIWebView!
    
    
    
    let initialURL = NSURL(string: "https://google.co.jp")
    
//    weak var timer: NSTimer?
    //var timer:NSTimer = NSTimer()
    
    
    
    

    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
//        timer = NSTimer.scheduledTimerWithTimeInterval(5.0, target: self, selector: #selector(UIMenuController.update), userInfo: nil, repeats: false)
        
        
//        timer?.invalidate()
    
//        func update(timer: NSTimer) {
        
            
            self.webView.delegate = self
            
            let request = NSURLRequest(URL: initialURL!)
            self.webView.loadRequest(request)
            self.webView.scrollView.bounces = false
            
//        }
        

        /*func update(timer: NSTimer) {
            
            self.webView.delegate = self
            
            let request = NSURLRequest(URL: initialURL!)
            self.webView.loadRequest(request)
            
        }*/
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
