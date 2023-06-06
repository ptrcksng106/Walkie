//
//  AddViewController.swift
//  Walkie
//
//  Created by Patrick Samuel Owen Saritua Sinaga on 30/05/23.
//

import UIKit

class AddViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var textTitle: UITextField!
    
    public var completion: ((String, Date) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textTitle.delegate = self
        
    }
    
    
    @IBAction func didTapSaveButton(_ sender: UIButton) {
        
        if let titleText = textTitle.text, !titleText.isEmpty {
            let targetDate = datePicker.date
            
            completion?(titleText, targetDate)
            
            
            print("Berhasil")
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textTitle.resignFirstResponder()
        return true
    }
    
}
