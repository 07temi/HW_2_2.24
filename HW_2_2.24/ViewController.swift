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
        
        view.backgroundColor = .black
        mainView.backgroundColor = .systemGray2
        
        redSlider.minimumValue = 0.1
        redSlider.maximumValue = 1.0
        redSlider.value = 0.75
        redSlider.tintColor = .red
        
        greenSlider.minimumValue = 0.1
        greenSlider.maximumValue = 1.0
        greenSlider.value = 0.5
        greenSlider.tintColor = .green
        
        blueSlider.minimumValue = 0.1
        blueSlider.maximumValue = 1.0
        blueSlider.value = 0.25
        blueSlider.tintColor = .blue
        
        redLabel.text = "Red:"
        greenLabel.text = "Green:"
        blueLabel.text = "Blue:"
        
        redSliderValueLabel.text = String(redSlider.value)
        greenSliderValueLabel.text = String(greenSlider.value)
        blueSliderValueLabel.text = String(blueSlider.value)
        
        mainView.layer.cornerRadius = 10
        colorView.layer.cornerRadius = 10
        
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: 1.0)
    }
    
    private func getRoundValueForLabel(from value: Float) -> String {
        let roundedValue = round(value * 100) / 100
        let result = String(roundedValue)
        return result
    }
    //чтобы не переводить в CGFloat в каждом экшене
    //мне кажется так короче и эффективнее
    private func setColorForView(red: Float, green: Float, blue: Float){
        let red = CGFloat(red)
        let green = CGFloat(green)
        let blue = CGFloat(blue)
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    @IBAction func redSliderOnChange() {
        redSliderValueLabel.text = getRoundValueForLabel(from: redSlider.value)
        setColorForView(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value)
    }
    @IBAction func greenSliderOnChange() {
        greenSliderValueLabel.text = getRoundValueForLabel(from: greenSlider.value)
        setColorForView(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value)
    }
    @IBAction func blueSliderOnChange() {
        blueSliderValueLabel.text = getRoundValueForLabel(from: blueSlider.value)
        setColorForView(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value)
    }
    
    

}

