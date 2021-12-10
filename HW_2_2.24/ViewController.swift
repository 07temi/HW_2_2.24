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
        
        redSliderValueLabel.text = String(redSlider.value)
        greenSliderValueLabel.text = String(greenSlider.value)
        blueSliderValueLabel.text = String(blueSlider.value)
        
        view.backgroundColor = .black
        mainView.layer.cornerRadius = 10
        colorView.layer.cornerRadius = 10
        
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        blueSlider.tintColor = .blue
        
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: 1.0)
//        colorView.backgroundColor = setColorForView(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value)
    }
    
    private func getRoundValueForLabel(for value: Float) -> String {
        let roundedValue = round(value * 100) / 100
        let result = String(roundedValue)
        return result
    }
    
    private func setColorForView(red: Float, green: Float, blue: Float){
        let red = CGFloat(red)
        let green = CGFloat(green)
        let blue = CGFloat(blue)
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    @IBAction func redSliderOnChange() {
        redSliderValueLabel.text = getRoundValueForLabel(for: redSlider.value)
        setColorForView(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value)
    }
    @IBAction func greenSliderOnChange() {
        greenSliderValueLabel.text = getRoundValueForLabel(for: greenSlider.value)
        setColorForView(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value)
    }
    @IBAction func blueSliderOnChange() {
        blueSliderValueLabel.text = getRoundValueForLabel(for: blueSlider.value)
        setColorForView(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value)
    }
    
    

}

