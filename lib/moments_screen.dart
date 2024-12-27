import 'package:arifahday/wish_screen.dart';
import 'package:flutter/material.dart' hide CarouselController;
import 'package:carousel_slider/carousel_slider.dart';
import 'model/moment.dart';

class MomentsScreen extends StatefulWidget {
  const MomentsScreen({super.key});

  @override
  State<MomentsScreen> createState() => _MomentsScreenState();
}

class _MomentsScreenState extends State<MomentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Our Moments",
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Helvetica",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const WishScreen(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              "images/ic_wish.png",
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(width: 4),
                            Text(
                              "My Wish",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Helvetica",
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Text(
                    "My Favorite Moments with You",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFB4B4B4),
                    ),
                  ),
                ],
              ),
            ),
            OurMoments()
          ],
        ),
      ),
    );
  }
}

class OurMoments extends StatefulWidget {
  const OurMoments({super.key});

  @override
  State<OurMoments> createState() => _OurMomentsState();
}

class _OurMomentsState extends State<OurMoments> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider.builder(
          itemCount: moments.length,
          options: CarouselOptions(
            height: 400,
            viewportFraction: 0.7,
            enableInfiniteScroll: true,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          itemBuilder: (context, index, realIndex) {
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(moments[index].image),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: index == _currentIndex
                            ? Colors.transparent : Colors.black.withOpacity(0.5),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                ),
                if (index != _currentIndex)
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.2),
                              Colors.black.withOpacity(0.5),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                moments[_currentIndex].title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                moments[_currentIndex].description,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
