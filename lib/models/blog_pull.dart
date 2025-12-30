class BlogPull {
  final String title;
  final String excerpt;
  final String content;
  final String image;
  final String url;
  final DateTime date;

  BlogPull({
    required this.title,
    required this.excerpt,
    required this.content,
    required this.image,
    required this.url,
    required this.date,
  });

  factory BlogPull.fromJson(Map<String, dynamic> json) {
    return BlogPull(
      title: json['title'],
      excerpt: json['excerpt'],
      content: json['content'],
      image: json['featured_image'] ?? '',
      url: json['URL'],
      date: DateTime.parse(json['date']),
    );
  }
}
