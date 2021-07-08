//
//  ViewController.swift
//  Pizza
//
//  Created by Sankalp Pandey on 03/07/21.
//

import UIKit
import Lottie
class PizzaViewController: UIViewController {
    var numberOfPEOPLE = 0
    var sliceNumber = 0
    var inchesNumber = 0
    var numberOfPizza = 0
    
    

    
    @IBOutlet weak var animationView: AnimationView!
    @IBOutlet weak var inchLabel: UILabel!
    
    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var sliceLabel: UILabel!
    
    
    @IBOutlet weak var INCHESNumberLabel: UILabel!
    
    @IBOutlet weak var peopleNumberLabel: UILabel!
    
    
    @IBOutlet weak var sliceNumberLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lottieAnimation()
        
        
    }
    
    func lottieAnimation(){
        let animationView = Lottie.AnimationView(name:"pizza")
        
        
        animationView.contentMode  = .scaleAspectFit
        self.view.addSubview(animationView)
        animationView.play()
        animationView.loopMode = .loop
        
    }
    

    @IBAction func inchesStepper(_ sender: UIStepper) {
        INCHESNumberLabel.text = String(format: "%.0f", sender.value)
        inchesNumber = Int(sender.value)
        print(inchesNumber)
    }
  
    
    @IBAction func peopleStepper(_ sender: UIStepper) {
        peopleNumberLabel.text = String(format: "%.0f", sender.value)
        numberOfPEOPLE = Int(sender.value)
        print(numberOfPEOPLE)
    }
    
    
    @IBAction func sliceStepper(_ sender: UIStepper) {
        sliceNumberLabel.text = String(format: "%.0f", sender.value)
        sliceNumber = Int(sender.value)
        
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let slicePerPerson = inchesNumber - 4
         numberOfPizza = 3*numberOfPEOPLE*sliceNumber / 8
        performSegue(withIdentifier: "goToCalculate", sender: self)
        
            
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToCalculate"
        {
            let destionVC = segue.destination as! CalculateViewController
            destionVC.finalResult = numberOfPizza
        }
    }
    
    
}

