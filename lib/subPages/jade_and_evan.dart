import 'package:flutter/material.dart';
import '../components/footerComponent.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components/customMaterialWithHover.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../landingPage.dart';

//import '../components/aParagraph.dart';

import '../components/aHeader.dart';
import '../components/subtitle.dart';

import '../components/customExpansion.dart';

import 'dart:math' as math;

import 'package:flutter/gestures.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/services.dart';

import 'package:go_router/go_router.dart';

import '../components/website_colors.dart';
import '../components/text_size.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class JadeAndEvanPage extends StatefulWidget {
  const JadeAndEvanPage({super.key, required this.title});

  final String title;

  @override
  State<JadeAndEvanPage> createState() => _JadeAndEvanPageState();
}

class _JadeAndEvanPageState extends State<JadeAndEvanPage> {
  final List<String> imagePaths = [
    'assets/jade_and_evan/jade_and_evan_1.jpg',
    'assets/jade_and_evan/jade_and_evan_2.jpg',
    'assets/jade_and_evan/jade_and_evan_3.jpg',
    'assets/jade_and_evan/jade_and_evan_4.jpg',
    'assets/jade_and_evan/jade_and_evan_5.jpg',
    'assets/jade_and_evan/jade_and_evan_6.jpg',
    'assets/jade_and_evan/jade_and_evan_7.jpg',
    'assets/jade_and_evan/jade_and_evan_8.jpg',
    'assets/jade_and_evan/jade_and_evan_9.jpg',
    'assets/jade_and_evan/jade_and_evan_10.jpg',
    'assets/jade_and_evan/jade_and_evan_11.jpg',
    'assets/jade_and_evan/jade_and_evan_12.jpg'

    // Add more image paths as needed
  ];

  @override
  void initState() {
    super.initState();

    // This line schedules a callback for the end of this frame
    // to calculate the left padding using MediaQuery.
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _showZoomableImage(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.8,
          width: MediaQuery.of(context).size.width * 0.8,
          child: PhotoViewGallery.builder(
            itemCount: imagePaths.length,
            builder: (context, index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: AssetImage(imagePaths[index]),
                minScale: PhotoViewComputedScale.contained,
                maxScale: PhotoViewComputedScale.covered * 2,
                heroAttributes: PhotoViewHeroAttributes(tag: imagePaths[index]),
              );
            },
            pageController: PageController(initialPage: index),
            scrollPhysics: BouncingScrollPhysics(),
            backgroundDecoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Title(
      //color: const Color(0xFF202123),
      color: const Color(0xFFF0F1F2),
      title: "jade & evan",
      child: Scaffold(
        backgroundColor: const Color(0xFFF0F1F2),
        body: SingleChildScrollView(
          child: Column(
            children: [
              /*
              MasonryView(
                listOfItem: _items,
                numberOfColumn: 2,
                itemBuilder: (item) {
                  return Image.asset(item);
                },
              ),
              */
              Padding(
                padding: EdgeInsets.fromLTRB(35, 35, 35, 35),
                child: Container(
                  height: MediaQuery.of(context)
                      .size
                      .height, // Provide a constrained height
                  child: GridView.custom(
                    gridDelegate: SliverStairedGridDelegate(
                      crossAxisSpacing: 48,
                      mainAxisSpacing: 48,
                      startCrossAxisDirectionReversed: true,
                      pattern: [
                        StairedGridTile(0.5, 1),
                        StairedGridTile(0.5, 3 / 4),
                        StairedGridTile(1.0, 10 / 4),
                      ],
                    ),
                    childrenDelegate: SliverChildBuilderDelegate(
                      (context, index) {
                        if (index < imagePaths.length) {
                          /*
                          return Image.asset(
                            imagePaths[index],
                            fit: BoxFit.cover,
                          );
                          */
                          return GestureDetector(
                            onTap: () => _showZoomableImage(context, index),
                            child: Hero(
                              tag: imagePaths[index],
                              child: Image.asset(
                                imagePaths[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        }
                        return null; // Return null for indices beyond our image count
                      },
                      childCount: imagePaths.length,
                    ),
                  ),
                ),
              ),
              //const SizedBox(height: 35.0),
              //const FooterComponent(title: "footer"),
            ],
          ),
        ),
      ),
    );
  }
}
