import 'package:flutter/material.dart';
import 'package:twitter/screens/home.dart';
import 'package:twitter/syles.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _index = 1;
  final _pages = <Page>[];

  void initState() {
    super.initState();

    _pages.add(Page(
      title: Text(
        'Home',
        style: titleStyle,
      ),
      label: 'home',
      icon: Icon(Icons.home),
      content: Home(),
    ));
    _pages.add(Page(
      title: TextField(
        decoration: InputDecoration(
          hintText: 'Enter a search term',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(2.0))
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(2.0))
          ),
        ),
      ),
      label: 'search',
      icon: Icon(Icons.search),
      content: Center(
        child: Text('hello world'),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.person_outline),
        title: _pages[_index].title,
        // toolbarHeight: 32.0,
      ),
      // body: Posts(),
      body: IndexedStack(
        index: _index,
        children: _pages.map((e) => e.content).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int i) {
          setState(() {
            _index = i;
          });
        },
        selectedItemColor: Colors.blue,
        currentIndex: _index,
        items: _pages
            .map(
              (e) => BottomNavigationBarItem(
                icon: e.icon,
                label: e.label,
              ),
            )
            .toList(),
      ),
    );
  }
}

class Page {
  Widget title;
  Icon icon;
  Widget content;
  String label;

  Page({this.title, this.icon, this.content, this.label});
}
