//
//  ProgViewController.swift
//  DialU°[PU]"rowser
//
//  Created by Takahito Murakami on 2016/08/31.
//  Copyright © 2016年 Takahito Murakami. All rights reserved.
//

import UIKit

class ProgViewController: UIViewController {
    
    
    var timer:NSTimer = NSTimer()
    var Ptimer:NSTimer = NSTimer()
    var time:Float = 0.0
    
    @IBOutlet weak var PProgressView: UIProgressView! //プログレスビュー
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //プログレスバー
        Ptimer = NSTimer.scheduledTimerWithTimeInterval(0.3, target: self, selector:#selector(ProgViewController.addTime as (ProgViewController) -> () -> ()), userInfo: nil,repeats: true)
        
        //遷移
        timer = NSTimer.scheduledTimerWithTimeInterval(27.0, target: self, selector: #selector(ProgViewController.changeView as (ProgViewController) -> () -> ()), userInfo: nil, repeats: false)
        
        //みため変更
        PProgressView.transform = CGAffineTransformMakeScale(1.0, 10.0)
        PProgressView.progress = 0.1

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func changeView() {
        self.performSegueWithIdentifier("toWeb", sender: nil)
        //PProgressView.setProgress(PProgressView.progress + 1.0, animated: true)
    }
    
    
    func addTime(){
        self.time += 0.3
        self.updateProgress()
    }
    
    //プログレスバー更新
    func updateProgress(){
        PProgressView.setProgress(time/25, animated: false)
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
