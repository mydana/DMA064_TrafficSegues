//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Dana Runge on 4/15/25.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var segueSwitch: UISwitch!
    
    @MainActor override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        print(identifier)
        return segueSwitch.isOn
    }

    @IBAction func yellowButtonTapped(_ sender: Any) {
        print("yellow tapped")
       // if segueSwitch.isOn {
            performSegue(withIdentifier: "yellow", sender: nil)
       // }
    }

    @IBAction func greenButtonTapped(_ sender: Any) {
        print("green tapped")
        if segueSwitch.isOn {
            performSegue(withIdentifier: "green", sender: nil)
        }
    }
}

