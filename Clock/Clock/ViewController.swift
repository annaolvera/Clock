//
//  ViewController.swift
//  Clock
//
//  Created by user231253 on 2/1/23.
//

import UIKit

class ViewController: UIViewController {
    
    //current time
    @IBOutlet weak var currentTimeLabel: UILabel!
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Do any additional setuo after loading the view.
        
        getCurrentTime()
    }
    
    //Format Time
    private func getCurrentTime() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(self.currentTime) , userInfo: nil, repeats: true)
    }
    
    @objc func currentTime() {
        let formatter = DateFormatter();
        formatter.dateFormat = "E, d MMM yyyy HH:mm:ss"
        currentTimeLabel.text = formatter.string(from: Date())
        
    }
}

