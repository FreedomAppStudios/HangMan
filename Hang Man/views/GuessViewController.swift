//
//  GuessViewController.swift
//  Hang Man
//
//  Created by Other user on 3/17/21.
//

import UIKit

class GuessViewController: UIViewController {
    @IBOutlet weak var wrongLetters: UILabel!
    @IBOutlet weak var wordSpace: UILabel!
    @IBOutlet weak var bar: UIProgressView!
    @IBOutlet weak var letterField: UITextField!
    @IBOutlet weak var guessData: UIButton!
    @IBAction func guessPressed(_ sender: Any) {
        if let guess = letterField.text {
            let lowGuess = guess.lowercased()
            let lowWord = word.lowercased()
            
            if lowWord.contains(lowGuess) == true {
                
                let y = lowWord.count
                var x = 0
                while x < y {
                    guessTank.append(" _")
                    x+=1
                }
                x = 0
                allGuesses.append(lowGuess)
                for gus in allGuesses {
                    let ranger: Range<String.Index> = lowWord.range(of: gus)!
                    let indexi: Int = lowWord.distance(from: lowWord.startIndex, to: ranger.lowerBound)
                    guessTank[indexi] = gus
                    
                    
                }
                var totMSG = ""
                while x < y {
                    totMSG.append(guessTank[x])
                    totMSG.append(" ")
                    x+=1
                }
                wordSpace.text = totMSG
                if totMSG.contains("_") == false {
                    win = true
                    showWinner()
                    
                }
            }
            else {
                let leng = bar.progress
                let newLeng = leng - 0.2
                bar.progress = newLeng
                badGuess.append(lowGuess)
                var wrongList = ""
                for item in badGuess {
                    wrongList.append(item+", ")
                }
                wrongLetters.textColor = .red
                wrongLetters.text = wrongList
                
                if bar.progress == 0.2 {
                    bar.progressTintColor = .red
                }
                if bar.progress == 0.0 {
                    win = false
                    showWinner()
                    
                }
            }
            letterField.text = ""
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        guessData.layer.cornerRadius = 15
        
        
        let len = word.count
        var i = 0
        var title = ""
        while i < len {
            title.append(" _")
            i+=1
        }
        wordSpace.text = title
        // Do any additional setup after loading the view.
    }
    func showWinner() {
        performSegue(withIdentifier: "showWinner", sender: self)
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
