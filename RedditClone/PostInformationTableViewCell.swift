//
//  PostInformationTableViewCell.swift
//  RedditClone
//
//  Created by siwook on 2017. 4. 24..
//  Copyright © 2017년 siwook. All rights reserved.
//

import UIKit

// MARK : - PostInformationTableViewCell: UITableViewCell 

class PostInformationTableViewCell: UITableViewCell {
  
  // MARK : - Property 
  
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var postImageView: UIImageView!
  @IBOutlet weak var upvoteCountLabel: UILabel!
  @IBOutlet weak var upvotesButton: UIButton!
  @IBOutlet weak var downvotesButton: UIButton!
  
  // MARK : - Property Observer
  
  var postInfo : PostInformation! {
    didSet {
      updateCell()
    }
  }
  
  // MARK : - Nib File Loading
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
    setButtonsCornerRadius()
    setButtonsBorderColor()
  }

  func setButtonsCornerRadius() {
    upvotesButton.layer.cornerRadius = 4
    downvotesButton.layer.cornerRadius = 4
  }
  
  func setButtonsBorderColor() {
    upvotesButton.layer.borderColor = UIColor.gray.cgColor
    downvotesButton.layer.borderColor = UIColor.gray.cgColor
  }
  
  // MARK : - Managing Cell Selection
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    
    let color = self.contentView.backgroundColor // Store the color
    super.setSelected(isHighlighted, animated: animated)
    self.contentView.backgroundColor = color
    
  }
  
  func updateCell() {
    
    titleLabel.text = postInfo.title
    upvoteCountLabel.text = String(postInfo.upvoteCount)
    postImageView.image = postInfo.postImage
    
  }
  
  
 
}
