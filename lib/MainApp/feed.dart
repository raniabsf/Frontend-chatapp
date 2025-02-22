import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FeedScreen(),
    );
  }
}

class Post {
  final String username;
  final String avatar;
  final String posttime;
  final String caption;
  final String? postpic1;
  final String? postpic2;

  Post({
    required this.username,
    required this.avatar,
    required this.posttime,
    required this.caption,
    this.postpic1,
    this.postpic2,
  });
}

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Post> posts = [
      Post(
        username: "Soumia",
        avatar: "assets/images/avatar.png",
        posttime: "2min ago",
        caption:
            "Life is more exciting when you do what you love! 🎨🎶⚽ Whether it’s painting, music, sports, or tech, embrace your interests and make every moment count 💡✨",
      ),
      Post(
        username: "Mouhamed",
        avatar: "assets/images/avatar.png",
        posttime: "5h ago",
        caption: "Sweet moments, one slice at a time! 🍰✨",
        postpic1: "assets/images/post1.jpg",
        postpic2: "assets/images/post2.jpg",
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "Yakko",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Afacad",
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Feed",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Afacad",
                      fontWeight: FontWeight.bold,
                    )),
                ElevatedButton(
                  onPressed: () {
                    print("button clicked");
                  },
                  child: Text("Recents"),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("button clicked");
                  },
                  child: Text("Friends"),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width - 20,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 5,
                        offset: Offset(4, 4))
                  ]),
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipOval(
                        child: Image.asset(posts[0].avatar,
                            width: 60, height: 60, fit: BoxFit.cover),
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Text(
                            posts[0].username,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: "Afacad",
                                fontSize: 20,
                                color: Colors.black),
                          ),
                          Text(posts[0].posttime,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Afacad",
                                  color: Colors.black)),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Text(
                    posts[0].caption,
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Afacad",
                        color: Colors.black),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite_outlined,
                            color: Colors.red, size: 30),
                        onPressed: () {},
                      ),
                      SizedBox(width: 20),
                      IconButton(
                        icon: Icon(Icons.comment_rounded,
                            color: Colors.grey, size: 30),
                        onPressed: () {},
                      ),
                      Spacer(),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          child: Text(
                            "Send message",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Afacad",
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
