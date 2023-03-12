import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:wincomfunctions/screens/tasktile.dart';

import '../utils/color_utils.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.transparent,
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
                if (VAR.isFavorite == true) {
                  return TaskTile(eve: VAR);
                } else {
                  return Container();
                }
              });
        },
      ),
    );
  }
}
