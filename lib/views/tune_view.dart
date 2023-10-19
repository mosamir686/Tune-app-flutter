import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tuneapp/model/tuneModel.dart';
import 'package:tuneapp/widgets/items.dart';

class Tuneview extends StatelessWidget {
  const Tuneview({super.key});
  final List<TuneModel> tunecolors = const [
    TuneModel(color: Colors.red, sound: 'note1.wav'),
    TuneModel(color: Colors.deepOrange, sound: 'note2.wav'),
    TuneModel(color: Colors.purple, sound: 'note3.wav'),
    TuneModel(color: Colors.pinkAccent, sound: 'note4.wav'),
    TuneModel(color: Colors.brown, sound: 'note5.wav'),
    TuneModel(color: Colors.greenAccent, sound: 'note6.wav'),
    TuneModel(color: Colors.deepPurpleAccent, sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xff253238),
          title: Text('Flutter Tune'),
        ),
        body: Column(
          children: tunecolors
              .map(
                (e) => Tuneitems(tune: e),
              )
              .toList(),
        ));
  }

  // List<Tuneitems> getTuneItem() {
  //   List<Tuneitems> items = [];
  //   for (var color in tunecolors) {
  //     items.add(Tuneitems(color: color));
  //   }
  //   return items;
  // }
}
