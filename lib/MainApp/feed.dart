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

class Inv {
  final String InvName;
  final String InvAvatar;

  Inv({
    required this.InvName,
    required this.InvAvatar,
  });
}

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Post> posts = [
      Post(
        username: "Soumia",
        avatar: "lib/assets/images/Soumia.jpg",
        posttime: "2min ago",
        caption:
            "Life is more exciting when you do what you love! 🎨🎶⚽ Whether it’s painting, music, sports, or tech, embrace your interests and make every moment count 💡✨",
      ),
      Post(
        username: "Mouhamed",
        avatar: "lib/assets/images/Mouhamed.jpg",
        posttime: "5h ago",
        caption: "Sweet moments, one slice at a time! 🍰✨",
        postpic1: "lib/assets/images/post2.jpg",
        postpic2: "lib/assets/images/post1.jpg",
      ),
    ];
    List<Inv> Invs = [
      Inv(
        InvName: "Safinez",
        InvAvatar: "lib/assets/images/Soumia.jpg",
      ),
      Inv(
        InvName: "Mouhamed",
        InvAvatar: "lib/assets/images/Mouhamed.jpg",
      ),
      Inv(
        InvName: "Soumia",
        InvAvatar: "lib/assets/images/Mouhamed.jpg",
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: "Yak",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Afacad",
                          fontSize: 36)),
                  TextSpan(
                      text: "ko",
                      style: TextStyle(
                          color: Color(0xFF667EF8),
                          fontWeight: FontWeight.bold,
                          fontFamily: "Afacad",
                          fontSize: 36)),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 10),
                Text("Feed",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Afacad",
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                    )),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    print("button clicked");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFD9D9D9),
                  ),
                  child: Text("Recents",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: "Afacad")),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("button clicked");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFD9D9D9).withOpacity(0.5),
                  ),
                  child: Text("Friends",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 20,
                          fontFamily: "Afacad")),
                ),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.only(bottom: 40),
                          child: PostWidget(posts: posts[index]));
                    })),
            SizedBox(
                height: 180,
                child: PageView.builder(
                  itemCount: Invs.length,
                  controller: PageController(viewportFraction: 0.8),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: InvCards(Invs: Invs[index]),
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  final Post posts;
  const PostWidget({super.key, required this.posts});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
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
                child: Image.asset(posts.avatar,
                    width: 60, height: 60, fit: BoxFit.cover),
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    posts.username,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: "Afacad",
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  Text(posts.posttime,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Afacad",
                        color: Color(0xFFD9D9D9),
                      )),
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
            posts.caption,
            style: TextStyle(
                fontSize: 18, fontFamily: "Afacad", color: Colors.black),
          ),
          Row(
            children: [
              Expanded(
                  flex: 13,
                  child: ClipRect(
                    child: Image.asset(
                      posts.postpic1!,
                      fit: BoxFit.cover,
                      height: 170,
                    ),
                  )),
              Expanded(
                  flex: 6,
                  child: ClipRect(
                    child: Image.asset(
                      posts.postpic2!,
                      fit: BoxFit.cover,
                      height: 170,
                    ),
                  )),
            ],
          ),
          Spacer(),
          Row(
            children: [
              IconButton(
                icon:
                    Icon(Icons.favorite_outlined, color: Colors.red, size: 30),
                onPressed: () {},
              ),
              SizedBox(width: 20),
              IconButton(
                icon: Icon(Icons.comment_rounded,
                    color: Color(0xFFD9D9D9), size: 30),
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
                        fontWeight: FontWeight.bold),
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class InvCards extends StatelessWidget {
  final Inv Invs;
  const InvCards({super.key, required this.Invs});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 20,
      height: 150,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(25),
      ),
      child: (Column(
        children: [
          Image.asset(Invs.InvAvatar, width: 170, height: 170),
          Column(
            children: [
              Text(
                "${Invs.InvName} wants to chat with you ",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Afacad",
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: Text(
                    "Chat now",
                    style: TextStyle(
                        color: Colors.blue,
                        fontFamily: "Afacad",
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          )
        ],
      )),
    );
  }
}
