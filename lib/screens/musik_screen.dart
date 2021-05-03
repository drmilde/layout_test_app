import 'package:flutter/material.dart';

class MusikScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 198, 42, 42),
        title: Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                kachel(180,180, "Intervals"),
                kachel(180,180, "Chord"),
              ],
            ),
            Row(
              children: [
                kachel(180,180, "Note Values"),
                kachel(180,180, "Rests"),
              ],
            ),
            Row(
              children: [
                kachel(180,180, "Circle of Fifth"),
                kachel(180,180, "Scales"),
              ],
            ),
            Row(
              children: [
                kachel(180,180, "Intervals"),
                kachel(180,180, "Chord"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget kachel(double w, double h, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
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
