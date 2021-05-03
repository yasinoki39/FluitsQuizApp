//
//  ViewController.swift
//  FruitsQuiz
//
//  Created by SHINGO YANAGIDA on 2021/02/16.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    
    @IBAction func privacypolicyButton(_ sender: Any) {
        if let url = URL(string: "https://yasinoki39.github.io/FruitsQuiz_PrivacyPolicy/"){
            UIApplication.shared.open(url)  //ボタンが押されたらURLへ飛ぶ
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.borderWidth = 2
        startButton.layer.borderColor = UIColor.black.cgColor
        // Do any additional setup after loading the view.
    }
}
