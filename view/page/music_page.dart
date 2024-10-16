import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:latihan_movie/model/music.dart';
import 'package:latihan_movie/view/widget/music_widget.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 41, 41, 41),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(10),
                      SizedBox(
                        width: 250,
                        child: Text(
                          "What do you want to hear",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      Gap(10),
                      Center(
                        child: TextField(
                          controller: null,
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 129, 129, 129)),
                            filled: true,
                            fillColor: Color.fromARGB(255, 59, 59, 59),
                            suffixIcon: Icon(Icons.search),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal:
                                    20), // Atur padding vertikal dan horizontal
                          ),
                        ),
                      ),
                      Gap(10),
                      Text(
                        "Recomendation",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const Gap(10),
                Expanded(
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemCount: musicData.length,
                        itemBuilder: (context, index) {
                          return MusicWidget(
                              title: musicData[index].title,
                              imgUrl: musicData[index].imgUrl,
                              singer: musicData[index].singer);
                        })),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
