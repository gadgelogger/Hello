//
//  QuizViewController.swift
//  Hello
//
//  Created by gadgelogger on 2024/07/03.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBAction func pressButton(_ sender: Any) {}
    @IBOutlet weak var nameTextField: UITextField!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let quizCocoaViewController = segue.destination as? QuizCocoaViewController{
            if let text = self.nameTextField.text{
                quizCocoaViewController.nameText = text
            }
        }
    }
}
