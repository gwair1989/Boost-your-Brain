//
//  ThirdViewController.swift
//  Boost your Brain!
//
//  Created by Aleksandr Khalupa on 09.01.2021.
//

import UIKit
import AVFoundation

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var questionLebel: UILabel!
    @IBOutlet var answerButtons: [UIButton]!
    @IBOutlet weak var scoreTrueLabel: UILabel!
    @IBOutlet weak var scoreFalseLabel: UILabel!
    
    var player: AVAudioPlayer?
    var timer = Timer()
   
    var brain = Brain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLebelsAndUI()
    }
    
    @IBAction func toSecondVC(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func pressedButtons(_ sender: UIButton) {
        
        if brain.numberOfQuestion == brain.questionsAndAnsvers.count - 1 {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
                self.isHidenButton()
                self.questionLebel.text = "Your result!"
            }
        }
        
        changeBackgraundColor(tag: sender.tag)
        brain.nextQuestion()
        isEnabledButtons()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
            self.setLebelsAndUI()
            self.includedButtons()
        }
    }
    
    func changeBackgraundColor(tag: Int){
        let isUserAnsver = brain.chackAnsver(tag: tag)
        
        if isUserAnsver == true {
            playMusic(note: "true")
            self.scoreTrueLabel.text = self.brain.countingScore(isTrue: isUserAnsver)
        } else {
            playMusic(note: "false")
        }
        
        self.scoreFalseLabel.text = brain.countinfFalse(isFalse: isUserAnsver)
        
        switch tag {
        case 0:
            if isUserAnsver {
                answerButtons[0].backgroundColor = .systemGreen
            } else {
                answerButtons[0].backgroundColor = .systemOrange
            }
        case 1:
            if isUserAnsver {
                answerButtons[1].backgroundColor = .systemGreen
            } else {
                answerButtons[1].backgroundColor = .systemOrange
            }
        case 2:
            if isUserAnsver {
                answerButtons[2].backgroundColor = .systemGreen
            } else {
                answerButtons[2].backgroundColor = .systemOrange
            }
        case 3:
            if isUserAnsver {
                answerButtons[3].backgroundColor = .systemGreen
            } else {
                answerButtons[3].backgroundColor = .systemOrange
            }
        default:
            print("error")
        }
    }
    
    func setLebelsAndUI()  {
    
        scoreTrueLabel.text = brain.starScore()
        scoreFalseLabel.text = brain.startCountingFalse()
        
        answerButtons[0].backgroundColor = .lightGray
        answerButtons[1].backgroundColor = .lightGray
        answerButtons[2].backgroundColor = .lightGray
        answerButtons[3].backgroundColor = .lightGray
        
        let getAnsver0 = brain.getAnsver0()
        let getAnsver1 = brain.getAnsver1()
        let getAnsver2 = brain.getAnsver2()
        let getAnsver3 = brain.getAnsver3()
        
        questionLebel.text = brain.getQuestion()
        
        answerButtons[0].setTitle("\(getAnsver0)", for: .normal)
        answerButtons[1].setTitle("\(getAnsver1)", for: .normal)
        answerButtons[2].setTitle("\(getAnsver2)", for: .normal)
        answerButtons[3].setTitle("\(getAnsver3)", for: .normal)
     
        answerButtons[0].titleLabel?.adjustsFontSizeToFitWidth = true
        answerButtons[1].titleLabel?.adjustsFontSizeToFitWidth = true
        answerButtons[2].titleLabel?.adjustsFontSizeToFitWidth = true
        answerButtons[3].titleLabel?.adjustsFontSizeToFitWidth = true
    }
    
    func isEnabledButtons(){
        answerButtons[0].isEnabled = false
        answerButtons[1].isEnabled = false
        answerButtons[2].isEnabled = false
        answerButtons[3].isEnabled = false
    }
    
    func includedButtons(){
        answerButtons[0].isEnabled = true
        answerButtons[1].isEnabled = true
        answerButtons[2].isEnabled = true
        answerButtons[3].isEnabled = true
    }
    
    func isHidenButton(){
        answerButtons[0].isHidden = true
        answerButtons[1].isHidden = true
        answerButtons[2].isHidden = true
        answerButtons[3].isHidden = true
    }
    
    
    func playMusic(note:String){
        if let fileOfGuard = Bundle.main.url(forResource: note, withExtension: "mp3") {
            player = try! AVAudioPlayer(contentsOf: fileOfGuard)
            player?.play()
        }
}
}
