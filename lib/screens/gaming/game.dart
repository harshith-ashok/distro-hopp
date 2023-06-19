import 'package:distro_hop/screens/gaming/all_games.dart';
import 'package:distro_hop/screens/gaming/old_game.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Gaming extends StatefulWidget {
  const Gaming({super.key});

  @override
  State<Gaming> createState() => _GamingState();
}

class _GamingState extends State<Gaming> {
  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Okay !"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("🚨 Note"),
      content: Text(
        "This category is very niche and might not serve as a daily driver\nso I would recommend you to dual boot it along with a main distro.",
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
              'What kind of games will you be playing?',
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
                            FontAwesomeIcons.calculator,
                            color: Colors.purple,
                          ),
                          Text(
                            ' Old Games',
                            style: GoogleFonts.shareTechMono(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40.0),
                            child: Text(
                              'Relive your childhood using emulators.',
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const OldGames(),
                                  ),
                                );
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
                    child: Padding(
                      padding: const EdgeInsets.all(100.0),
                      child: Column(
                        children: [
                          const Icon(
                            FontAwesomeIcons.galacticSenate,
                            color: Colors.purple,
                          ),
                          Text(
                            ' Everything on Steam',
                            style: GoogleFonts.shareTechMono(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40.0),
                            child: Text(
                              'Play your favorite AAA games with ProtonDB on Steam',
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AllGames(),
                                  ),
                                );
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
              ],
            ),
            FilledButton.tonalIcon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                FontAwesomeIcons.angleLeft,
                color: Colors.purple,
              ),
              label: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'Back',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500, color: Colors.purple),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
