import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class RandomFeed extends StatefulWidget {
  const RandomFeed({super.key});

  @override
  State<RandomFeed> createState() => _RandomFeedState();
}

class _RandomFeedState extends State<RandomFeed> {
  List<String> images = [
    'https://wallpapertag.com/wallpaper/full/8/2/f/744667-male-lion-faces-wallpaper-2048x1423-for-meizu.jpg',
    'https://i.pinimg.com/736x/19/be/34/19be34a9dac23230ed3d45872227cbda.jpg',
    'https://www.getaway.co.za/wp-content/uploads/2020/04/Cheetah.jpg',
    'https://wallpapercave.com/wp/UBWCF1e.jpg',
    'https://facts.net/wp-content/uploads/2015/01/AdobeStock_146236133.jpeg',
    'https://wallpapertag.com/wallpaper/full/8/2/f/744667-male-lion-faces-wallpaper-2048x1423-for-meizu.jpg',
    'https://i.pinimg.com/736x/19/be/34/19be34a9dac23230ed3d45872227cbda.jpg',
    'https://www.getaway.co.za/wp-content/uploads/2020/04/Cheetah.jpg',
    'https://wallpapercave.com/wp/UBWCF1e.jpg',
    'https://facts.net/wp-content/uploads/2015/01/AdobeStock_146236133.jpeg',
    'https://wallpapertag.com/wallpaper/full/8/2/f/744667-male-lion-faces-wallpaper-2048x1423-for-meizu.jpg',
    'https://i.pinimg.com/736x/19/be/34/19be34a9dac23230ed3d45872227cbda.jpg',
    'https://www.getaway.co.za/wp-content/uploads/2020/04/Cheetah.jpg',
    'https://wallpapercave.com/wp/UBWCF1e.jpg',
    'https://facts.net/wp-content/uploads/2015/01/AdobeStock_146236133.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: GridView.custom(
            shrinkWrap: true,
            gridDelegate: SliverQuiltedGridDelegate(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                repeatPattern: QuiltedGridRepeatPattern.inverted,
                pattern: const [
                  QuiltedGridTile(2, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                ]),
            childrenDelegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(images[index])))),
                childCount: images.length)));
  }
}
