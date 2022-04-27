import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flw_app/login/auth_provider.dart';
import 'package:flw_app/pages/create_trip_page.dart';
import 'package:flw_app/profile/domain/bloc/profile_bloc.dart';
import 'package:flw_app/profile/domain/model/profile_model.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
  }

  Widget _buildProfileForm(ProfileModel model) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 100.0,
                  backgroundImage: Image.network(
                    model.photoUrl,
                    width: 200,
                    height: 200,
                  ).image,
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextButton(
                  onPressed: () {
                    launch('https://vk.com/id${model.vkId}');
                  },
                  child: Text(
                    model.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 40.0),
          child: RawMaterialButton(
            onPressed: () {
              showCupertinoModalBottomSheet(
                topRadius: const Radius.circular(25.0),
                expand: true,
                context: context,
                backgroundColor: Colors.transparent,
                builder: (context) => const CreateTripPage(),
              );
            },
            child: Container(
              height: 54.0,
              decoration: BoxDecoration(
                // border: Border.all(
                //   color: Color(0xff521707),
                // ),
                // color: Color(0xffe69528),
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: const Center(
                child: Text(
                  'Создать поездку',
                  style: TextStyle(
                    // color: Color(0xff521707),
                    color: Color(0xff521707),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoScaffold(
        transitionBackgroundColor: Colors.white,
        body: BlocProvider(
          create: (context) => ProfileBloc()..add(const ReadProfileEvent()),
          child: BlocBuilder<ProfileBloc, ProfileState>(
              builder: ((context, state) {
            return CupertinoScaffold(
              transitionBackgroundColor: Color(0xffe69528),
              body: Container(
                child: Column(
                  children: [
                    Container(
                      color: Color(0xffe69528),
                      height: 100.0,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50.0, left: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GradientText(
                              (state is LoadedProfileState)
                                  ? state.result.name
                                  : '',
                              style: const TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.w600,
                              ),
                              colors: const [
                                Color(0xff521707),
                                Color(0xff17542b),
                              ],
                            ),
                            TextButton(
                              onPressed: () {
                                context.read<AuthProvider>().logout();
                              },
                              child: Text(
                                'Выйти',
                                style: const TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff521707),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: state is LoadedProfileState
                            ? _buildProfileForm(state.result)
                            : const Center(
                                child: CircularProgressIndicator(),
                              ))
                  ],
                ),
              ),
            );
          })),
        ),
      ),
    );
    // return Container(
    //   child: Center(
    //     child: Column(
    //       children: [
    //         Text('ProfilePage'),
    //         TextButton(
    //           onPressed: () {
    //             context.read<AuthProvider>().logout();
    //           },
    //           child: Text('logout'),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
