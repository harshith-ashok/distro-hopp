import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/tile.dart';

class AllGames extends StatefulWidget {
  const AllGames({super.key});

  @override
  State<AllGames> createState() => _AllGamesState();
}

class _AllGamesState extends State<AllGames> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = (MediaQuery.of(context).size.width) / 2;
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Top 3 Distros for you ❤️',
              style: GoogleFonts.bebasNeue(fontSize: 50),
            ),
          ),
          InfoTile(
            screenWidth: screenWidth,
            content:
                'It is based on Arch Linux and provides several GUI applications to efficiently manage the system.\nThe one thing that you would like here is the Garuda Gamer application.',
            name: 'Garuda Linux',
            tier: '#1',
            link: 'https://garudalinux.org/',
          ),
          InfoTile(
            screenWidth: screenWidth,
            content:
                'Most of all, it is an open Linux platform that leaves you in full control.\nYou can take charge of your system and install new software or content as you want.',
            name: 'SteamOS',
            tier: '#2',
            link: 'https://store.steampowered.com/steamos/buildyourown',
          ),
          InfoTile(
            screenWidth: screenWidth,
            content:
                'Based on Ubuntu 20.04 LTS, Drauger OS aims to provide a platform for gamers and\n“make it easy for anyone to game, whether they use a keyboard and mouse, or some sort of controller”.',
            name: 'Drauger OS',
            tier: '#3',
            link: 'https://draugeros.org/',
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30.0,
              top: 30,
              bottom: 0,
              right: screenWidth * 1.2,
            ),
            child: FilledButton.tonal(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'Done',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500, color: Colors.purple),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
