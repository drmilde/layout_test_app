import 'package:flutter/material.dart';

class MusikScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = 190;
    double h = 165;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 198, 42, 42),
        title: Text("Home"),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _reihe(
              kachel(w, h, "Intervals"),
              kachel(w, h, "Chord"),
            ),
            _reihe(
              kachel(w, h, "Intervals"),
              kachel(w, h, "Chord"),
            ),
            _reihe(
              kachel(w, h, "Intervals"),
              kachel(w, h, "Chord"),
            ),
            _reihe(
              kachel(w, h, "Intervals"),
              kachel(w, h, "Chord"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _reihe(Widget e1, Widget e2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        e1,
        e2,
      ],
    );
  }

  Widget kachel(double w, double h, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Container(
        color: Color.fromARGB(255, 239, 84, 81),
        width: w,
        height: h,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.ac_unit_outlined,
                color: Colors.white,
                size: 48,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
