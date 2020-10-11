//
//  PlusViewController.swift
//  AppDojoSalonTask7
//
//  Created by 守屋譲司 on 2020/10/11.
//

import UIKit

class PlusViewController: UIViewController {
    
    @IBOutlet private weak var plusTextField1: UITextField!
    @IBOutlet private weak var plusTextField2: UITextField!
    
    @IBOutlet private weak var plusResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        plusTextField1.keyboardType = .numberPad
        plusTextField2.keyboardType = .numberPad
    }
    
    @IBAction func plusButtonPressed(_ sender: UIButton) {
        
        guard let num1 = Int(plusTextField1.text ?? "") else {
            plusResultLabel.text = "数字を入力してください"
            return
        }
        guard let num2 = Int(plusTextField2.text ?? "") else {
            plusResultLabel.text = "数字を入力してください"
            return
        }
        
        plusResultLabel.text = String(num1 + num2)
        
        view.endEditing(true)
    }
    
}
