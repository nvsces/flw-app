import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flw_app/home/domain/bloc/home_bloc.dart';
import 'package:flw_app/home/domain/models/trip.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class TripPage extends StatelessWidget {
  const TripPage({Key? key}) : super(key: key);

  Widget _buildItemCard(Trip trip) {
    final labelStyle = GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      fontSize: 14.0,
      color: const Color(0xff979797),
    );
    final textStyle = GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      fontSize: 14.0,
      color: Colors.black,
    );
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16.0)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Дата поездки:', style: labelStyle),
                  Text(trip.date, style: textStyle),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Маршрут:', style: labelStyle),
                  Text(trip.route, style: textStyle),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Количество мест:', style: labelStyle),
                  Text(trip.count, style: textStyle),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Тип:', style: labelStyle),
                  Text(trip.type, style: textStyle),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Автор:', style: labelStyle),
                  GestureDetector(
                      onTap: () {
                        launch('https://vk.com/id${trip.author.userVkId}');
                      },
                      child: Text(trip.author.name,
                          style: textStyle.copyWith(
                            decoration: TextDecoration.underline,
                          ))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfff6d7ae),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: ((context, state) {
          if (state is LoadedHomeState) {
            return ListView.builder(
                itemCount: state.result.length,
                itemBuilder: (context, index) =>
                    _buildItemCard(state.result[index]));
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        }),
      ),
    );
  }
}
