import 'package:flutter/material.dart';

class PostBar extends StatelessWidget {
  const PostBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 2, mainAxisSpacing: 2),
      itemBuilder: (context, index) => Container(
        alignment: Alignment.center,
        color: Colors.amber,
        child: const Text('data'),
      ),
    );
  }
}
