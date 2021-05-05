//
//  SelectLevelViewController.swift
//  FruitsQuiz
//
//  Created by SHINGO YANAGIDA on 2021/02/17.
//

import UIKit

class SelectLevelViewController: UIViewController {
    @IBOutlet weak var level1Button: UIButton!
    @IBOutlet weak var level2Button: UIButton!
    @IBOutlet weak var level3Button: UIButton!
    
    var selectTab = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        level1Button.layer.borderWidth = 2
        level1Button.layer.borderColor = UIColor.black.cgColor
        
        level2Button.layer.borderWidth = 2
        level2Button.layer.borderColor = UIColor.black.cgColor
        
        level3Button.layer.borderWidth = 2
        level3Button.layer.borderColor = UIColor.black.cgColor
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let quizVC = segue.destination as! QuizViewController
        quizVC.selectLevel = selectTab
    }
    
    @IBAction func levelButtonAction(sender: UIButton){
        print(sender.tag)
        selectTab = sender.tag
        performSegue(withIdentifier: "toQuizVC", sender: nil)
    }

}
