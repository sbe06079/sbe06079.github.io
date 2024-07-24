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
    'assets/jade_and_evan/1.jpeg',
    'assets/jade_and_evan/2.jpeg',
    'assets/jade_and_evan/3.jpeg',
    'assets/jade_and_evan/4.jpeg',
    'assets/jade_and_evan/5.jpeg',
    'assets/jade_and_evan/6.jpeg',
    'assets/jade_and_evan/7.jpeg',
    'assets/jade_and_evan/8.jpeg',
    'assets/jade_and_evan/9.jpeg',
    'assets/jade_and_evan/10.jpeg',
    'assets/jade_and_evan/11.jpeg',
    'assets/jade_and_evan/12.jpeg',
    'assets/jade_and_evan/13.jpeg',
    'assets/jade_and_evan/14.jpeg',
    'assets/jade_and_evan/15.jpeg',
    'assets/jade_and_evan/16.jpeg',
    'assets/jade_and_evan/17.jpeg',
    'assets/jade_and_evan/18.jpeg',
    'assets/jade_and_evan/19.jpeg',
    'assets/jade_and_evan/20.jpeg',
    'assets/jade_and_evan/21.jpeg',
    'assets/jade_and_evan/22.jpeg',
    'assets/jade_and_evan/23.jpeg',
    'assets/jade_and_evan/24.jpeg',
    'assets/jade_and_evan/25.jpeg',
    'assets/jade_and_evan/26.jpeg',
    'assets/jade_and_evan/27.jpeg',
    'assets/jade_and_evan/28.jpeg',
    'assets/jade_and_evan/29.jpeg',
    'assets/jade_and_evan/30.jpeg',
    'assets/jade_and_evan/31.jpeg',
    'assets/jade_and_evan/32.jpeg',
    'assets/jade_and_evan/33.jpeg',
    'assets/jade_and_evan/34.jpeg',
    'assets/jade_and_evan/35.jpeg',
    'assets/jade_and_evan/36.jpeg',
    'assets/jade_and_evan/37.jpeg',
    'assets/jade_and_evan/38.jpeg',
    'assets/jade_and_evan/39.jpeg',
    'assets/jade_and_evan/40.jpeg',
    'assets/jade_and_evan/41.jpeg',
    'assets/jade_and_evan/42.jpeg',
    'assets/jade_and_evan/43.jpeg',
    'assets/jade_and_evan/44.jpeg',
    'assets/jade_and_evan/45.jpeg',
    'assets/jade_and_evan/46.jpeg',
    'assets/jade_and_evan/47.jpeg',
    'assets/jade_and_evan/48.jpeg',
    'assets/jade_and_evan/49.jpeg',
    'assets/jade_and_evan/50.jpeg',
    'assets/jade_and_evan/51.jpeg',
    'assets/jade_and_evan/52.jpeg',
    'assets/jade_and_evan/53.jpeg',
    'assets/jade_and_evan/54.jpeg',
    'assets/jade_and_evan/55.jpeg',
    'assets/jade_and_evan/56.jpeg',
    'assets/jade_and_evan/57.jpeg',
    'assets/jade_and_evan/58.jpeg',
    'assets/jade_and_evan/59.jpeg',
    'assets/jade_and_evan/60.jpeg',
    'assets/jade_and_evan/61.jpeg',
    'assets/jade_and_evan/62.jpeg',
    'assets/jade_and_evan/63.jpeg',
    'assets/jade_and_evan/64.jpeg',
    'assets/jade_and_evan/65.jpeg',
    'assets/jade_and_evan/66.jpeg',
    'assets/jade_and_evan/67.jpeg',
    'assets/jade_and_evan/68.jpeg',
    'assets/jade_and_evan/69.jpeg',
    'assets/jade_and_evan/70.jpeg',
    'assets/jade_and_evan/71.jpeg',
    'assets/jade_and_evan/72.jpeg',
    'assets/jade_and_evan/73.jpeg',
    'assets/jade_and_evan/74.jpeg',
    'assets/jade_and_evan/75.jpeg',
    'assets/jade_and_evan/76.jpeg',
    'assets/jade_and_evan/77.jpeg',
    'assets/jade_and_evan/78.jpeg',
    'assets/jade_and_evan/79.jpeg',
    'assets/jade_and_evan/80.jpeg',
    'assets/jade_and_evan/81.jpeg',
    'assets/jade_and_evan/82.jpeg',
    'assets/jade_and_evan/83.jpeg',
    'assets/jade_and_evan/84.jpeg',
    'assets/jade_and_evan/85.jpeg',
    'assets/jade_and_evan/86.jpeg',
    'assets/jade_and_evan/87.jpeg',
    'assets/jade_and_evan/88.jpeg',
    'assets/jade_and_evan/89.jpeg',
    'assets/jade_and_evan/90.jpeg',
    'assets/jade_and_evan/91.jpeg',
    'assets/jade_and_evan/92.jpeg',
    'assets/jade_and_evan/93.jpeg',
    'assets/jade_and_evan/94.jpeg',
    'assets/jade_and_evan/95.jpeg',
    'assets/jade_and_evan/96.jpeg',
    'assets/jade_and_evan/97.jpeg',
    'assets/jade_and_evan/98.jpeg',
    'assets/jade_and_evan/99.jpeg',
    'assets/jade_and_evan/100.jpeg',
    'assets/jade_and_evan/101.jpeg',
    'assets/jade_and_evan/102.jpeg',
    'assets/jade_and_evan/103.jpeg',
    'assets/jade_and_evan/104.jpeg',
    'assets/jade_and_evan/105.jpeg',
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
                  child: Image.asset('assets/jade_and_evan/top1.jpeg')),

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
                  child: Image.asset('assets/jade_and_evan/top2.jpeg')),
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
