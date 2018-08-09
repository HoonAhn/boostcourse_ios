//
//  SignUpViewController.swift
//  SignUp
//
//  Created by Sanghoon Ahn on 09/08/2018.
//  Copyright © 2018 Sanghoon Ahn. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, UIGestureRecognizerDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var confirmPwTextField: UITextField!
    @IBOutlet weak var introTextView: UITextView!
    @IBOutlet weak var confirmButton: UIButton!

    @IBAction func cancelButtonPushed(_ sender: UIButton){
        print("cancel button pushed. dismiss modal.")
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func confirmButtonPushed(_ sender: UIButton){
        print("confirm button pushed.")
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        idTextField.placeholder = "Insert Username"
        idTextField.textContentType = UITextContentType.username
        pwTextField.placeholder = "Insert Password"
        pwTextField.textContentType = UITextContentType.password
        confirmPwTextField.placeholder = "Confirm Password"
        confirmPwTextField.textContentType = UITextContentType.password
        introTextView.backgroundColor = UIColor.orange
        confirmButton.isEnabled = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
