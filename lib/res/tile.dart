import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoTile extends StatelessWidget {
  const InfoTile({
    super.key,
    required this.screenWidth,
    required this.name,
    required this.content,
    required this.tier,
    required this.link,
  });

  final double screenWidth;
  final String name;
  final String content;
  final String tier;
  final String link;

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse('$link');
    return Padding(
      padding: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: screenWidth,
        bottom: 20.0,
      ),
      child: Card(
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '$name',
              style: GoogleFonts.montserrat(
                letterSpacing: 4,
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Text(
              '$tier',
              style: GoogleFonts.bebasNeue(
                fontSize: 45,
              ),
            ),
          ),
          trailing: IconButton(
            icon: const Icon(
              FontAwesomeIcons.link,
              color: Colors.purple,
            ),
            onPressed: () {
              launchUrl(_url);
            },
          ),
          subtitle: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '$content',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
