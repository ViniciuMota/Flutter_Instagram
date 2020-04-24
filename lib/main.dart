import 'package:flutter/material.dart';
import 'package:nac_FIAP_flutter_instagram/screens/feed_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Instagram Feed UI Redesign',
      debugShowCheckedModeBanner: false,
      home: FeedScreen(),
    );
  }
}
