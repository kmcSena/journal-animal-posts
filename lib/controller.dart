import 'model.dart';
import 'post.dart';

class JournalController {
  List<Post> posts = [];

  Future<void> load() async {
    posts = await loadPosts();
  }
}
