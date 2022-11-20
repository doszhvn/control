import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:like_button/like_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key}); 
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numberOfLikes = 120;

  final news = [
    "Разработка мобильных приложении",
    "Разработка корпоративных приложении",
    "Мультимедииные технологии",
    "Управление IT проектами",
    "Информационная безопасность",

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(news[0]),
                  LikeButton(
                    size: 50,
                    likeCount: numberOfLikes,
                    countPostion: CountPostion.bottom,
                  ),
                  
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(news[1]),
                  LikeButton(
                    size: 50,
                    likeCount:15 ,
                    countPostion: CountPostion.bottom,
                  ),
                  
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(news[2]),
                  LikeButton(
                    size: 50,
                    likeCount:  34,
                    countPostion: CountPostion.bottom,
                  ),
                  
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(news[3]),
                  LikeButton(
                    size: 50,
                    likeCount: 80,
                    countPostion: CountPostion.bottom,
                  ),
                  
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(news[4]),
                  LikeButton(
                    size: 50,
                    likeCount: 135,
                    countPostion: CountPostion.bottom,
                  ),
                  
                ],
              )
          ]
        )
      )
    );
  }
}