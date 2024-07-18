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
import 'package:cached_network_image/cached_network_image.dart';

import 'dart:math';

//import 'package:path_provider/path_provider.dart';

class JadeAndEvanPage extends StatefulWidget {
  const JadeAndEvanPage({super.key, required this.title});

  final String title;

  @override
  State<JadeAndEvanPage> createState() => _JadeAndEvanPageState();
}

class _JadeAndEvanPageState extends State<JadeAndEvanPage> {
  final List<String> imagePaths = [
    'assets/jade_and_evan/1.jpg',
    'assets/jade_and_evan/2.jpg',
    'assets/jade_and_evan/3.jpg',
    'assets/jade_and_evan/4.jpg',
    'assets/jade_and_evan/5.jpg',
    'assets/jade_and_evan/6.jpg',
    'assets/jade_and_evan/7.jpg',
    'assets/jade_and_evan/8.jpg',
    'assets/jade_and_evan/9.jpg',
    'assets/jade_and_evan/10.jpg',
    'assets/jade_and_evan/11.jpg',
    'assets/jade_and_evan/12.jpg',
    'assets/jade_and_evan/13.jpg',
    'assets/jade_and_evan/14.jpg',
    'assets/jade_and_evan/15.jpg',
    'assets/jade_and_evan/16.jpg',
    'assets/jade_and_evan/17.jpg',
    'assets/jade_and_evan/18.jpg',
    'assets/jade_and_evan/19.jpg',
    'assets/jade_and_evan/20.jpg',
    'assets/jade_and_evan/21.jpg',
    'assets/jade_and_evan/22.jpg',
    'assets/jade_and_evan/23.jpg',
    'assets/jade_and_evan/24.jpg',
    'assets/jade_and_evan/25.jpg',
    'assets/jade_and_evan/26.jpg',
    'assets/jade_and_evan/27.jpg',
    'assets/jade_and_evan/28.jpg',
    'assets/jade_and_evan/29.jpg',
    'assets/jade_and_evan/30.jpg',
    'assets/jade_and_evan/31.jpg',
    'assets/jade_and_evan/32.jpg',
    'assets/jade_and_evan/33.jpg',
    'assets/jade_and_evan/34.jpg',
    'assets/jade_and_evan/35.jpg',
    'assets/jade_and_evan/36.jpg',
    'assets/jade_and_evan/37.jpg',
    'assets/jade_and_evan/38.jpg',
    'assets/jade_and_evan/39.jpg',
    'assets/jade_and_evan/40.jpg',
    'assets/jade_and_evan/41.jpg',
    'assets/jade_and_evan/42.jpg',
    'assets/jade_and_evan/43.jpg',
    'assets/jade_and_evan/44.jpg',
    'assets/jade_and_evan/45.jpg',
    'assets/jade_and_evan/46.jpg',
    'assets/jade_and_evan/47.jpg',
    'assets/jade_and_evan/48.jpg',
    'assets/jade_and_evan/49.jpg',
    'assets/jade_and_evan/50.jpg',
    'assets/jade_and_evan/51.jpg',
    'assets/jade_and_evan/52.jpg',
    'assets/jade_and_evan/53.jpg',
    'assets/jade_and_evan/54.jpg',
    'assets/jade_and_evan/55.jpg',
    'assets/jade_and_evan/56.jpg',
    'assets/jade_and_evan/57.jpg',
    'assets/jade_and_evan/58.jpg',
    'assets/jade_and_evan/59.jpg',
    'assets/jade_and_evan/60.jpg',
    'assets/jade_and_evan/61.jpg',
    'assets/jade_and_evan/62.jpg',
    'assets/jade_and_evan/63.jpg',
    'assets/jade_and_evan/64.jpg',
    'assets/jade_and_evan/65.jpg',
    'assets/jade_and_evan/66.jpg',
    'assets/jade_and_evan/67.jpg',
    'assets/jade_and_evan/68.jpg',
    'assets/jade_and_evan/69.jpg',
    'assets/jade_and_evan/70.jpg',
    'assets/jade_and_evan/71.jpg',
    'assets/jade_and_evan/72.jpg',
    'assets/jade_and_evan/73.jpg',
    'assets/jade_and_evan/74.jpg',
    'assets/jade_and_evan/75.jpg',
    'assets/jade_and_evan/76.jpg',
    'assets/jade_and_evan/77.jpg',
    'assets/jade_and_evan/78.jpg',
    'assets/jade_and_evan/79.jpg',
    'assets/jade_and_evan/80.jpg',
    'assets/jade_and_evan/81.jpg',
    'assets/jade_and_evan/82.jpg',
    'assets/jade_and_evan/83.jpg',
    'assets/jade_and_evan/84.jpg',
    'assets/jade_and_evan/85.jpg',
    'assets/jade_and_evan/86.jpg',
    'assets/jade_and_evan/87.jpg',
    'assets/jade_and_evan/88.jpg',
    'assets/jade_and_evan/89.jpg',
    'assets/jade_and_evan/90.jpg',
    'assets/jade_and_evan/91.jpg',
    'assets/jade_and_evan/92.jpg',
    'assets/jade_and_evan/93.jpg',
    'assets/jade_and_evan/94.jpg',
    'assets/jade_and_evan/95.jpg',
    'assets/jade_and_evan/96.jpg',
    'assets/jade_and_evan/97.jpg',
    'assets/jade_and_evan/98.jpg',
    'assets/jade_and_evan/99.jpg',
    'assets/jade_and_evan/100.jpg',
    'assets/jade_and_evan/101.jpg',
    'assets/jade_and_evan/102.jpg',
    'assets/jade_and_evan/103.jpg',
    'assets/jade_and_evan/104.jpg',
    'assets/jade_and_evan/105.jpg',
  ];

