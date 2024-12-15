import 'package:flutter/material.dart';
import 'package:screaming_movie_app/widgets/custom_nav_bar.dart';
import 'package:screaming_movie_app/widgets/movie_page_buttons.dart';
import 'package:screaming_movie_app/widgets/recommend_widget.dart';

class MoviePage extends StatelessWidget {
  final String imagePath;

  const MoviePage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: Image.asset(
              imagePath, // Use the dynamic imagePath here
              height: 280,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 8,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              imagePath, // Use the same dynamic imagePath
                              height: 250,
                              width: 180,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 50, top: 70),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.red,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 8,
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 60,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  const MoviePageButtons(),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Doctor Strange 2",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "this is the sample",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const RecommendWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
