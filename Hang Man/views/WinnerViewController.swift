//
//  WinnerViewController.swift
//  Hang Man
//
//  Created by Other user on 3/20/21.
//

import UIKit

class WinnerViewController: UIViewController {
    
    
    @IBOutlet weak var butData: UIButton!
    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var wordLabel: UILabel!
    @IBAction func playButton(_ sender: Any) {
        round = round + 1
        guessed = ""
        allGuesses.removeAll()
        guessTank.removeAll()
        badGuess.removeAll()
        performSegue(withIdentifier: "playAgain", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        butData.layer.cornerRadius = 15
        if win == true {
            view.backgroundColor = .systemTeal
            butData.setTitleColor(UIColor.systemTeal, for: UIControl.State.normal)
            if round%2 == 0 {
                msgLabel.text = "Congrats " + p1Name
            } else {
                msgLabel.text = "Congrats " + p2Name
            }
            wordLabel.text = "The word was: " + word
        }
        else {
            view.backgroundColor = .red
            butData.setTitleColor(UIColor.red, for: UIControl.State.normal)
            if round%2 == 0 {
                msgLabel.text = "You lost " + p1Name
            } else {
                msgLabel.text = "You lost  " + p2Name
            }
            wordLabel.text = "The word was: " + word
        }
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
