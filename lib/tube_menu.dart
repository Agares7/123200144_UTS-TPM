import 'package:flutter/material.dart';

class tubeMenu extends StatefulWidget {
  const tubeMenu({Key? key}) : super(key: key);

  @override
  _tubeMenuState createState() => _tubeMenuState();
}

class _tubeMenuState extends State<tubeMenu> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  double _keliling = 0.0;
  double _luas = 0.0;

  kelilingLayang() {
    setState(() {
      double r = double.parse(controller1.text);
      double t = double.parse(controller2.text);

      _keliling = 2 * (22.0 / 7.0) * r * (r + t);
    });
  }

  luasLayang() {
    setState(() {
      double r = double.parse(controller1.text);
      double t = double.parse(controller2.text);

      _luas = (22.0 / 7.0) * t * r * r;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: const Text(
          'Luas & Volume Tabung',
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Sans-Serif',
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset("assets/images/tabung.jpg"),
            ),
            Text(
              "Hasil Luas : $_keliling & Volume : $_luas",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller1,
              decoration: InputDecoration(
                  labelText: "Jari-jari",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller2,
              decoration: InputDecoration(
                  labelText: "Tinggi",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
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
                          kelilingLayang();
                          luasLayang();
                          controller1.clear();
                          controller2.clear();
                        },
                        child: Text('Hitung'))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
