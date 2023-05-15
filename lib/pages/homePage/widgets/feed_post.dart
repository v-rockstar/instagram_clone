import 'package:flutter/material.dart';
import '../../../common_widgets/text.dart';

class FeedPost extends StatelessWidget {
  const FeedPost({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 17,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'data',
                    style: TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert),
                    color: Colors.white,
                  )
                ],
              ),
              Container(
                height: 470,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://i.pinimg.com/736x/19/be/34/19be34a9dac23230ed3d45872227cbda.jpg'))),
              ),
              const RowItems(),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: MyText(
                  text: '70  Likes',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
                child: MyText(
                    text:
                        'data.................................................................................................................................................................................................................................'),
              ),
              const Padding(
                  padding: EdgeInsets.only(left: 20, top: 4),
                  child: Text(
                    'View all comments',
                    style: TextStyle(color: Colors.white70),
                  )),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
                child: MyText(
                    text:
                        'data....................................................................................................'),
              ),
            ],
          );
        });
  }
}

class RowItems extends StatelessWidget {
  const RowItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 7),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.comment),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.telegram),
          color: Colors.white,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.privacy_tip),
          color: Colors.white,
        ),
      ],
    );
  }
}
