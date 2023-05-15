import 'package:flutter/material.dart';

Widget profileHeader(BuildContext context) {
  return SizedBox(
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProfileRowHeader(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Vinay Yadav',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Bio',
                style: TextStyle(color: Colors.white60),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, bottom: 10),
              child: Text(
                '.........................\n..............',
                style: TextStyle(color: Colors.white60),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      backgroundColor: Colors.grey.shade800,
                    ),
                    child: const Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            Expanded(
              child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    backgroundColor: Colors.grey.shade800,
                  ),
                  child: const Text(
                    'Share Profile',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            const SizedBox(
              width: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    backgroundColor: Colors.grey.shade800),
                child: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        Container(
          height: 130,
          width: double.infinity,
          padding: const EdgeInsets.only(top: 10),
          child: ListView.builder(
            itemCount: 7,
            itemBuilder: (context, index) => Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.orange,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://wallpapertag.com/wallpaper/full/8/2/f/744667-male-lion-faces-wallpaper-2048x1423-for-meizu.jpg'),
                      radius: 37,
                    ),
                  ),
                ),
                Text(
                  'Higlights',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
          ),
        )
      ],
    ),
  );
}

class ProfileRowHeader extends StatelessWidget {
  const ProfileRowHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
              'https://wallpapertag.com/wallpaper/full/8/2/f/744667-male-lion-faces-wallpaper-2048x1423-for-meizu.jpg'),
          radius: 40,
        ),
        Column(
          children: const [
            Text(
              '60',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 17),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Posts',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        Column(
          children: const [
            Text(
              '478',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 17),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Followers',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        Column(
          children: const [
            Text(
              '120',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 17),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Following',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
