import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movie/models/movie.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<Movie> loadMovie() async {
    // final response = await http
  }

  int _currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                bottom: 24,
                right: 24,
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 4),
                    child: Text(
                      "Hello Muliada!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  Text(
                    "Book you favorite movie",
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  )
                ],
              ),
            ),
            Container(
              // padding: EdgeInsets.only(left: 20.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  initialPage: 0,
                  height: 400,
                  viewportFraction: 0.88,
                  disableCenter: false,
                  // enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentSlide = index;
                    });
                  },
                ),
                items: [0, 1, 2].map((index) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        margin: EdgeInsets.only(
                          right: 24,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://m.media-amazon.com/images/M/MV5BMTg2OTcyMjEwNV5BMl5BanBnXkFtZTgwNDE5Mzk2NjM@._V1_.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                          color: Colors.grey[500], // Fallback color
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Container(
                          padding: EdgeInsets.all(24),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Text(
                                "Deadly Class",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
