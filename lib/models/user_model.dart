class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
    this.id,
    this.name,
    this.imageUrl,
    this.isOnline,
  });
}

String male_Image="https://secureservercdn.net/166.62.109.86/5ee.b1b.myftpupload.com/wp-content/uploads/2017/02/empty-profile-pic-300x300.jpg";
String female_Image="https://www.nicepng.com/png/detail/377-3778780_helper4u-maid-bai-cook-chef-empty-profile-picture.png";
// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'John Doe',
  imageUrl: male_Image,
  isOnline: true,
);

// USERS
final User user1 = User(
  id: 1,
  name: 'John Doe',
  imageUrl: male_Image,
  isOnline: true,
);
final User user2 = User(
  id: 2,
  name: 'John Doe',
  imageUrl: male_Image,
  isOnline: true,
);
final User user3 = User(
  id: 3,
  name: 'John Doe',
  imageUrl: male_Image,
  isOnline: true,
);
final User user4 = User(
  id: 4,
  name: 'John Doe',
  imageUrl: male_Image,
  isOnline: true,
);
final User user5 = User(
  id: 5,
  name: 'John Doe',
  imageUrl: male_Image,
  isOnline: true,
);