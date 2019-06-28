//
//  ViewController.swift
//  Guess the Flag
//
//  Created by Veerababu Mulugu on 6/28/19.
//  Copyright © 2019 Veerababu Mulugu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var countries = [String]()
    var score = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //        countries.append("estonia")
        //        countries.append("france")
        //        countries.append("germany")
        //        countries.append("ireland")
        //        countries.append("italy")
        //        countries.append("monaco")
        //        countries.append("nigeria")
        //        countries.append("poland")
        //        countries.append("russia")
        //        countries.append("spain")
        //        countries.append("uk")
        //        countries.append("us")
        //
        
        //Or else wecan create here like this....
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        //        print(countries)
        askQuestion()
    }
    
    func askQuestion()  {
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
    }
}

