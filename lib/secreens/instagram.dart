import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Instagram extends StatefulWidget {
  const Instagram.HomeInatagramPage({Key? key}) : super(key: key);

  @override
  State<Instagram> createState() => _InstagramState();
}
class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/1280px-Instagram_logo.svg.png',
            width: 120.0,
          ),
          actions: const [
            Icon(Icons.add_box_outlined, color: Colors.black),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.chat_bubble_outline, color: Colors.black),
            SizedBox(
              width: 10,
            ),
          ],
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.78,
              width: 400,
              child: ListView(
                children: [
                  Container(width: 400, height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        story(),
                        story(),
                        story(),
                        story(),
                        story(),
                        story(),],),),
                  Mypost(),
                  Mypost(),
                ],
              ),
            ),
          ],
        ));
  }

  Column Mypost() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16,
        ),
        Container(
          height: 1,
          width: 400,
          color: Colors.grey.withOpacity(0.3),
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Container(
              height: 40,
              width: 50,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/DNA8.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                  color: Colors.amber),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "Mortadha Emad",
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(
              width: 170,
            ),
            Icon(Icons.more_horiz),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: 400,
          width: 400,
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/mor_enjoy.jpg'),
                fit: BoxFit.fill,
              ),
              color: Colors.amber),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Icon(
                Icons.favorite_border,
                size: 32,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                "images/icons/chat-bubble.png",
                height: 32,
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                "images/icons/telegram-logo.png",
                height: 32,
                width: 24,
              ),
              SizedBox(
                width: 200,
              ),
              Image.asset(
                "images/icons/save-instagram.png",
                height: 32,
                width: 24,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "1,669 likes",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
          child: Expanded(
            child: Text(
              "The AppBar displays the toolbar widgets, leading, title, and actions, above the bottom (if any). The bottom is usually used for a TabBar. If a flexibleSpace widget is specified then it is stacked behind the toolbar "
              "and the bottom widget.",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }


  Column story() {
    return Column(
      children: [
        Container(
          height: 80,
          width: 100,
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/DNA8.jpg'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
              color: Colors.amber),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          "mor__emad",
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
