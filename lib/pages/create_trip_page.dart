import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flw_app/core/widgets/selected_route_widget.dart';
import 'package:number_selection/number_selection.dart';

import '../app/utils/text_util.dart';

class CreateTripPage extends StatefulWidget {
  const CreateTripPage({Key? key}) : super(key: key);

  @override
  State<CreateTripPage> createState() => _CreateTripPageState();
}

class _CreateTripPageState extends State<CreateTripPage> {
  DateTime _selectedValue = DateTime.now();
  String route = 'Земетчино-Пенза';
  int count = 1;

  showAlertDialog(BuildContext context) {
    Widget okButton = TextButton(
      child: Text(
        "Выбрать",
        style: TextStyle(color: Colors.black),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    AlertDialog alert = AlertDialog(
      content: Container(
        width: 500.0,
        height: 100.0,
        child: DatePicker(
          DateTime.now(),
          initialSelectedDate: DateTime.now(),
          locale: 'RU',
          selectionColor: Colors.black,
          selectedTextColor: Colors.white,
          onDateChange: (date) {
            // New date selected
            setState(() {
              _selectedValue = date;
            });
          },
        ),
      ),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  selectCount(BuildContext context) {
    Widget okButton = TextButton(
      child: Text(
        "Выбрать",
        style: TextStyle(color: Colors.black),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    AlertDialog alert = AlertDialog(
      content: Container(
          width: 500.0,
          height: 100.0,
          child: NumberSelection(
            theme: NumberSelectionTheme(
                draggableCircleColor: Color(0xff17542b),
                iconsColor: Colors.white,
                numberColor: Colors.white,
                backgroundColor: Color(0xffe69528),
                outOfConstraintsColor: Colors.deepOrange),
            initialValue: count,
            minValue: 1,
            maxValue: 9,
            direction: Axis.horizontal,
            withSpring: true,
            onChanged: (int value) => setState(() => count = value),
            enableOnOutOfConstraintsAnimation: true,
            onOutOfConstraints: () =>
                print("This value is too high or too low"),
          )
          // child: NumberPicker(
          //   axis: Axis.horizontal,
          //   selectedTextStyle: TextStyle(
          //     color: Color(0xffe69528),
          //     fontSize: 20.0,
          //     fontWeight: FontWeight.bold,
          //   ),
          //   textStyle: TextStyle(
          //     color: Colors.black,
          //     fontSize: 20.0,
          //     fontWeight: FontWeight.bold,
          //   ),
          //   value: count,
          //   minValue: 0,
          //   maxValue: 9,
          //   onChanged: (value) => setState(() => count = value),
          // ),
          ),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  selectRoute(BuildContext context) {
    Widget okButton = TextButton(
      child: Text(
        "Выбрать",
        style: TextStyle(color: Colors.black),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    AlertDialog alert = AlertDialog(
      content: Container(
        width: 500.0,
        height: 240.0,
        child: SelectedRouteWidget(
          onSelect: (r) {
            setState(() {
              route = r;
            });
          },
        ),
      ),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Дата поездки:'),
                GestureDetector(
                  onTap: () {
                    showAlertDialog(context);
                  },
                  child: Text(
                    dateTimeFormatText.format(_selectedValue),
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Маршрут:'),
                GestureDetector(
                  onTap: () {
                    selectRoute(context);
                  },
                  child: Text(
                    route,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Количество мест:'),
                GestureDetector(
                  onTap: () {
                    selectCount(context);
                  },
                  child: Text(
                    count.toString(),
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
