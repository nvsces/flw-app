import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flw_app/login/auth_provider.dart';
import 'package:flw_app/profile/domain/bloc/profile_bloc.dart';
import 'package:flw_app/profile/domain/model/profile_model.dart';
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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          Text(
            model.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          TextButton(
            onPressed: () {
              launch('https://vk.com/id${model.vkId}');
            },
            child: Text('Перейти ВК'),
          ),
          TextButton(
            onPressed: () {
              context.read<AuthProvider>().logout();
            },
            child: Text('Выйти'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc()..add(const ReadProfileEvent()),
      child: BlocBuilder<ProfileBloc, ProfileState>(builder: ((context, state) {
        if (state is LoadedProfileState) {
          return _buildProfileForm(state.result);
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      })),
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
