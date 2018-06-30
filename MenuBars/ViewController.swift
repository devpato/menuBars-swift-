//
//  ViewController.swift
//  MenuBars
//
//  Created by Patricio Vargas on 6/29/18.
//  Copyright © 2018 Patricio Vargas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var myTime : Int = 210
    @IBOutlet weak var time: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onPlay() {
        timer.fire()
    }
    @IBAction func onPause() {
        timer.invalidate();
    }
    
    @objc func processTimer(){
        if myTime > 0 {
            myTime-=1;
            time.text =  String(myTime)
        } else {
            timer.invalidate()
        }
        
    }
    
    @IBAction func addTen() {
         myTime += 10;
    }
    
    @IBAction func substractTen() {
         myTime -= 10;
    }
    
    @IBAction func reset() {
        myTime = 210
    }
    
    
    
    
}

