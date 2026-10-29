class Post {
  const Post({required this.emoji, required this.user, required this.text});

  final String emoji;
  final String user;
  final String text;

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      emoji: json['emoji'] as String,
      user: json['user'] as String,
      text: json['text'] as String,
    );
  }
}
