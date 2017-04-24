//
//  SubmitNewTopicViewController.swift
//  RedditClone
//
//  Created by siwook on 2017. 4. 24..
//  Copyright © 2017년 siwook. All rights reserved.
//

import UIKit

// MARK : - SubmitNewTopicViewController : UIViewController

class SubmitNewTopicViewController : UIViewController {
  
  // MARK : - Property
  
  @IBOutlet weak var inputTextView: UITextView!
  @IBOutlet weak var submitButton: UIButton!
  @IBOutlet weak var textCountLabel: UILabel!
  
  // MARK : - View Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setTextViewBorderColor()
  }
  
  func setTextViewBorderColor() {
    inputTextView.layer.borderColor = UIColor.lightGray.cgColor
  }

  @IBAction func tapBackToTheListButton(_ sender: UIBarButtonItem) {
    _ = navigationController?.popViewController(animated: true)
  }
  
  @IBAction func tapSubmitButton(_ sender: UIButton) {
    
  }
  
}







