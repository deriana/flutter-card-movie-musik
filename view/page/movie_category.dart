import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MovieDesign extends StatelessWidget {
  const MovieDesign({super.key});

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
                    "https://th.bing.com/th/id/OIF.XYtNOsfdIl56ACJcyfEtPQ?rs=1&pid=ImgDetMain"),
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.bottomCenter,
                  child: AspectRatio(
                    aspectRatio: 4/1,
                    child: Container(
                      color: const Color.fromARGB(132, 105, 105, 105),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10,
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Judul Film", style: TextStyle(color: Colors.white, fontSize: 15),),
                          Gap(5),
                          Text("Drama, Comedy, Romance", style: TextStyle(color: Colors.white, fontSize: 13),)
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
