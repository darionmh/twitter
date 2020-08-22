import 'package:flutter/material.dart';
import 'package:twitter/widgets/post.dart';

class Posts extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  final _posts = <PostModel>[];

  void initState() {
    super.initState();

    _posts.add(PostModel(author: 'person', body: 'this is the super long post', timestamp: DateTime.parse('2020-08-21 13:27:00')));
    _posts.add(PostModel(author: 'person', body: 'this is the super long post', timestamp: DateTime.parse('2020-08-21 13:27:00')));
    _posts.add(PostModel(author: 'person', body: 'this is the super long post', timestamp: DateTime.parse('2020-08-21 13:27:00')));
    _posts.add(PostModel(author: 'person', body: 'this is the super long post', timestamp: DateTime.parse('2020-08-21 13:27:00')));
    _posts.add(PostModel(author: 'person', body: 'this is the super long post', timestamp: DateTime.parse('2020-08-21 13:27:00')));
  }

  Widget _buildRow(int index) {
    return Post(data: _posts[index]);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _posts.length * 2 - 1,
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();

        final index = i ~/ 2;
        // if (index >= _posts.length) {
        //   // _suggestions.addAll(generateWordPairs().take(10));
        // }
        return _buildRow(index);
      },
    );
  }
}
