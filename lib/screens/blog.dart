import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:wincomfunctions/screens/tasktile.dart';

import '../utils/color_utils.dart';

class blog extends StatefulWidget {
  const blog({Key? key}) : super(key: key);

  @override
  State<blog> createState() => _blogState();
}

class _blogState extends State<blog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection("blog").snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.lightBlueAccent,
              ),
            );
          }

          final Links = snapshot.data?.docs;
          return ListView.builder(
              itemCount: Links!.length,
              itemBuilder: (context, index) {
                blogClass VAR = blogClass(Links[index]["link"],
                    Links[index]['isFavorite'], Links[index].id);
                return TaskTile(eve: VAR);
              });
        },
      ),
    );
  }
}
