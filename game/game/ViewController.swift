//
//  ViewController.swift
//  game
//
//  Created by Людмилко on 25.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 0
    var targetValue: Int = 0
    
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        startNewRound()
        
    }
    
    
    
    @IBAction func showAlert() {
        
        let message = "The value of the slider now:\(currentValue)" + "\nThe target value is:\(targetValue)"
        
        let alert = UIAlertController(title: "Hello, world!", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
        
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        print("The value of the slider now:\(slider.value)")
        let roundedValue = slider.value.rounded()
        print("The rounded value of the slider now:\(roundedValue)")
        currentValue = Int(roundedValue)
        
    }
    
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabel()
        
    }
    
    func updateLabel() {
        targetLabel.text = String(targetValue)
    }
}

