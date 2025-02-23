import 'package:flutter/material.dart';
import 'package:yakko/MainApp/feed.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    List<Post> posts = [
      Post(
        username: "Rania",
        avatar: "lib/assets/images/Soumia.jpg",
        posttime: "2min ago",
        caption:
            "Life is more exciting when you do what you love! 🎨🎶⚽ Whether it’s painting, music, sports, or tech, embrace your interests and make every moment count 💡✨",
      ),
      Post(
        username: "Rania",
        avatar: "lib/assets/images/Mouhamed.jpg",
        posttime: "5h ago",
        caption: "Sweet moments, one slice at a time! 🍰✨",
        postpic1: "lib/assets/images/post2.jpg",
        postpic2: "lib/assets/images/post1.jpg",
      ),
    ];
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Text(
            "Profile",
            style: TextStyle(
                fontSize: 36, color: Colors.black, fontFamily: "Afacad"),
          ),
          SizedBox(height: 20),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Center(
                child: Container(
                  height: 180,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Color(0xFFDDE1FE),
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Image.asset(
                  "lib/assets/images/Soumia.jpg",
                  height: 200,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          Text(
            "Rania, 23",
            style: TextStyle(
                fontSize: 36, color: Colors.black, fontFamily: "Afacad"),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(18)),
                  child: Image.asset("lib/assets/images/Soumia.jpg")),
              Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(18)),
                  child: Image.asset("lib/assets/images/Soumia.jpg")),
              Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(18)),
                  child: Image.asset("lib/assets/images/Soumia.jpg")),
              Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(18)),
                  child: Image.asset("lib/assets/images/Soumia.jpg")),
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
        ],
      )),
    );
  }
}
