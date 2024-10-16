import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MovieWidget extends StatelessWidget {
  final String title;
  final String imgUrl;
  final String genre;
  const MovieWidget({
    super.key,
    required this.title,
    required this.imgUrl,
    required this.genre,
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
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: AspectRatio(
                aspectRatio: 3 / 1,
                child: Container(
                  color: const Color.fromARGB(132, 105, 105, 105),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Flexible(
                        child: Text(
                          title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.visible,
                        ),
                      ),
                      const Gap(5),
                      Flexible(
                        child: Text(
                          genre,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
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
