//
//  QuestionViewController.swift
//  IQuiz
//
//  Created by Hector on 07/06/23.
//

import UIKit

class QuestionViewController: UIViewController {

    var score = 0
    var questionNumber = 0
    
    @IBOutlet weak var questionTitleLabel: UILabel!
    @IBOutlet var buttonAnswerArray: [UIButton]!
    
    @IBAction func pressedButtonAnswer(_ sender: UIButton) {
        let userRightAnswer = questions[questionNumber].correctAnswer == sender.tag
        
        if(userRightAnswer){
            score += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
        } else{
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
        }
        
        if questionNumber < questions.count - 1{
            questionNumber += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configQuestion), userInfo: nil, repeats: false)
        } else {
            goToResultLayout()
        }
    
    }
    
    func goToResultLayout(){
        performSegue(withIdentifier: "goToResultLayout", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configLayout()
        configQuestion()
    }
    
    func configLayout(){
        navigationItem.hidesBackButton = true
        questionTitleLabel.numberOfLines = 0
        questionTitleLabel.textAlignment = .center
        for botao in buttonAnswerArray{
            botao.layer.cornerRadius = 12.0
        }
    }
    
    @objc func configQuestion(){	
        questionTitleLabel.text = questions[questionNumber].title
        for button in buttonAnswerArray {
            let buttonTitle = questions[questionNumber].answers[button.tag]
            button.setTitle(buttonTitle, for: .normal)
            button.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255	, alpha: 1.0)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else {return}
        resultVC.score = score
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
