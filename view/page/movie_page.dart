import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:latihan_movie/model/movie.dart';
import 'package:latihan_movie/view/widget/movie_widget.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 41, 41, 41),
        body: Center(
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
                    Text(
                      "Mau Nonton Film ?",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Gap(10),
                    Center(
                      child: TextField(
                        controller: null,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Apa yang kamu mau tonton", hintStyle: TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Color.fromARGB(255, 59, 59, 59),
                            prefixIcon: Icon(Icons.search),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey))),
                      ),
                    ),
                    Gap(10),
                    Text(
                      "Now Playing",
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
                      itemCount: movieData.length,
                      itemBuilder: (context, index) {
                        return MovieWidget(
                            title: movieData[index].title,
                            imgUrl: movieData[index].imgurl,
                            genre: movieData[index].genre);
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
