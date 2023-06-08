//
//  ResultViewController.swift
//  IQuiz
//
//  Created by Hector on 07/06/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    var score: Int?	

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var percentageLabel: UILabel!
    
    @IBOutlet weak var restartQuizButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configLayout()
        configResult()
    }
    
    func configLayout(){
        navigationItem.hidesBackButton = true
        restartQuizButton.layer.cornerRadius = 2.0
    }
    
    func configResult(){
        guard let score = score else {return}
        resultLabel.text = "Você acertou \(score) de \(questions.count)"
        
        let percentage = (score * 100) / questions.count
        percentageLabel.text = "Percentual final: \(percentage)%"
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
