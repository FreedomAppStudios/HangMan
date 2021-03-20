//
//  ViewController.swift
//  Hang Man
//
//  Created by Other user on 3/17/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var player1Name: UITextField!
    @IBOutlet weak var player2Name: UITextField!
    @IBOutlet weak var btnDatat: UIButton!
    @IBAction func startPressed(_ sender: Any) {
        if let p1spot = player1Name.text as String?, let p2spot = player2Name.text as String? {
            p1Name = p1spot
            p2Name = p2spot
        }
        performSegue(withIdentifier: "goToWord", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnDatat.layer.cornerRadius = 15
        
    }


}

