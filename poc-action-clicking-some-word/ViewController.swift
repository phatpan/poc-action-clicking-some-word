//
//  ViewController.swift
//  poc-action-clicking-some-word
//
//  Created by Phatcharaphan Ananpreechakun on 26/6/20.
//  Copyright © 2020 Phatcharaphan Ananpreechakun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var demoLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupTextConditionEN()
  }

  func setupTextConditionEN() {
    let highlightedText = "นโยบายความเป็นส่วนตัว"
    demoLabel.attributedText = makeTextCondition(conditionText: demoLabel.text!, highlightedText: highlightedText)
    let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap))
    demoLabel.addGestureRecognizer(gestureRecognizer)
    demoLabel.isUserInteractionEnabled = true
 }

  func makeTextCondition(conditionText: String, highlightedText: String) -> NSMutableAttributedString {
    let conditionEN: NSString = conditionText as NSString
    let range = (conditionEN).range(of: highlightedText)
    let attribute = NSMutableAttributedString.init(string: conditionEN as String)
    let blueColor = UIColor(red:0.42, green:0.69, blue:1.00, alpha:1.0)
    attribute.addAttribute(NSAttributedString.Key.foregroundColor, value: blueColor , range: range)
    attribute.addAttribute(NSAttributedString.Key.underlineStyle , value: NSUnderlineStyle.single.rawValue, range: range)
    return attribute
  }

  @objc func handleTap(_ sender: UITapGestureRecognizer) {
    print("click world")
  }
}

