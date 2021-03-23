//
//  WordViewController.swift
//  Hang Man
//
//  Created by Other user on 3/17/21.
//

import UIKit

class WordViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var playData: UIButton!
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var wordField: UITextField!
    @IBAction func playPressed(_ sender: Any) {
        if let wordFill = wordField.text {
            word = wordFill
        }
        performSegue(withIdentifier: "goToGuess", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        if round%2 == 0 {
            titleText.text = p2Name + " enter a word"
        } else {
            titleText.text = p1Name + " enter a word"
        }
        playData.layer.cornerRadius = 15
        //Looks for single or multiple taps.
             let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
            //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
            //tap.cancelsTouchesInView = false
            view.addGestureRecognizer(tap)
        self.wordField.delegate = self
    }
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        //textField code

        wordField.resignFirstResponder()  //if desired
        performAction()
        return true
    }

    func performAction() {
        if let wordFill = wordField.text {
            word = wordFill
        }
        performSegue(withIdentifier: "goToGuess", sender: self)
    }
}
