import 'package:distro_hop/screens/about.dart';
import 'package:distro_hop/screens/gaming/game.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Okay !"),
      onPressed: () {
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Gaming(),
          ),
        );
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("🚨 Note"),
      content: Text(
        "This category is very niche and might not serve as a daily driver\nso I would recommend you to dual boot it or install it in a vm\nalong with a main distro.",
        style: GoogleFonts.montserrat(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
      ),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'What will you be doing the most with your PC?',
              style: GoogleFonts.bebasNeue(color: Colors.black, fontSize: 50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 200, horizontal: 20),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(100.0),
                      child: Column(
                        children: [
                          const Icon(
                            FontAwesomeIcons.gamepad,
                            color: Colors.purple,
                          ),
                          Text(
                            ' Gaming',
                            style: GoogleFonts.shareTechMono(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40.0),
                            child: Text(
                              'Predominantly for gaming but\ncan handle casual web browsing',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                color: Colors.purple,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 90.0),
                            child: FilledButton.tonal(
                              onPressed: () {
                                showAlertDialog(context);
                              },
                              child: Text(
                                'Select',
                                style: GoogleFonts.montserrat(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                // WORK
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 200, horizontal: 20),
                  child: Card(
                    color: Color(0xfff3f9f2),
                    child: Padding(
                      padding: const EdgeInsets.all(100.0),
                      child: Column(
                        children: [
                          const Icon(
                            FontAwesomeIcons.noteSticky,
                            color: Colors.green,
                          ),
                          Text(
                            ' Office',
                            style: GoogleFonts.shareTechMono(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40.0),
                            child: Text(
                              'For causal document viewing, editing\nand wide range of educational apps.',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                color: Colors.green,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 90.0),
                            child: FilledButton.tonal(
                              style: FilledButton.styleFrom(
                                backgroundColor: Color(0xfff3f9f2),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Select',
                                style: GoogleFonts.montserrat(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                // Development
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 200, horizontal: 20),
                  child: Card(
                    color: Color(0xfff9f2f2),
                    child: Padding(
                      padding: const EdgeInsets.all(100.0),
                      child: Column(
                        children: [
                          const Icon(
                            FontAwesomeIcons.code,
                            color: Colors.red,
                          ),
                          Text(
                            ' Development',
                            style: GoogleFonts.shareTechMono(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40.0),
                            child: Text(
                              'Fully customizable hard-core and\nstable environment for heavy duty work',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                color: Colors.red,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 90.0),
                            child: FilledButton.tonal(
                              style: FilledButton.styleFrom(
                                backgroundColor: Color(0xfff9f2f2),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Select',
                                style: GoogleFonts.montserrat(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AboutPage(),
            ),
          );
        },
        child: const Icon(
          FontAwesomeIcons.userAstronaut,
        ),
      ),
    );
  }
}
