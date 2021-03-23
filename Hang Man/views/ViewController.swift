//
//  ViewController.swift
//  Hang Man
//
//  Created by Other user on 3/17/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
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
        self.player2Name.delegate = self
        btnDatat.layer.cornerRadius = 15
        //Looks for single or multiple taps.
             let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

            //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
            //tap.cancelsTouchesInView = false

            view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        //textField code

        player2Name.resignFirstResponder()  //if desired
        performAction()
        return true
    }

    func performAction() {
        if let p1spot = player1Name.text as String?, let p2spot = player2Name.text as String? {
            p1Name = p1spot
            p2Name = p2spot
        }
        performSegue(withIdentifier: "goToWord", sender: self)
    }
}

