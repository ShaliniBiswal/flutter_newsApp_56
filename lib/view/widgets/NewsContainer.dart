import 'package:flutter/material.dart';

import '../detail_view.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  String newsCnt;

  NewsContainer(
      {super.key,
      required this.imgUrl,
      required this.newsHead,
      required this.newsDes,
      required this.newsCnt,
      required this.newsUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeInImage.assetNetwork(
            height: 255,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
            placeholder: "assets/img/brk.jfif",
            image: imgUrl,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Text(
                  newsHead.length > 90
                      ? "${newsHead.substring(0, 90)}..."
                      : newsHead,
                  style: const TextStyle(
                      fontSize: 23, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                Text(
                  newsDes,
                  style: const TextStyle(fontSize: 14, color: Colors.black38),
                ),
                const SizedBox(height: 30),
                Text(
                  newsCnt != "--"
                      ? newsCnt.length > 280
                          ? newsCnt.substring(0, 280)
                          : "${newsCnt.toString().substring(0, newsCnt.length - 15)}..."
                      : newsCnt,
                  style: const TextStyle(fontSize: 19),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailViewScreen(newsUrl: newsUrl),
                      ),
                    );
                  },
                  child: const Text("Read More"),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
