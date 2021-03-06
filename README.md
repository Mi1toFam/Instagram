# Project 4 - *Instagram*

**Instagram** is a photo sharing app using Parse as its backend.

Time spent: **22** hours spent in total

## User Stories

The following **required** functionality is completed:

- [x] User can sign up to create a new account using Parse authentication
- [x] User can log in and log out of his or her account
- [x] The current signed in user is persisted across app restarts
- [x] User can take a photo, add a caption, and post it to "Instagram"
- [x] User can view the last 20 posts submitted to "Instagram"
- [x] User can pull to refresh the last 20 posts submitted to "Instagram"
- [x] User can tap a post to view post details, including timestamp and caption.

The following **optional** features are implemented:

- [ ] Run your app on your phone and use the camera to take the photo
- [ ] User can load more posts once he or she reaches the bottom of the feed using infinite scrolling.
- [x] Show the username and creation time for each post
- [x] User can use a Tab Bar to switch between a Home Feed tab (all posts) and a Profile tab (only posts published by the current user)
- User Profiles:
  - [ ] Allow the logged in user to add a profile photo
  - [ ] Display the profile photo with each post
  - [ ] Tapping on a post's username or profile photo goes to that user's profile page
- [ ] After the user submits a new post, show a progress HUD while the post is being uploaded to Parse
- [ ] User can comment on a post and see all comments for each post in the post details screen.
- [ ] User can like a post and see number of likes for each post in the post details screen.
- [x] Style the login page to look like the real Instagram login page.
- [ ] Style the feed to look like the real Instagram feed.
- [ ] Implement a custom camera view.

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. How to create staggered collection views (i.e. having collection view cells in a ladder format).
2. How to design animations for collection views

## Video Walkthrough

Here's a walkthrough of implemented user stories:

Launch screen, signing up, and logging out.

![instagram_launch](https://user-images.githubusercontent.com/65626248/125143788-cb6f4180-e0e9-11eb-9aea-5f3642aeea3b.gif)

Logging in and user login persistence.

![instagram_login](https://user-images.githubusercontent.com/65626248/125143820-e5108900-e0e9-11eb-8ab6-e538253b533d.gif)

Viewing the feed and going to the details view of a Post.

![instagram_feed](https://user-images.githubusercontent.com/65626248/125147456-69b6d380-e0f9-11eb-8d63-cc03ca9caa10.gif)

Composing a new Post.

![instagram_compose](https://user-images.githubusercontent.com/65626248/125147660-ba7afc00-e0fa-11eb-83db-04c7d501a77d.gif)

Viewing the user profile.

![instagram_profile](https://user-images.githubusercontent.com/65626248/125143917-315bc900-e0ea-11eb-83de-f6afbc2ff5a9.gif)

Autolayout for user feed.

![instagram_autolayout](https://user-images.githubusercontent.com/65626248/125143923-3751aa00-e0ea-11eb-91f6-a5b06203cf90.gif)


## Credits

List an 3rd party libraries, icons, graphics, or other assets you used in your app.

- [AFNetworking](https://github.com/AFNetworking/AFNetworking) - networking task library


## Notes

Describe any challenges encountered while building the app.

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
