//
//  QuizViewController.swift
//  Hello
//
//  Created by gadgelogger on 2024/07/18.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBAction func pressButton(_ sender: Any) {
        self.label.text = "ボタンを押しました！"
    }
    var date = Date()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
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
