import 'package:flutter/material.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                            fontSize: 30)),
                    TextSpan(
                        text: "ko",
                        style: TextStyle(
                            color: Color(0xFF667EF8),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Afacad",
                            fontSize: 30)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 300,
                width: 300,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                        left: -50,
                        top: 30,
                        child: _buildAvatar("assets/avatar1.png", 80)),
                    Positioned(
                        left: 120,
                        top: 0,
                        child: _buildAvatar("assets/avatar2.png", 70)),
                    Positioned(
                        left: 270,
                        top: 30,
                        child: _buildAvatar("assets/avatar3.png", 45)),
                    Positioned(
                        left: -50,
                        top: 200,
                        child: _buildAvatar("assets/avatar4.png", 65)),
                    Positioned(
                        left: 90,
                        top: 150,
                        child: _buildAvatar("assets/avatar5.png", 55)),
                    Positioned(
                        left: 80,
                        top: 270,
                        child: _buildAvatar("assets/avatar5.png", 70)),
                    Positioned(
                        left: 210,
                        top: 130,
                        child: _buildAvatar("assets/avatar5.png", 100)),
                  ],
                ),
              ),

              SizedBox(height: 30),

              Text(
                "Chat and make\n   new Friends",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "Afacad",
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF667EF8),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    ),
                    child: Text(
                      "Start chatting",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Afacad"),
                    ),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFD2DBEB),
                      minimumSize: Size(50, 50),
                      shape: CircleBorder(),
                    ),
                    child: Text("G"),
                  )
                ],
              ),

              SizedBox(height: 10),

              // Login Text
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: "Already have an account?",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Afacad",
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        )),
                    TextSpan(
                        text: " LOG IN",
                        style: TextStyle(
                          color: Color(0xFF667EF8),
                          fontFamily: "Afacad",
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Corrected function for avatars
Widget _buildAvatar(String imagePath, double radius) {
  return CircleAvatar(
    radius: radius,
    backgroundImage: AssetImage(imagePath),
    backgroundColor: Colors.grey.shade300, 
  );
}
