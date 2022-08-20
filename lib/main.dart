// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'TwitterUI by flutter',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
              ],
            ),
          )),
    );
  }
}

class TweetTile extends StatelessWidget {
  const TweetTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('http://source.unsplash.com/random'),
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Yutabee@GsACADEMY'),
                  SizedBox(
                    width: 8,
                  ),
                  Text('2022/8/20'),
                ],
              ),
              SizedBox(height: 4),
              Text('Flutter始めました'),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
            ],
          ),
        ],
      ),
    );
  }
}
