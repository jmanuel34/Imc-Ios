//
//  ViewController.swift
//  Imc-Ios2
//
//  Created by Tardes on 2/3/26.
//

import UIKit

class MainViewController: UIViewController {
    
    
    @IBOutlet weak var weigthLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heighStepper: UIStepper!
  
 
    var weight: Float=0.0
    var height: Float=0.0

    @IBOutlet weak var resultado: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        weigthLabel.text = "45"
    }
    
    @IBAction func OnWeighChange(_ sender: Any) {
        weight = weightSlider.value
        weigthLabel.text="\(Int(weight)) kg"
    }
    @IBAction func OnHeighChange(_ sender: Any) {
        height = Float(heighStepper.value)
        heightLabel.text="\(Int(height)) cm"
    }
 
    @IBAction func calculate(_ sender: Any) {
        // print ("He pulsado el boton")
        let heightInMeters = height / 100
        let imc = weight / pow(heightInMeters, 2)
        print ("El IMC es : \(imc)")
        resultado.text = "IMC: \(imc)"
    }
    }
    
    
  

