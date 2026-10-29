import 'package:flutter/material.dart';

import 'controller.dart';

class JournalPage extends StatefulWidget {
  const JournalPage({super.key});

  @override
  State<JournalPage> createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  final JournalController controller = JournalController();

  @override
  void initState() {
    super.initState();
    load();
  }

  Future<void> load() async {
    await controller.load();
    if (!mounted) return;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('つぶやき表示')),
      body: ListView.builder(
        itemCount: controller.posts.length,
        itemBuilder: (context, index) {
          final post = controller.posts[index];
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 4,
            ),
            leading: Text(post.emoji, style: const TextStyle(fontSize: 32)),
            title: Text(
              post.user,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              post.text,
              style: const TextStyle(fontSize: 15, height: 1.4),
            ),
          );
        },
      ),
    );
  }
}
