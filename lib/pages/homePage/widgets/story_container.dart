import 'package:flutter/material.dart';

class StoryView extends StatelessWidget {
  const StoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 107,
      width: double.infinity,
      child: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 33,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundColor: Colors.amber,
                    radius: 30,
                  ),
                ),
              ),
              SizedBox(
                width: 50,
                child: Text(
                  'datajdiwhdhwid',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white),
                ),
              )
            ]),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
      ),
    );
  }
}
