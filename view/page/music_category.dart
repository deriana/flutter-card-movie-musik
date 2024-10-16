import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MusicDesign extends StatelessWidget {
  const MusicDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Card(
          elevation: 5,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            child: Stack(
              children: [
                Image.network(
                    "https://i.scdn.co/image/ab67616d00001e02cb1e5f7d0942bf9196c1e711"),
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.topCenter,
                  child: AspectRatio(
                    aspectRatio: 4 / 1,
                    child: Container(
                      // color: const Color.fromARGB(132, 105, 105, 105),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                        Color.fromARGB(220, 0, 0, 0), 
                        Color.fromARGB(0, 0, 0, 0),
                      ])),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Judul Music",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Gap(5),
                          Text(
                            "Category",
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          )
                        ],
                      ),
                    ),
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
