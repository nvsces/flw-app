import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectedRouteWidget extends StatefulWidget {
  SelectedRouteWidget({Key? key, required this.onSelect}) : super(key: key);
  Function(String) onSelect;

  @override
  State<SelectedRouteWidget> createState() => _SelectedRouteWidgetState();
}

class _SelectedRouteWidgetState extends State<SelectedRouteWidget> {
  int _radioValue = 0;
  List<String> routs = [
    'Земетчино-Пенза',
    'Пенза-Земетчино',
    'Земетчино-Москва',
    'Москва-Земетчино'
  ];

  @override
  Widget build(BuildContext context) {
    final textStyle = GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
      color: Colors.black,
    );
    return Theme(
      data: Theme.of(context).copyWith(
          unselectedWidgetColor: const Color(0xffcccccc),
          disabledColor: Colors.blue),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            routs.length,
            (index) => Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: const Color(0xffE3E3E3),
                  width: 1.0,
                ),
              ),
              child: Row(children: [
                Radio<int>(
                  activeColor: const Color(0xff17542b),
                  value: index,
                  groupValue: _radioValue,
                  onChanged: (v) {
                    setState(() {
                      _radioValue = v ?? 0;
                      widget.onSelect.call(routs[index]);
                    });
                  },
                ),
                Text(
                  routs[index],
                  style: textStyle,
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
