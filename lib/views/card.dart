import 'package:flutter/material.dart';

import '../models/post.dart';

class ClickCard extends StatelessWidget {
  final Post ? posts;

  const ClickCard({
    Key? key,
     this.posts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:Colors.black45,
        title: Text(
          posts!.user!.name,
        ),
      ),
      body: Image(image: NetworkImage(posts!.urls!.regular),),

    );
  }
}