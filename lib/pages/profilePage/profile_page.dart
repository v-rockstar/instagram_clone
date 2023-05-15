import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/pages/profilePage/widgets/post_bar.dart';
import 'package:instagram_clone/pages/profilePage/widgets/profile_header.dart';
import 'package:instagram_clone/pages/profilePage/widgets/reels_bar.dart';
import 'package:instagram_clone/pages/profilePage/widgets/tagged_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('vinay_7869'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_rounded)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ],
        elevation: 10,
      ),
      body: DefaultTabController(
          length: 3,
          child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                    SliverList(
                        delegate:
                            SliverChildListDelegate([profileHeader(context)]))
                  ],
              body: Column(
                children: [
                  TabBar(tabs: [
                    const Tab(
                      icon: Icon(Icons.grid_on_sharp),
                    ),
                    Tab(
                        icon: SvgPicture.asset(
                      color: Colors.white,
                      'assets/reels.svg',
                      height: 30,
                    )),
                    const Tab(
                      icon: Icon(Icons.contact_support_outlined),
                    ),
                  ]),
                  const Expanded(
                      child: TabBarView(
                          children: [PostBar(), ReelsBar(), TaggedBar()]))
                ],
              ))),
    );
  }
}
