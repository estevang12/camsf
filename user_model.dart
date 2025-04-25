@HiveType(typeId: 1) // Para persistencia offline
class AppUser {
  @HiveField(0) final String uid;
  @HiveField(1) final String email;
  @HiveField(2) final String? displayName;
  @HiveField(3) final String? photoUrl;

  AppUser({
    required this.uid,
    required this.email,
    this.displayName,
    this.photoUrl,
  });

  // Conversión desde Firebase User
  factory AppUser.fromFirebase(User user) {
    return AppUser(
      uid: user.uid,
      email: user.email!,
      displayName: user.displayName,
      photoUrl: user.photoURL,
    );
  }
}