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
        
        //View default Slider's values
        redValueLabel.text = setValueLabel(for: redValueSlider.value)
        greenValueLabel.text = setValueLabel(for: greenValueSlider.value)
        blueValueLabel.text = setValueLabel(for: blueValueSlider.value)
        
        //Slider's minimum color
        redValueSlider.minimumTrackTintColor = .red
        greenValueSlider.minimumTrackTintColor = .green
        blueValueSlider.minimumTrackTintColor = .blue
        
        colorViewForm.backgroundColor = setColorWithRGB()
    }
    
    
    @IBAction func setRedValueSlider() {
        redValueLabel.text = setValueLabel(for: redValueSlider.value)
        colorViewForm.backgroundColor = setColorWithRGB()
    }
    
    @IBAction func setGreenValueSlider() {
        greenValueLabel.text = setValueLabel(for: greenValueSlider.value)
        colorViewForm.backgroundColor = setColorWithRGB()
    }
    
    @IBAction func setBlueValueSlider() {
        blueValueLabel.text = setValueLabel(for: blueValueSlider.value)
        colorViewForm.backgroundColor = setColorWithRGB()
    }
    
    
    //Determine current settings RGB sliders and return UIColor
    private func setColorWithRGB() -> UIColor {
        return UIColor(red: CGFloat(redValueSlider.value),
        green: CGFloat(greenValueSlider.value),
        blue: CGFloat(blueValueSlider.value),
        alpha: 1)
    }
    
    //Reduce value of slider
    private func setValueLabel(for value: Float) -> String {
        return String(format: "%.2f", value)
    }
    
}

