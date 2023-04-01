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
      id: 142,
      name: "Putri Zakiyah Lestari",
      username: "Puzle",
      email: "2006142@itg.ac.id",
      profilePhoto:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0u9pikXDdDlQstL-BM9TOkGjz3sy5MoRYsg&usqp=CAU",
    );
  }
}