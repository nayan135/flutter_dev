import 'dart:convert';
import 'package:http/http.dart' as http;
import 'blog_pull.dart';

class BlogService {
  static const String apiUrl =
      'https://public-api.wordpress.com/rest/v1.1/sites/impsdotblog.wordpress.com/posts/?type=page';

  Future<List<BlogPull>> fetchPosts() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List posts = data['posts'];

      return posts.map((e) => BlogPull.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load blog posts');
    }
  }
}
