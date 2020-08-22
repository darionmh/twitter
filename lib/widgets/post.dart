import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  final PostModel data;

  const Post ({ Key key, this.data }): super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text('${widget.data.author} - ${-widget.data.timestamp.difference(DateTime.now()).inMinutes} mins ago'),
      subtitle: Text(widget.data.body),
    );
  }
}

class PostModel {
  String author;
  String body;
  DateTime timestamp;

  PostModel({this.author, this.body, this.timestamp});
}