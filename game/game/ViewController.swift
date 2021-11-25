//
//  ViewController.swift
//  game
//
//  Created by Людмилко on 25.11.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func showAlert() {
        
        let alert = UIAlertController(title: "Hello, world!", message: "It's my first app", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
      present(alert, animated: true, completion: nil)
    }
    
}

