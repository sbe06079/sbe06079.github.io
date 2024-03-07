import 'package:flutter/material.dart';
import '../components/footerComponent.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_animate/flutter_animate.dart';

import '../landingPage.dart';

import '../components/aParagraph.dart';

import '../components/aHeader.dart';
import '../components/subtitle.dart';

import '../components/customExpansion.dart';

import 'dart:math' as math;

import 'package:flutter/gestures.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:go_router/go_router.dart';

import '../components/website_colors.dart';
import '../components/text_size.dart';

class ThoughtsPage extends StatefulWidget {
  const ThoughtsPage({super.key, required this.title});

  final String title;

  @override
  State<ThoughtsPage> createState() => _ThoughtsPageState();
}

class _ThoughtsPageState extends State<ThoughtsPage> {
  bool isExpanded20231030 = false;
  bool isExpanded20240225 = false;

  //int overallLeftPadding = 0;

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

  @override
  Widget build(BuildContext context) {
    return Title(
        color: const Color(0xFF202123),
        title: "thoughts | evan kim",
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  const SizedBox(height: 45.0),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(1.0, 0, 1.0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () async {
                              context.go('/'); // push named route
                            },
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            child: Animate(
                              effects: const [
                                FadeEffect(duration: Duration(seconds: 5)),
                              ],
                              child: Image.asset(
                                'assets/evanBitmoji_cutoff_with_hey.png',
                                height: 85, // Adjust height as needed
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              SliverFillRemaining(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    //mainAxisAlignment: MainAxisAlignment,
                    children: [
                      const SizedBox(height: 35.0),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width < 855.0)
                            ? (MediaQuery.of(context).size.width * 0.85) + 11
                            : (MediaQuery.of(context).size.width * 0.7) + 11,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Animate(
                            effects: const [
                              FadeEffect(duration: Duration(seconds: 5)),
                            ],
                            child: Opacity(
                              opacity: 0.8,
                              child: Image.asset('assets/thoughts.png',
                                  height: 60.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      const AHeader(
                        headerText: "Thoughts",
                        alignment: TextAlign.left,
                      ),
                      const SizedBox(height: 10.0),
                      const Subtitle(
                          content: "(any mental doodles i want to save)"),
                      const SizedBox(height: 25.0),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width < 855.0)
                            ? (MediaQuery.of(context).size.width * 0.86)
                            : (MediaQuery.of(context).size.width * 0.71),
                        child: CustomExpansionPanel(
                          parentPaddingLeft: 0,
                          title: '2023.10.30 - Own The Parameter',
                          isExpanded: isExpanded20231030,
                          onTap: () => setState(
                              () => isExpanded20231030 = !isExpanded20231030),
                          child: Column(
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(14, 0, 14, 0),
                                  child: Text.rich(
                                    TextSpan(
                                      style: TextStyle(
                                        fontFamily: 'Aptos',
                                        fontSize: standardTextSize,
                                        color: const Color(0xffFAFAFA)
                                            .withOpacity(0.8),
                                        fontWeight: FontWeight.w100,
                                        letterSpacing: 1.3,
                                        wordSpacing: 1.1,
                                        height: 1.7,
                                      ),
                                      children: const <InlineSpan>[
                                        TextSpan(
                                          text:
                                              "There's one maintenance staff member in my apartment complex I'm fairly close with. He's helped me out a lot during my years living in an apartment near Duke's campus - broken dryer, bone stuck in sink drain (thanks to my cat), ac filter, etc.",
                                        ),
                                        TextSpan(text: "\n\n"),
                                        TextSpan(
                                            text:
                                                "I was driving back home around 5pm the other day, and as I was trying to enter my apartment parking lot, I was struggling as per usual. at the entrance, there's this residents-only parking pass (magnet-ish thingie) that I have to wave at a machine in order for it to successfully recognize my parking pass, sort of like a sensor. For some reason, the sensor never functions successfully on the first try most of the time, which I've gotten used to."),
                                        TextSpan(text: "\n\n"),
                                        TextSpan(
                                            text:
                                                "Out of very little frustration, and perhaps more so out of acceptance of the reality that each time I enter my apartment I will always have to try waving my parking pass several times for the gate to open, I have always jokingly told my girlfriend that the sensor is a very poor sensor with a very low p, that is, probability of success."),
                                        TextSpan(text: "\n\n"),
                                        TextSpan(
                                            text:
                                                "Like, if p were to be 0.10, that would mean that on average, I would have to try waving my parking pass 10 times to get one success (assuming a typical binomial distribution, as np = 10 * 0.1 = 1), meaning it takes me about 30 seconds to sometimes even a minute and a half to stay still in my car, waving my parking pass sort of looking like a fool, but I'm, at this point, unbothered because it's always been like that and friends living in my apartment complex have told me it is the same for them as well."),
                                        TextSpan(text: "\n\n"),
                                        TextSpan(
                                            text:
                                                "This time, it was different - it took almost two minutes and the gate was still not open. It is not unexpected, as there is always tail-risk to a binomial distribution, and if I’m living in this apartment complex for the third year, it is about time I get an instance of me waving my parking pass way more than ten times."),
                                        TextSpan(text: "\n\n"),
                                        TextSpan(
                                            text:
                                                "I was starting to get a little annoyed and thought about pulling back my car and trying out the entrance that is at the other side of the parking lot, which is a course of action almost all of my friends living in the apartment complex had to do at some point in the past."),
                                        TextSpan(
                                            text:
                                                "As I was pulling back my car, the maintenance staff member pulled up with his car exiting the parking lot (there is one barricade for going in and another for going out of the parking lot). He was probably going home after his work day. He pulled down his window and said, “hey man is it not working again?”"),
                                        TextSpan(text: "\n\n"),
                                        TextSpan(
                                            text:
                                                "So I pulled down my window and said, “hey yeah it’s not this bad usually but man it’s just dead today”"),
                                        TextSpan(text: "\n\n"),
                                        TextSpan(
                                            text:
                                                "He responded, “yeah man that’s why when I’m at work I just pull the barricade up and turn it off because it is so bad, keep practicing though, you’ll get better at it you have a good night”"),
                                        TextSpan(text: "\n\n"),
                                        TextSpan(
                                            text:
                                                "His response gave me what is perhaps one of the most obvious, boring realizations, nonetheless a big one for me."),
                                        TextSpan(text: "\n\n"),
                                        TextSpan(
                                            text:
                                                "I’ve always thought that it is the sensor, the object, that has a perpetually fixed, low p parameter value (“success rate”), but his notion that if you practice you’ll somehow “get better at it” prompted me to re-define the framework — the sensor does not necessarily have to have a perpetually fixed, low p parameter value, but really, each individual has their own p (success rate)!"),
                                        TextSpan(text: "\n\n"),
                                        TextSpan(
                                            text:
                                                "What if it’s the other way? What if it truly is each individual having their distinct success rates due to difference in “waving skill”, strength of magnet in parking pass, or for whatever reason?"),
                                        TextSpan(text: "\n\n"),
                                        TextSpan(
                                            text:
                                                "I truly had not thought of it that way. I was very comfortable in my head to think and conclude from the very beginning that the sensor was just a very bad one with a low success rate, but it very much could be that every individual has their unique p (“success rate”), which completely overthrows my previous belief of “the sensor is bad, it is what it is” and imbues this new belief of “I do not know if the sensor is good or bad, but whether it takes 30 seconds or 90 seconds is up to me”"),
                                        TextSpan(text: "\n\n"),
                                        TextSpan(
                                            text:
                                                "Sure, in reality, it is probably a combination of both how good the sensor is and how good an individual’s “waving skill/angle” is, but his short response made me think about how many things in daily life I had previously assigned an external p (“success rate”) that I do not have control over. "),
                                        TextSpan(text: "\n\n"),
                                        TextSpan(
                                            text:
                                                "Assigning external p’s on many things in daily life (parking barricade, Amazon Alexa hearing me when I say “Alexa”, trivial things like that) is sure comforting for me, but assigning an internal p, which I have the power to increase over time with, say, practice, was oddly an obvious, yet empowering notion he gave me in that very brief moment."),
                                        TextSpan(text: "\n\n"),
                                        TextSpan(
                                            text:
                                                "In that preconceived notion of geometric distribution where X = k+1 such that k is the number of failures until my first success, I can employ a mental model where I can start believing that “p” is up to me, and not up to “world”. That clearly means that, in that case, I have the power to skew the underlying distribution!"),
                                        TextSpan(text: "\n\n"),
                                        TextSpan(
                                            text:
                                                "It is a massively trivial situation and a massively trivial, non-riveting-to-some realization I had that day, but it made me think about how many more distributions in daily life (and perhaps in broader “life”) I can start owning and claim (whether it is true or not) that the parameters rather than letting “world” decide the parameter values."),
                                        TextSpan(text: "\n\n"),
                                        TextSpan(
                                            text:
                                                "It was very cool of him to give me that moment of “it is up to you if you believe it” that day at the parking lot entrance. I ended up getting frustrated and still drove to the other gate and got back home that way, but still, it made me want to stop understanding and accepting certain distributions in life and mentally “claim/own” it."),
                                        TextSpan(text: "\n\n"),
                                        TextSpan(
                                            text:
                                                "I’ll probably remember that moment for a very long time, but I had to write it down here because I did not want to forget."),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 25.0),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width < 855.0)
                            ? (MediaQuery.of(context).size.width * 0.86)
                            : (MediaQuery.of(context).size.width * 0.71),
                        child: CustomExpansionPanel(
                          parentPaddingLeft: 0,
                          title: '2024.02.25 - Remember The People',
                          isExpanded: isExpanded20240225,
                          onTap: () => setState(
                              () => isExpanded20240225 = !isExpanded20240225),
                          child: Column(
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(14, 0, 14, 0),
                                  child: Text.rich(
                                    TextSpan(
                                      style: TextStyle(
                                        fontFamily: 'Aptos',
                                        fontSize: standardTextSize,
                                        color: const Color(0xffFAFAFA)
                                            .withOpacity(0.8),
                                        fontWeight: FontWeight.w100,
                                        letterSpacing: 1.3,
                                        wordSpacing: 1.1,
                                        height: 1.7,
                                      ),
                                      children: <InlineSpan>[
                                        const TextSpan(
                                          text:
                                              "I never thought I would learn and feel so much from a 30-minute Miley Cyrus ",
                                        ),
                                        TextSpan(
                                          text: "interview",
                                          style: const TextStyle(
                                            fontFamily: 'Aptos',
                                            fontSize: standardTextSize,
                                            color:
                                                WebsiteColors.hyperlinkPurple,
                                            fontWeight: FontWeight.w100,
                                            letterSpacing: 1.3,
                                            wordSpacing: 1.1,
                                            height: 1.7,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () async {
                                              const urlString =
                                                  'https://www.youtube.com/watch?v=20XP1kOqnUs&pp=ygUmbWlsZXkgY3lydXMgdXNlZCB0byBiZSB5b3VuZyBpbnRlcnZpZXc%3D';
                                              final url = Uri.parse(
                                                  urlString); // Create a Uri object

                                              if (await canLaunchUrl(url)) {
                                                // Use the Uri object
                                                await launchUrl(url);
                                              } else {
                                                throw 'Could not launch $urlString'; // Use the string version in your message
                                              }
                                            },
                                        ),
                                        const TextSpan(
                                          text:
                                              " at 2am on a Saturday night playing FC24 with my headphones playing the interview.",
                                        ),
                                        const TextSpan(text: "\n\n"),
                                        const TextSpan(
                                          text:
                                              "Although I do not know her full story and career story (the ups and downs), I've always enjoyed listening to her live performances online for how versatile her vocal is. This was the first video that gave me the opportunity to learn about how she thinks as a person, and it was amazing.",
                                        ),
                                        const TextSpan(text: "\n\n"),
                                        const TextSpan(
                                          text:
                                              "The level of recall she has on the people (producers, celebrities, staff, etc.) she's worked with throughout her whole career, how she's kept in touch with so many of them, and how she credits them before she lists out her accomplishments.",
                                        ),
                                        const TextSpan(text: "\n\n"),
                                        const TextSpan(
                                          text:
                                              "It was amazing. Admirable. Made me want to pick up that mindset.",
                                        ),
                                        const TextSpan(text: "\n\n"),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 35.0),
                      const FooterComponent(title: "footer"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
