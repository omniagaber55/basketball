import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int teamA = 0;

  int teamB = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text("Points Counter"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$teamA",
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                        ),
                        onPressed: () {
                          teamA++;
                          setState(() {});
                        },
                        child: Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          color: Colors.orange,
                          child: const Text(
                            "Add 1 Point",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                        ),
                         onPressed: () {
                          setState(() {
                             teamA=teamA+2;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          color: Colors.orange,
                          child: const Text(
                            "Add 2 Point",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                             teamA=teamA+3;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          color: Colors.orange,
                          child: const Text(
                            "Add 3 Point",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 50,
                    endIndent: 50,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$teamB",
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            teamB++;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 150,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          color: Colors.orange,
                          child: const Text(
                            "Add 1 Point",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            teamB = teamB + 2;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          color: Colors.orange,
                          child: const Text(
                            "Add 2 Point",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            teamB = teamB + 3;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          color: Colors.orange,
                          child: const Text(
                            "Add 3 Point",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
              ),
              onPressed: () {
                setState(() {
                  teamA = 0;
                  teamB = 0;
                });
              },
              child: Container(
                height: 50,
                width: 150,
                padding: const EdgeInsets.symmetric(vertical: 10),
                color: Colors.orange,
                child: const Text(
                  "Reset",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
