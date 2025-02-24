import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class InvitationScreen extends StatelessWidget {
  final List<Inv> invitations = [
    Inv("assets/aya.png", "Safinez", "23"),
    Inv("assets/mouhamed.jpg", "Mouhamed", "19"),
    Inv("assets/maria.jpg", "Maria", "26"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F7FF),
      body: Column(
        children: [
          Row(
            children: [
              Image.asset("name"),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: "hi,",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontFamily: "Afacad",
                            fontSize: 30)),
                    TextSpan(
                        text: " Rania",
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Afacad",
                            fontSize: 30)),
                  ],
                ),
              ),
            ],
          ),
          Center(
            child: SizedBox(
              height: 450,
              child: CardSwiper(
                cardsCount: invitations.length,
                cardBuilder:
                    (context, index, percentThresholdX, percentThresholdY) {
                  return InvCard(inv: invitations[index]);
                },
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff667EF8),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              ),
              child: Text(
                "Chat now",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Afacad",
                  fontSize: 20,
                ),
              ))
        ],
      ),
    );
  }
}

class Inv {
  final String InvAvatar;
  final String InvName;
  final String age;
  Inv(this.InvAvatar, this.InvName, this.age);
}

class InvCard extends StatelessWidget {
  final Inv inv;
  const InvCard({required this.inv});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25), // Rounded corners
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              inv.InvAvatar,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 15,
            left: 15,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: inv.InvName,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Afacad",
                            fontSize: 24)),
                    TextSpan(
                        text: inv.age,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontFamily: "Afacad",
                            fontSize: 24)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
