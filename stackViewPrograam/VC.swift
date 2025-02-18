//
//  VC.swift
//  stackViewPrograam
//
//  Created by Jyotsna Jayanteyee Pandey on 17/02/25.
//

import UIKit

class VC: UIViewController {
         lazy var mainStackView: UIStackView = {
            let m = UIStackView()
            m.axis = .vertical
            m.alignment = .fill
            m.distribution = .fill
            m.spacing = 10
            m.translatesAutoresizingMaskIntoConstraints = false

            m.addArrangedSubview(titleTextField)
            m.addArrangedSubview(contentScrollView)
            m.addArrangedSubview(footerStackView)

            return m
        }()

        lazy var titleTextField: UITextField = {
            let t = UITextField()
            t.borderStyle = .roundedRect
            t.placeholder = "Some Fancy Placeholder"
            t.text = "Some Fancy Title"

            t.translatesAutoresizingMaskIntoConstraints = false

            return t
        }()

        lazy var contentScrollView: UIScrollView = {
            let s = UIScrollView()
            s.contentMode = .scaleToFill
            s.keyboardDismissMode = .onDrag

            s.translatesAutoresizingMaskIntoConstraints = false

            s.addSubview(contentStackView)

            return s
        }()

        lazy var contentStackView: UIStackView = {
            let s = UIStackView()
            s.translatesAutoresizingMaskIntoConstraints = false
            s.axis = .vertical
            s.alignment = .fill
            s.distribution = .equalSpacing
            s.spacing = 10
            s.contentMode = .scaleToFill

            s.addArrangedSubview(descriptionTextView)
            s.addArrangedSubview(getCommentLabel(with: "Some fancy comment"))
            s.addArrangedSubview(getCommentLabel(with: "Another fancy comment"))
            s.addArrangedSubview(getCommentLabel(with: "And..."))
            s.addArrangedSubview(getCommentLabel(with: "..even..."))
            s.addArrangedSubview(getCommentLabel(with: "...more..."))
            s.addArrangedSubview(getCommentLabel(with: "...comments..."))
            s.addArrangedSubview(getCommentLabel(with: "Some fancy comment"))
            s.addArrangedSubview(getCommentLabel(with: "Another fancy comment"))
            s.addArrangedSubview(getCommentLabel(with: "And..."))
            s.addArrangedSubview(getCommentLabel(with: "..even..."))
            s.addArrangedSubview(getCommentLabel(with: "...more..."))
            s.addArrangedSubview(getCommentLabel(with: "...comments..."))

            return s
        }()

        lazy var descriptionTextView: UITextView = {
           let tv = UITextView()
            tv.font = UIFont.systemFont(ofSize: 17.0)
            tv.clipsToBounds = true
            tv.layer.cornerRadius = 5.0
            tv.layer.borderWidth = 0.25

            tv.translatesAutoresizingMaskIntoConstraints = false

            tv.text = """
            Some fancy textfield text,
            spanning over multiple

            lines

            ...
            """

            return tv
        }()

        lazy var footerStackView: UIStackView = {
            let f = UIStackView()
            f.axis = .horizontal
            f.alignment = .fill
            f.distribution = .fillEqually

            let commentLabel = UILabel()
            commentLabel.text = "Comments"

            let addCommentButton = UIButton(type: UIButton.ButtonType.system)

            addCommentButton.setTitle("Add Comment", for: .normal)

            f.addArrangedSubview(commentLabel)
            f.addArrangedSubview(addCommentButton)

            return f
        }()
    override func loadView() {
            view = UIView()
            view.backgroundColor = . systemBackground

           // navigationController?.isToolbarHidden = true

            view.addSubview(mainStackView)

            NSLayoutConstraint.activate([
                mainStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 12),
                mainStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -12),
                mainStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
                mainStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -12),

                titleTextField.heightAnchor.constraint(equalToConstant: titleTextField.intrinsicContentSize.height),

                contentStackView.leadingAnchor.constraint(equalTo: contentScrollView.leadingAnchor),
                contentStackView.trailingAnchor.constraint(equalTo: contentScrollView.trailingAnchor),
                contentStackView.topAnchor.constraint(equalTo: contentScrollView.topAnchor),
                contentStackView.bottomAnchor.constraint(equalTo: contentScrollView.bottomAnchor),

                descriptionTextView.heightAnchor.constraint(equalToConstant: 400),
                descriptionTextView.leadingAnchor.constraint(equalTo: mainStackView.leadingAnchor),
                descriptionTextView.trailingAnchor.constraint(equalTo: mainStackView.trailingAnchor),
            ])
        }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func getCommentLabel(with text: String) -> UILabel {
            let l = UILabel()
            l.layer.borderWidth = 0.25
            l.translatesAutoresizingMaskIntoConstraints = false
            l.text = text
            return l
        }

}
