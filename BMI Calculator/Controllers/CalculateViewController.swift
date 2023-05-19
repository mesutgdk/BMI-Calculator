//
//  ViewController.swift
//  BMI Calculator
//
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain ()
    

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                // Do any additional setup after loading the view.
    }
   
    @IBAction func heightSliderChanged(_ sender: UISlider) {
     
        heightLabel.text  = "\(String(format: "%.2f", sender.value))m"
    }
    
   
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        weightLabel.text = "\(String(format: "%.0f", sender.value))kg"
    }
    
  
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
       
        calculatorBrain.calculateBMI (height: height, weight: weight)
      
    
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.bmiValue = calculatorBrain.getBMIValue ()
            destinationVC.bmiAdvice = calculatorBrain.getAdvice ()
            destinationVC.bmiColor = calculatorBrain.getColor ()
        }
        }
       
        
    }
