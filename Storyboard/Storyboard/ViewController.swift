//
//  ViewController.swift
//  Storyboard
//
//  Created by PansiluW on 8/17/24.
//

import UIKit

class ViewController: UIViewController {
    //Interface Builder: Mini app inside XCode
    //Outlet: UI objects used as variables in code
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    //life-cycle method within the viewcontroller
    //called whenever the view within the viewcontroller is loaded and all it's child elements are ready to go.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        name.text = "Name: "
        textField.becomeFirstResponder()
        label.isHidden = true
    }
    
    @IBAction func buttonWasPressed(_ sender: UIButton) {
        let name = textField.text ?? ""
        label.text = "Hello, \(name)!"
        label.isHidden = false
        textField.resignFirstResponder()
    }
    //outlets: variables in code to modified the UI objects in runtime
    //actions: to respond to events

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textField.resignFirstResponder()
    }
}