  @override
  void initState() {
    super.initState();
    _shuffleImages();
  }

  void _shuffleImages() {
    imagePaths.shuffle(Random());
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
              color: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double paddingValue = MediaQuery.of(context).size.width > 800 ? 65.0 : 35.0;

    bool isScreenWide = MediaQuery.of(context).size.width > 900;

    final List<StairedGridTile> gridPattern = isScreenWide
        ? [
            StairedGridTile(0.5, 1),
            StairedGridTile(0.5, 3 / 4),
            StairedGridTile(1.0, 10 / 4),
          ]
        : [
            StairedGridTile(1, (0.75 + Random().nextDouble() * (2.25 - 0.75))),
            StairedGridTile(1, (0.75 + Random().nextDouble() * (2.25 - 0.75))),
            StairedGridTile(1, (0.75 + Random().nextDouble() * (2.25 - 0.75))),
          ];

    return Title(
      //color: const Color(0xFF202123),
      color: const Color(0xFFF0F1F2),
      title: "jade & evan",
      child: Scaffold(
        backgroundColor: const Color(0xFFF0F1F2),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 35.0),
              Animate(
                effects: const [
                  FadeEffect(duration: Duration(seconds: 4)),
                ],
                child: Text(
                  "07.05.2024",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Aptos',
                    fontSize: 27,
                    color: const Color(0xFF202123).withOpacity(0.8),
                    fontWeight: FontWeight.w100,
                    letterSpacing: 1.3,
                    wordSpacing: 1.1,
                    height: 1.7,
                  ),
                ),
              ),
              Animate(
                effects: const [
                  FadeEffect(duration: Duration(seconds: 7)),
                ],
                child: Text(
                  "@ Mirror Lake Inn, Lake Placid, NY",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Aptos',
                    fontSize: 17,
                    color: const Color(0xFF202123).withOpacity(0.8),
                    fontWeight: FontWeight.w100,
                    letterSpacing: 1.3,
                    wordSpacing: 1.1,
                    height: 1.7,
                  ),
                ),
              ),
              const SizedBox(height: 25.0),
              SizedBox(
                  width: math.min(750, MediaQuery.of(context).size.width * 0.8),
                  child: Image.asset('assets/jade_and_evan/top1.jpg')),

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
                padding: EdgeInsets.fromLTRB(
                    paddingValue, paddingValue, paddingValue, paddingValue),
                child: Column(
                    // Provide a constrained height
                    /*
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
                  */
                    children: [
                      GridView.builder(
                        /*
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 48,
                      mainAxisSpacing: 48,
                      
                    ),
                    */
                        shrinkWrap: true,
                        physics:
                            NeverScrollableScrollPhysics(), // Disable GridView scrolling

                        gridDelegate: SliverStairedGridDelegate(
                          crossAxisSpacing: paddingValue,
                          mainAxisSpacing: paddingValue,
                          startCrossAxisDirectionReversed: true,
                          pattern: gridPattern,
                        ),
                        itemCount: imagePaths.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () => _showZoomableImage(context, index),
                            child: Hero(
                              tag: imagePaths[index],
                              child: CachedNetworkImage(
                                imageUrl: imagePaths[index],
                                fit: BoxFit.cover,
                                placeholder: (context, url) =>
                                    Center(child: CircularProgressIndicator()),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ),
                          );
                        },
                      ),
                    ]),
              ),
              const SizedBox(height: 25.0),
              SizedBox(
                  width: math.min(750, MediaQuery.of(context).size.width * 0.8),
                  child: Image.asset('assets/jade_and_evan/top2.jpg')),
              const SizedBox(height: 35.0),
              Text(
                "© La Belle Amour Photography",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Aptos',
                  fontSize: 15,
                  color: const Color(0xFF202123).withOpacity(0.8),
                  fontWeight: FontWeight.w100,
                  letterSpacing: 1.3,
                  wordSpacing: 1.1,
                  height: 1.7,
                ),
              ),
              const SizedBox(height: 35.0),
            ],
          ),
        ),
      ),
    );
  }
}
