import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flw_app/core/widgets/selected_route_widget.dart';
import 'package:flw_app/core/widgets/selected_type_widget.dart';
import 'package:flw_app/profile/data/profile_repository_api.dart';
import 'package:flw_app/profile/domain/model/trip_model.dart';
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
  String type = 'Водитель';

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
      child: const Text(
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

  void selectType(BuildContext context) {
    Widget okButton = TextButton(
      child: const Text(
        "Выбрать",
        style: TextStyle(color: Colors.black),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    AlertDialog alert = AlertDialog(
      content: SizedBox(
        width: 500.0,
        height: 120.0,
        child: SelectedTypeWidget(
          onSelect: (r) {
            setState(() {
              type = r;
            });
          },
        ),
      ),
      actions: [
        okButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  void selectRoute(BuildContext context) {
    Widget okButton = TextButton(
      child: const Text(
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
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Дата поездки:'),
                GestureDetector(
                  onTap: () {
                    showAlertDialog(context);
                  },
                  child: Text(
                    dateTimeFormatText.format(_selectedValue),
                    style: const TextStyle(
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
                const Text('Маршрут:'),
                GestureDetector(
                  onTap: () {
                    selectRoute(context);
                  },
                  child: Text(
                    route,
                    style: const TextStyle(
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
                const Text('Количество мест:'),
                GestureDetector(
                  onTap: () {
                    selectCount(context);
                  },
                  child: Text(
                    count.toString(),
                    style: const TextStyle(
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
                const Text('Тип:'),
                GestureDetector(
                  onTap: () {
                    selectType(context);
                  },
                  child: Text(
                    type,
                    style: const TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            Padding(
              padding:
                  const EdgeInsets.only(left: 0.0, right: 0.0, bottom: 40.0),
              child: RawMaterialButton(
                onPressed: () {
                  final repo = ProfileRepositoryApi();
                  final trip = TripModel(
                    date: _selectedValue.toString(),
                    route: route,
                    count: count.toString(),
                    type: type,
                  );
                  repo.createTrip(trip);
                  Navigator.pop(context);
                },
                child: Container(
                  height: 54.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff521707),
                    ),
                    color: Color(0xffe69528),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: const Center(
                    child: Text(
                      'Создать поездку',
                      style: TextStyle(
                        color: Colors.black,
                        // color: Color(0xff521707),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
