//
//  WordViewController.swift
//  Hang Man
//
//  Created by Other user on 3/17/21.
//

import UIKit

class WordViewController: UIViewController {

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
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
