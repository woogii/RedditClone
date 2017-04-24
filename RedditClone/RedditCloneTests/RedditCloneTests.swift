//
//  RedditCloneTests.swift
//  RedditCloneTests
//
//  Created by siwook on 2017. 4. 24..
//  Copyright © 2017년 siwook. All rights reserved.
//

import XCTest
@testable import RedditClone

// MARK : - RedditCloneTests: XCTestCase

class RedditCloneTests: XCTestCase {
  
  // MARK : - Property 
  
  var postInformationList:[PostInformation]!
  var bundleData:Data!
  
  // MARK : - Set Up
  
  override func setUp() {
    
    super.setUp()
    createSamplePostInformationData()
  }
  
  func createSamplePostInformationData() {
    let testBundle = Bundle(for: type(of: self))
    let path = testBundle.path(forResource: Constants.Common.SampleJSONInput, ofType: Constants.Common.JSONType)
    bundleData = try? Data(contentsOf: URL(fileURLWithPath: path!), options: .alwaysMapped)
  }

  
  // MARK : - Tear Down
  
  override func tearDown() {
    clearTestVariables()
    super.tearDown()
  }
  
  func clearTestVariables() {
    postInformationList = nil
    bundleData = nil
  }

  func testCreatePostListInPostInformationStruct() {
    
    do {
      let dictionaryArray = try(JSONSerialization.jsonObject(with: bundleData, options: .allowFragments)) as? [[String: AnyObject]]
      postInformationList = PostInformation.createPostList(dictionaryArray!)
      
      XCTAssertEqual(postInformationList.count, 20, "couldn't parse 20 items from bundle")
      
    } catch _ {}
    

    
  }
  
  
}
