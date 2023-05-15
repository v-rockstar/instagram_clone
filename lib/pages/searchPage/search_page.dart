import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/searchPage/widgets/random_feed.dart';
import 'package:instagram_clone/pages/searchPage/widgets/search_field.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[SearchTextField(), RandomFeed()],
    );
  }
}
