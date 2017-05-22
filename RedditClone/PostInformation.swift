//
//  PostInformation.swift
//  RedditClone
//
//  Created by siwook on 2017. 4. 24..
//  Copyright © 2017년 siwook. All rights reserved.
//

import Foundation
import UIKit

// MARK : - PostInformation 

struct PostInformation {

  // MARK : - Property 
  
  var title:String
  var postImage:UIImage
  var upvoteCount:Int
  
  // MARK : - Initialization
  
  init(title:String, postImage:UIImage, upvoteCount:Int) {
    self.title = title
    self.postImage = postImage
    self.upvoteCount = upvoteCount
  }
  
  init(dictionary:[String:Any]) {
    
    self.title = dictionary[Constants.JSONResponseKeys.Title] as? String ?? ""
    self.upvoteCount = dictionary[Constants.JSONResponseKeys.UpvoteCount] as? Int ?? 0
    
    if let postImageName = dictionary[Constants.JSONResponseKeys.PostImageName] as? String {
      self.postImage = UIImage(named:postImageName)!
    } else {
      self.postImage = UIImage(named:Constants.ImageName.Default)!
    }
  }
  
}
