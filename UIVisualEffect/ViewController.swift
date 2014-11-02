//
//  ViewController.swift
//  UIVisualEffect
//
//  Created by Jian Yao Ang on 11/2/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {


    @IBOutlet var theImageView: UIImageView!
    @IBOutlet var visualEffectButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.theImageView.image = UIImage(named: "apple")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    @IBAction func onExecuteVisualEffectButtonPressed(sender: AnyObject)
    {
        //3 types of blur effect .ExtraLight, .Light, .Dark
        var blurEffect = UIBlurEffect(style: .Light)
        var blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.theImageView.bounds
        self.theImageView.addSubview(blurEffectView)
        
        var vibrancyEffect = UIVibrancyEffect(forBlurEffect: blurEffect)
        var vibrancyEffectView = UIVisualEffectView(effect: vibrancyEffect)
        vibrancyEffectView.frame = self.theImageView.bounds
        self.theImageView.addSubview(vibrancyEffectView)
        
        blurEffectView.contentView.addSubview(vibrancyEffectView)

    }

}

