//
//  ViewController.swift
//  Clock
//
//  Created by user231253 on 2/1/23.
//

import UIKit

class ViewController: UIViewController {
    
    //current live time label
    @IBOutlet weak var currentTimeLabel: UILabel!
    
    // remaining time label
    @IBOutlet weak var timeRemaining: UILabel!
    
 
    
    
    //variables
    var timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        getCurrentTime()
        
    }
    
    //Get live Time
    private func getCurrentTime() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(self.currentTime) , userInfo: nil, repeats: true)
    }
    
    //Format Live Time
    @objc func currentTime() {
        let formatter = DateFormatter();
        formatter.dateFormat = "E, d MMM yyyy HH:mm:ss"
        currentTimeLabel.text = formatter.string(from: Date())
        
    }
    
    //UIDatePicker
    @IBAction func timerPicker(_ sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm:ss"
        timeRemaining.text = formatter.string(from: sender.date)
            print("Timer fired!")
    
        }
    
    //@IBAction func startStopButton(_ sender: UIButton) {
    //    for timeRemaining in timerPicker-> () {
    //        timeRemaining.stop()
    //        timeRemaining.currentTime = 0
    //    }
        
    //}
    
        
    }
    


    
    
    


