//
//  Constants.swift
//  RedditClone
//
//  Created by siwook on 2017. 4. 24..
//  Copyright © 2017년 siwook. All rights reserved.
//

import Foundation
import UIKit

// MARK : - Constants

struct Constants {

  // MARK : - Common 
  
  struct Common {
    
    static let MainStoryboard = "Main"
    static let JSONType = "json"
    static let SampleJSONInput = "sampleJSONInput"
    
  }
  
  // MARK : - Storyboard Identifier
  
  struct StoryboardIdentifier {
    static let PostListViewController = "PostListVC"
    static let SubmitNewTopicViewController = "submitNewTopicVC"
  }
  
  // MARK : - JSON Response Keys
  
  struct JSONResponseKeys {
    static let Title = "title"
    static let PostImageName = "postImageName"
    static let UpvoteCount = "upvoteCount"
  }
  
  // MARK : - UIImage Resource Name
  
  struct ImageName {
    static let Default = "img_default"
  }
  
  // MARK : - Cell Identifier 
  
  struct CellIdentifier {
    static let PostInfoTableViewCell = "postInformationTableViewCell"
  }
  
  // MARK : - PostInfoVC 
  
  struct PostInfoVC {
    static let EstimatedRowHeight:CGFloat = 160
  }
  
  // MARK : - PostInformationTableViewCell
  
  struct PostInformationTableViewCell {
    static let CornerRadius:CGFloat = 4
  }
  
  
}
