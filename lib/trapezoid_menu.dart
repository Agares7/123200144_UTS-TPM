import 'package:flutter/material.dart';

class trapezoidMenu extends StatefulWidget {
  const trapezoidMenu({Key? key}) : super(key: key);

  @override
  _trapezoidMenuState createState() => _trapezoidMenuState();
}

class _trapezoidMenuState extends State<trapezoidMenu> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();

  double result = 0;
  double _keliling = 0.0;
  double _luas = 0.0;

  kelilingTrapesium() {
    setState(() {
      double a = double.parse(controller1.text);
      double b = double.parse(controller2.text);
      double c = double.parse(controller3.text);
      double d = double.parse(controller4.text);

      _keliling = a + b + c + d;
      result = _keliling;
    });
  }

  luasSegitiga() {
    setState(() {
      double a = double.parse(controller1.text);
      double b = double.parse(controller2.text);
      double c = double.parse(controller3.text);

      _luas = 0.5 * c * (a + b);
      result = _luas;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: true,
          title: const Text(
            'Keliling & Luas Trapesium',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Sans-Serif',
                fontWeight: FontWeight.bold),
          ),
          bottom: const TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: "Keliling",
              ),
              Tab(
                text: "Luas",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.asset("assets/images/trapesium.png"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    width: 400,
                    child: TextField(
                      controller: controller1,
                      decoration: InputDecoration(
                          labelText: "Sisi A",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    width: 400,
                    child: TextField(
                      controller: controller2,
                      decoration: InputDecoration(
                          labelText: "Sisi B",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    width: 400,
                    child: TextField(
                      controller: controller3,
                      decoration: InputDecoration(
                          labelText: "Sisi C",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    width: 400,
                    child: TextField(
                      controller: controller4,
                      decoration: InputDecoration(
                          labelText: "Sisi D",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          height: 50,
                          width: 200,
                          child: ElevatedButton(
                              onPressed: () {
                                kelilingTrapesium();
                                controller1.clear();
                                controller2.clear();
                                controller3.clear();
                                controller4.clear();
                              },
                              child: Text('Keliling'))),
                    ],
                  ),
                  Row(
                    children: const [SizedBox(height: 40)],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Hasil : $result",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.asset("assets/images/trapesium.png"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: 400,
                    child: TextField(
                      controller: controller1,
                      decoration: InputDecoration(
                          labelText: "Sisi a",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: 400,
                    child: TextField(
                      controller: controller2,
                      decoration: InputDecoration(
                          labelText: "Sisi b",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: 400,
                    child: TextField(
                      controller: controller3,
                      decoration: InputDecoration(
                          labelText: "Sisi Tinggi (t)",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 200,
                        child: ElevatedButton(
                            onPressed: () {
                              luasSegitiga();
                              controller1.clear();
                              controller2.clear();
                              controller3.clear();
                            },
                            child: Text('Luas')),
                      ),
                    ],
                  ),
                  Row(
                    children: const [SizedBox(height: 40)],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Hasil : $result",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
