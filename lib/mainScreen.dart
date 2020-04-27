import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flagquiz/model/quiz.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final String url =
      'https://opentdb.com/api.php?amount=10&difficulty=easy&type=multiple';
  QUIZ quiz;
  List<Results> results;
  @override
  Widget build(BuildContext context) {
    Future<void> fetchQuestions() async {
      var response = await http.get(url);
      var jsonData = json.decode(response.body);
      quiz = QUIZ.fromJson(jsonData);
      results = quiz.results;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TRIVIA',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
      ),
      body: FutureBuilder(
        future: fetchQuestions(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {},
      ),
    );
  }
}
