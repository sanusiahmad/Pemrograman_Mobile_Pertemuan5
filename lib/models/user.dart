class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profile_photo"],
      phoneNumber: map["phone_number"],
    );
  }

  factory User.dummy() {
    return User(
      id: 2006179,
      name: "Ahmad Sanusi",
      username: "Nursanusi",
      email: "2006179@itg.ac.id",
      profilePhoto:
          "https://instagram.fcgk4-6.fna.fbcdn.net/v/t51.2885-19/317781967_668697141470486_6899652056192968667_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcgk4-6.fna.fbcdn.net&_nc_cat=102&_nc_ohc=MKJbVyfr1QkAX8j1eIk&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfBp-I2C6CDRuKC1P6lXqXWq7cweuop6T5VDrau77oWHUg&oe=642A9347&_nc_sid=8fd12b",
      phoneNumber: "08579341801",
    );
  }
}
