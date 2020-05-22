//
//  ViewController.swift
//  ChangeColorApp
//
//  Created by Pavel Parshin on 22.05.2020.
//  Copyright © 2020 Pavel Parshin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorViewForm: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redValueSlider: UISlider!
    @IBOutlet var greenValueSlider: UISlider!
    @IBOutlet var blueValueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorViewForm.layer.cornerRadius = 10
        
        redValueSlider.minimumTrackTintColor = .red
        greenValueSlider.minimumTrackTintColor = .green
        blueValueSlider.minimumTrackTintColor = .blue
        
    }
    
    @IBAction func setRedValueSlider() {
    }
    
    @IBAction func setGreenValueSlider() {
    }
    
    @IBAction func setBlueValueSlider() {
    }
    
}

