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
  
  // MARK : - Nib File Loading 
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
  }
}
