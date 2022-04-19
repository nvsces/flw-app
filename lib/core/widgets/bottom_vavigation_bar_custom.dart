import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';

import '../../app/theme/app_theme_provider_widget.dart';

class BottomNavigationBarItemCustom {
  final HeroIcons icon;
  final String label;
  BottomNavigationBarItemCustom({
    required this.icon,
    required this.label,
  });
}

class BottomNavigationBarCustom extends StatefulWidget {
  BottomNavigationBarCustom(
      {required this.currentIndex,
      required this.items,
      required this.onTap,
      Key? key})
      : super(key: key);

  int currentIndex;
  final List<BottomNavigationBarItemCustom> items;
  final Function(int index) onTap;

  @override
  State<BottomNavigationBarCustom> createState() =>
      _BottomNavigationBarCustomState();
}

class _BottomNavigationBarCustomState extends State<BottomNavigationBarCustom> {
  @override
  Widget build(BuildContext context) {
    final activeColor = AppThemeProvider.of(context).theme.colorTheme.accent;
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
              top: BorderSide(
            color: Color(0xffC9C9C9),
          ))),
      height: 80.0,
      child: Padding(
        padding: const EdgeInsets.only(top: 14.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            widget.items.length,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  widget.currentIndex = index;
                });
                widget.onTap.call(index);
              },
              child: Column(
                children: [
                  HeroIcon(
                    widget.items[index].icon,
                    solid: true,
                    color: widget.currentIndex == index
                        ? activeColor
                        : Colors.black,
                  ),
                  Text(
                    widget.items[index].label,
                    style: GoogleFonts.inter(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                      color: widget.currentIndex == index
                          ? activeColor
                          : Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
