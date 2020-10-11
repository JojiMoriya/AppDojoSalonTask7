//
//  MinusViewController.swift
//  AppDojoSalonTask7
//
//  Created by 守屋譲司 on 2020/10/11.
//

import UIKit

class MinusViewController: UIViewController {

    @IBOutlet private weak var minusTextField1: UITextField!
    @IBOutlet private weak var minusTextField2: UITextField!
    
    @IBOutlet private weak var minusResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        minusTextField1.keyboardType = .numberPad
        minusTextField2.keyboardType = .numberPad
    }
    
    @IBAction func minusButtonPressed(_ sender: UIButton) {
        
        guard let num1 = Int(minusTextField1.text ?? "") else {
            minusResultLabel.text = "数字を入力してください"
            return
        }
        guard let num2 = Int(minusTextField2.text ?? "") else {
            minusResultLabel.text = "数字を入力してください"
            return
        }
        
        minusResultLabel.text = String(num1 - num2)
        
        view.endEditing(true)
    }
    
    

}
