//
//  LoginVC.swift
//  stackViewPrograam
//
//  Created by Jyotsna Jayanteyee Pandey on 17/02/25.
//

import UIKit

class LoginVC: UIViewController {
    lazy var loginstack : UIStackView = {
        let logins = UIStackView()
        let email = UITextField()
        let name = UITextField()
        email.placeholder = "Email"
        name.placeholder = "Name"
        email.translatesAutoresizingMaskIntoConstraints = false
        name.translatesAutoresizingMaskIntoConstraints = false
        name.borderStyle = .roundedRect
        name.clearButtonMode = .whileEditing
        email.borderStyle = .roundedRect
        email.clearButtonMode = .whileEditing
        email.accessibilityIdentifier = "email"
        logins.axis = .vertical
        logins.distribution = .fillEqually
        logins.addArrangedSubview(email)
        logins.addArrangedSubview(name)
        return logins
    }()
    lazy var loginScrollView : UIScrollView = {
        let lg = UIScrollView()
        loginScrollView.addSubview(lg)
        
        return loginScrollView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(loginstack)
        
        loginstack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([loginstack.topAnchor.constraint(equalTo: view.topAnchor),loginstack.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),loginstack.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),loginstack.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)])
        // Do any additional setup after loading the view.
    }
    func seetupUI(){
        
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
