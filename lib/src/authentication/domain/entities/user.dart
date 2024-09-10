class User {
  const User({
    required this.id,
    required this.createdAt,
    required this.name,
    required this.avatar,
    required this.email,
  });

  final int id;
  final String createdAt;
  final String name;
  final String avatar;
  final String email;

  const User.empty()
      : this(email: '_', avatar: '_', name: '_', createdAt: '_', id: 1);
}
