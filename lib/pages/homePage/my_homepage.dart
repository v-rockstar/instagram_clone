import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/homePage/widgets/feed_post.dart';
import 'package:instagram_clone/pages/homePage/widgets/story_container.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/instagram_logo.svg',
          color: Colors.white,
          height: 110,
          width: 100,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.messenger_outline)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget>[StoryView(), FeedPost()],
        ),
      ),
    );
  }
}
