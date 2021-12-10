//
//  ViewController.swift
//  HW_2_2.24
//
//  Created by Артем Черненко on 10.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redSliderValueLabel: UILabel!
    @IBOutlet weak var greenSliderValueLabel: UILabel!
    @IBOutlet weak var blueSliderValueLabel: UILabel!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.minimumValue = 0.1
        redSlider.maximumValue = 1.0
        
        greenSlider.minimumValue = 0.1
        greenSlider.maximumValue = 1.0
        
        blueSlider.minimumValue = 0.1
        blueSlider.maximumValue = 1.0
        
        redLabel.text = "Red:"
//        redLabel.adjustsFontSizeToFitWidth = true
        greenLabel.text = "Green:"
//        greenLabel.adjustsFontSizeToFitWidth = true
        blueLabel.text = "Blue:"
//        blueLabel.adjustsFontSizeToFitWidth = true
        
        view.backgroundColor = .black
        mainView.layer.cornerRadius = 10
        colorView.layer.cornerRadius = 10
        
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        blueSlider.tintColor = .blue
        // Do any additional setup after loading the view.
    }
    
    @IBAction func redSliderOnChange() {
        redSliderValueLabel.text = String(redSlider.value)
    }
    @IBAction func greenSliderOnChange() {
        greenSliderValueLabel.text = String(greenSlider.value)
    }
    @IBAction func blueSliderOnChange() {
        blueSliderValueLabel.text = String(blueSlider.value)
    }
    

}

