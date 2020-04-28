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
      body: RefreshIndicator(
        onRefresh: fetchQuestions,
        child: FutureBuilder(
          future: fetchQuestions(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Container(
                child: getQuestionsList(),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }

  ListView getQuestionsList() {
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ExpansionTile(
            title: ListTile(
              title: Text(
                results[index].question,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(results[index].category),
            ),
            children: results[index].allAnswers.map((option) {
              return AnswerWidget(results, index, option);
            }).toList(),
          ),
        );
      },
    ); //ListView.build
  }
} //State class end

class AnswerWidget extends StatefulWidget {
  final List<Results> results;
  final int index;
  final String option;
  AnswerWidget(this.results, this.index, this.option);
  @override
  _AnswerWidgetState createState() => _AnswerWidgetState();
}

class _AnswerWidgetState extends State<AnswerWidget> {
  Color tick;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        setState(() {
          if (widget.option == widget.results[widget.index].correctAnswer) {
            tick = Colors.green;
          } else {
            tick = Colors.red;
          }
        });
      },
      title: Text(
        widget.option,
        textAlign: TextAlign.center,
        style: TextStyle(color: tick),
      ),
    );
  }
}
