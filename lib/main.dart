import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

void main() => runApp(SwipeSelection());

class SwipeSelection extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SwipeSelectionPicker(),
    );
  }
}

class SwipeSelectionPicker extends StatefulWidget {
  @override
  SwipeSelectionPickerState createState() => SwipeSelectionPickerState();
}

class SwipeSelectionPickerState extends State<SwipeSelectionPicker> {
  bool _swipeSelection = true;
  String _buttonText = 'Disable swipe selection';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70),
            child: MaterialButton(
              child: Text(_buttonText),
              onPressed: () {
                setState(() {
                  if (_buttonText == 'Disable swipe selection') {
                    _buttonText = 'Enable swipe selection';
                    _swipeSelection = false;
                  } else {
                    _buttonText = 'Disable swipe selection';
                    _swipeSelection = true;
                  }
                });
              },
            ),
          ),
          Card(
            margin: const EdgeInsets.fromLTRB(40, 80, 40, 100),
            child: SfDateRangePicker(
              view: DateRangePickerView.month,
              selectionMode: DateRangePickerSelectionMode.range,
              monthViewSettings: DateRangePickerMonthViewSettings(
                  enableSwipeSelection: _swipeSelection),
            ),
          ),
        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
