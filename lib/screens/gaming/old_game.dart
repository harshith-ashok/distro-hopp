import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/tile.dart';

class OldGames extends StatefulWidget {
  const OldGames({super.key});

  @override
  State<OldGames> createState() => _OldGamesState();
}

class _OldGamesState extends State<OldGames> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = (MediaQuery.of(context).size.width) / 2;
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Top 4 Distros for you ❤️',
              style: GoogleFonts.bebasNeue(fontSize: 50),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Note that few of these can be installed on your existing distro as well 😊',
              style: GoogleFonts.montserrat(fontSize: 20),
            ),
          ),
          InfoTile(
            screenWidth: screenWidth,
            content:
                'Batocera.linux is an open-source and completely free retro-gaming\ndistribution that can be copied to a USB stick or an SD card',
            name: 'Batocera.Linux',
            tier: '#1',
            link: 'https://batocera.org/download',
          ),
          InfoTile(
            screenWidth: screenWidth,
            content:
                'RetroArch is a frontend for emulators, game engines and media players.\nIt enables you to run classic games on a wide range of computers and consoles through its slick graphical interface.',
            name: 'RetroArch',
            tier: '#2',
            link: 'https://www.retroarch.com/index.php?page=platforms',
          ),
          InfoTile(
            screenWidth: screenWidth,
            content:
                'Batocera.linux is an open-source and completely free retro-gaming\ndistribution that can be copied to a USB stick or an SD card',
            name: 'Liberto',
            tier: '#3',
            link: 'https://retroarch.com/?page=platforms',
          ),
          InfoTile(
            screenWidth: screenWidth,
            content:
                'A popular game emulator for Windows PCs is DeSmuME, which lets you play Nintendo DS games.',
            name: 'DeSmuMe',
            tier: '#4',
            link: 'https://desmume.org/download/',
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
