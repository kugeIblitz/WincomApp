// ignore_for_file: file_names, avoid_function_literals_in_foreach_calls

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final blogClass eve;

  const TaskTile({
    Key? key,
    required this.eve,
  }) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  Future setFavorite() async {
    FirebaseFirestore.instance
        .collection("blog")
        .doc(widget.eve.id)
        .update({'isFavorite': !widget.eve.isFavorite});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        width: MediaQuery.of(context).size.width * 0.6,
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    setFavorite();
                  },
                  child: widget.eve.isFavorite == true
                      ? const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : const Icon(Icons.favorite_border),
                ),
                const SizedBox(
                  width: 20,
                )
              ],
            ),
            Container(
              constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.6,
                  maxWidth: MediaQuery.of(context).size.width * 0.6),
              child: CachedNetworkImage(
        imageUrl: widget.eve.link,
        progressIndicatorBuilder: (context, url, downloadProgress) => 
                CircularProgressIndicator(value: downloadProgress.progress),
        errorWidget: (context, url, error) => Icon(Icons.error),
     ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ));
  }
}

class blogClass {
  final String link;
  final bool isFavorite;
  final String id;
  blogClass(this.link, this.isFavorite, this.id);
}
