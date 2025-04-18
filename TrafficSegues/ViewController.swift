//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Dana Runge on 4/15/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField:
        UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue) {

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
    }
}

