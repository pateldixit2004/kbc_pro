import 'dart:js';

import 'package:flutter/material.dart';
import 'package:kbc_pro/game/first_scren.dart';
import 'package:kbc_pro/game/questions.dart';
import 'package:kbc_pro/game/true_screen.dart';
import 'package:kbc_pro/game/wrong_screen.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=> First(),
        'start':(context)=> Home(),

        'tr':(context)=> True(),
        'wr':(context)=> Wrong(),
      },
    ),
  );
}