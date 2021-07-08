//
//  CalcualateViewController.swift
//  Pizza
//
//  Created by Sankalp Pandey on 03/07/21.
//

import Foundation
import UIKit
import Lottie
class CalculateViewController: PizzaViewController{
    var finalResult = 0
    override func viewDidLoad() {
        LottieANimation()
        finalPizzaNumber.text = String("THE NUMBER OF PIZZA REQUIRED IS \(finalResult) PIZZA.")
        
    }
    
    
    @IBOutlet weak var animationview: AnimationView!
    
    @IBOutlet weak var finalPizzaNumber: UILabel!
    
    func LottieANimation()
    {
        let animationView = Lottie.AnimationView(name:"pizza")
        animationView.contentMode = .scaleAspectFit
        self.animationView.addSubview(animationView)
        animationView.play()
        animationView.loopMode = .loop
    }
    
}
