import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MusicWidget extends StatelessWidget {
  final String singer;
  final String imgUrl;
  final String title;
  const MusicWidget({
    super.key,
    required this.singer,
    required this.imgUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.network(
                  imgUrl,
                  fit: BoxFit.cover,),
            ),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Flexible(
                        child: Text(
                          singer,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.visible,
                        ),
                      ),
                      const Gap(10),
                    Flexible(
                        child: Text(
                          title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
