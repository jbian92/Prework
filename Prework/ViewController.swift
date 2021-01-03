//
//  ViewController.swift
//  Prework
//
//  Created by Julia Bian on 1/2/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    var backgroundColor: UIColor!
    
    var textColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        backgroundColor = view.backgroundColor
        
        textColor = textLabel.textColor
    }

    @IBAction func didTapButton(_ sender: Any) {
        textLabel.textColor = UIColor.red
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.blue
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        if textField.text == "" {
            textLabel.text = "Goodbye 👋"
        }
        else {
            textLabel.text = textField.text
            textField.text = ""
            view.endEditing(true)
        }
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello from Julia!"
        view.backgroundColor = backgroundColor
        textLabel.textColor = textColor
    }
}

