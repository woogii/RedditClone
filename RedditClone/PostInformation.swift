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
  
  init(dictionary:[String:AnyObject]) {
    
    self.title = dictionary[Constants.JSONResponseKeys.Title] as? String ?? ""
    self.upvoteCount = dictionary[Constants.JSONResponseKeys.UpvoteCount] as? Int ?? 0
    
    if let postImageName = dictionary[Constants.JSONResponseKeys.PostImageName] as? String {
      self.postImage = UIImage(named:postImageName)!
    } else {
      self.postImage = UIImage(named:Constants.ImageName.Default)!
    }
  }
  
  // MARK : - Create Posting List 
  
  static func createPostList(_ jsonResults:[[String:AnyObject]])->[PostInformation] {
  
    var postList = [PostInformation]()
    
    for result in jsonResults {
      let post = PostInformation(dictionary: result)
      postList.append(post)
    }
    
    return postList
  }
  
  
  
}
