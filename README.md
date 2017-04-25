# RedditClone

This is an application that shows a list of topics with upvote and downvote features. In addition, users are able to write their own topics. 

# Features 

* Shows a sorted list of 20 topics that are stored on JSON format file in Application Bundles. I chose to save information on JSON file, and implement JSON parsing logic accrodingly in case the app use RestAPI in the future. 

* Shows not only texts relevant to topics but also images. I assigned an UIImage object directly to the Data Structure, that holds topic information. However, this can be improved by fetching images via HTTP request.

* If users tap the new button, the app moves to another screen, where they can submit their own topics. Maximum 255 characters are allowed to be entered, and the number of characters in the input form are being counted when typing.

* There are two buttons called 'upvote' and 'downvote' in the list. The number of upvote count is updated instantaneously every time users tap upvote or downvote buttons. 

* There is a refresh button on the top left of the Topic List Screen. If this button is tapped, the topic list is sorted based on the number of upvote count. 
 
# Data Structure 

- A struct type 'PostInformation' is used to hold information associated with a topic. It has three variables such as title, postImage, upvoteCount, and those variables are initialized when the app launches. Custom tableViewCell declares a 'PostInformation' type variable as the Property Observer to easily update the topic list when the value of the variable changes. Also, a topic list is sorted based on the value of 'upvoteCount' variable.

# How to build 

1) Clone the repository 

```
$ git clone https://github.com/woogii/RedditClone
$ cd RedditClone
```
2) Open the workspace in XCode 

```
$ open RedditClone.xcodeproj/
```

3) Compile and run the app in your simulator 

# Compatibility 
The code of this project works in Swift3.0, Xcode 8.2.1 and iOS 8  