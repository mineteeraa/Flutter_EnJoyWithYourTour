import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class RatingList extends StatefulWidget {
  const RatingList({Key? key}) : super(key: key);

  @override
  _RatingListState createState() => _RatingListState();
}

class _RatingListState extends State<RatingList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("rating").snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView(
              children: snapshot.data!.docs.map((rating) {
                return Container(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: FittedBox(
                        child: Text(rating["country"]),
                      ),
                    ),
                    title: Text(
                      "Rating for: " + rating["country"],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "Score rating: " + rating["rating"] +" Comment: "+ rating["comment"],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    // subtitle: Text(rating["comment"]),
                  ),
                );
              }).toList(),
            );
          }
        },
      ),
    );
  }
}
