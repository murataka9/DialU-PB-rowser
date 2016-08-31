//
//  ViewController.swift
//  DialU°[PU]"rowser
//
//  Created by Takahito Murakami on 2016/08/30.
//  Copyright © 2016年 Takahito Murakami. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    
//    var timer:NSTimer = NSTimer()
    var AudioPlayer = AVAudioPlayer ()
    
    
    
    @IBAction func back(segue:UIStoryboardSegue){//戻るボタン用
        print("back")
    
    
    }
    
    @IBAction func conection (sender: UIButton){
        print("push")
        
        
        let audioPath = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("DUPS", ofType: "mp3")!)// import SoundFiles
        
        // swift2系からtryでエラー処理するらしいから、do〜try〜catchで対応
        do {
            // Create AVAudioPlayer。例外発生して作成できなかったらエラーがthrow
            AudioPlayer = try AVAudioPlayer(contentsOfURL: audioPath)
            
            // イベントを通知したいUIViewControllerをdelegateに登録
            // delegateの登録するならAVAudioPlayerDelegateプロトコルの継承が必要
            AudioPlayer.delegate = self
            
            // これで再生
            AudioPlayer.play()
        }
            // playerを作成した時にエラーがthrowされたらこっち来る
        catch {
            print("AVAudioPlayer error")
        }
        
        //func changeView() { self.performSegueWithIdentifier("toWeb",sender: nil)}
        //timer = NSTimer.scheduledTimerWithTimeInterval(30.0, target: self, selector: changeView, userInfo: nil, repeats: false)
        
        

        
       
   
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

