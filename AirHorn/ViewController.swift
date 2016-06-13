//
//  ViewController.swift
//  AirHorn
//
//  Created by fnord on 6/11/16.
//  Copyright © 2016 fnord. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var airHorn : AVAudioPlayer!
    let path = NSBundle.mainBundle().pathForResource("AIRHORN.mp3", ofType:nil)!
    var url : NSURL!

    override func viewDidLoad() {
        super.viewDidLoad()
        url = NSURL(fileURLWithPath: path)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ButtonPushed(sender: AnyObject) {
        do {
            let sound = try AVAudioPlayer(contentsOfURL: url)
            airHorn = sound
            sound.play()
        } catch {
            // couldn't load file :(
        }
    }

}

