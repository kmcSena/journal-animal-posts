import 'dart:convert';

import 'package:http/http.dart' as http;

import 'post.dart';

Future<List<Post>> loadPosts() async {
  final url = Uri.parse(
    'https://kmcsena.github.io/journal-animal-posts/posts.json?v=7f638ff',
  );
  final response = await http.get(url);
  if (response.statusCode != 200) {
    throw Exception('投稿の読み込みに失敗しました: ${response.statusCode}');
  }

  final jsonText = utf8.decode(response.bodyBytes);
  final decoded = jsonDecode(jsonText) as List<dynamic>;
  return decoded
      .map((item) => Post.fromJson(item as Map<String, dynamic>))
      .toList();
}
