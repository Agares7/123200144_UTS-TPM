import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  DateTime _selectedDate = DateTime.now();
  int state = 0;

  StreamController<int> _streamController1 = StreamController<int>();
  StreamController<int> _streamController2 = StreamController<int>();
  StreamController<int> _streamController3 = StreamController<int>();

  void _selectDate(BuildContext context) async {
    final DateTime? newDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now().subtract(Duration(days: 365)),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );

    if (newDate != null) {
      setState(() {
        _selectedDate = newDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Calendar dan Digital Clock',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Sans-Serif',
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                DateFormat('EEEE, MMMM d, yyyy').format(_selectedDate),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _selectDate(context),
                child: Text('Select Date'),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        state = 1;
                      });
                      _streamController1.add(1);
                    },
                    child: Text('WIB'),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        state = 2;
                      });
                      _streamController2.add(2);
                    },
                    child: Text('WITA'),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        state = 3;
                      });
                      _streamController3.add(3);
                    },
                    child: Text('WIT'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              StreamBuilder<int>(
                stream: _streamController1.stream,
                builder: (context, snapshot) {
                  if (state == 1) {
                    return StreamBuilder<int>(
                      stream: Stream.periodic(
                          const Duration(seconds: 1), (int count) => count),
                      builder: (context, snapshot) {
                        return Text(
                          DateFormat('WIB : HH:mm:ss').format(DateTime.now()),
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      },
                    );
                  } else {
                    return Container();
                  }
                },
              ),
              StreamBuilder<int>(
                stream: _streamController2.stream,
                builder: (context, snapshot) {
                  if (state == 2) {
                    return StreamBuilder<int>(
                      stream: Stream.periodic(
                          const Duration(seconds: 1), (int count) => count),
                      builder: (context, snapshot) {
                        return Text(
                          DateFormat('WITA : HH:mm:ss').format(
                              DateTime.now().add(const Duration(hours: 1))),
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      },
                    );
                  } else {
                    return Container();
                  }
                },
              ),
              StreamBuilder<int>(
                stream: _streamController3.stream,
                builder: (context, snapshot) {
                  if (state == 3) {
                    return StreamBuilder<int>(
                      stream: Stream.periodic(
                          const Duration(seconds: 1), (int count) => count),
                      builder: (context, snapshot) {
                        return Text(
                          DateFormat('WIT : HH:mm:ss').format(
                              DateTime.now().add(const Duration(hours: 2))),
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      },
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ],
          ),
        ));
  }

  void dispose() {
    super.dispose();
  }
}
