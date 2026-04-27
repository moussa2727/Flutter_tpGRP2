class Post {
  final String profileImageUrl;
  final String comment;
  final int timestamp;

  const Post({
    required this.profileImageUrl,
    required this.comment,
    required this.timestamp,
  });
}

final List<Post> posts = [
  const Post(
    profileImageUrl: 'assets/tacos.webp',
    comment: 'Just had the most amazing taco salad at that new Mexican place! Fresh and delicious! ',
    timestamp: 15,
  ),
  const Post(
    profileImageUrl: 'assets/tomate.webp',
    comment: 'The tomato soup from that new cafe is a game changer! So rich and flavorful! ',
    timestamp: 32,
  ),
  const Post(
    profileImageUrl: 'assets/cookies.webp',
    comment: 'Baked a batch of chocolate chip cookies today and they turned out perfect! Crispy on the edges and chewy in the center! ',
    timestamp: 120,
  ),
];