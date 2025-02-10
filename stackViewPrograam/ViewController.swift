//
//  ViewController.swift
//  stackViewPrograam
//
//  Created by Jyotsna Jayanteyee Pandey on 08/02/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var label1 = UILabel()
        label1.text = "Hello, World!"
        label1.backgroundColor = UIColor.lightGray
        let label2 = UILabel()
        label2.text = "Second Label"
        label2.backgroundColor = .lightGray
        let label3 = UILabel()
        label3.text = "Third Label"
        label3.backgroundColor = .lightGray
        let stackView = UIStackView(arrangedSubviews: [label1, label2, label3])
        stackView.axis = .vertical  // Vertical axis (can be .horizontal for horizontal stack)
        stackView.distribution = .fillEqually // Equal distribution of space
        stackView.alignment = .fill  // Align all subviews to fill the stack view
        stackView.spacing = 10  // Space between the items in the stack view
        
        // Add the stack view to the view hierarchy
        stackView.translatesAutoresizingMaskIntoConstraints = false  // Enable Auto Layout
        
        self.view.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20)
        ])
        //StackView Pprogrammatic UIKit
    }
    func setupLayout() {
        print("Learning stackview layout")
    }

}

