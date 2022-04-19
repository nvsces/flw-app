// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin localNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

void showLocalNotification(
  String? title,
  String? body,
) async {
  final androidPlatformChannelSpecifics = AndroidNotificationDetails(
    'notify_channel',
    'push',
  );

  final iosPlatformSpecifics = IOSNotificationDetails();

  final platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics, iOS: iosPlatformSpecifics);

  await localNotificationsPlugin.show(0, title, body, platformChannelSpecifics);
}

class FireBaseNotificationWidget extends StatefulWidget {
  final Widget _child;
  final GlobalKey _globalKey;

  const FireBaseNotificationWidget(
      {required Widget child, required GlobalKey globalKey, Key? key})
      : _child = child,
        _globalKey = globalKey,
        super(key: key);

  @override
  _FireBaseNotificationWidgetState createState() =>
      _FireBaseNotificationWidgetState(child: _child, globalKey: _globalKey);
}

class _FireBaseNotificationWidgetState
    extends State<FireBaseNotificationWidget> {
  final Widget _child;

  _FireBaseNotificationWidgetState(
      {required Widget child, required GlobalKey globalKey})
      : _child = child;

  // late FirebaseMessaging _messaging;

  @override
  void initState() {
    super.initState();
    // Firebase.initializeApp().then((value) {
    //   _messaging = FirebaseMessaging.instance;

    //   FirebaseMessaging.instance.getInitialMessage().then((initialMessage) {
    //     firebaseCloudMessagingListener();

    //     //Локальные уведомления
    //     // final androidInitSettings =
    //     //     AndroidInitializationSettings('background.png');
    //     // final iosInitSettings = IOSInitializationSettings();

    //     // final initSettings = InitializationSettings(
    //     //     android: androidInitSettings, iOS: iosInitSettings);
    //     // localNotificationsPlugin.initialize(
    //     //   initSettings,
    //     // );
    //   });
    // });
  }

  Future<void> firebaseCloudMessagingListener() async {
    // await _messaging.requestPermission(
    //   alert: true,
    //   announcement: false,
    //   badge: true,
    //   carPlay: false,
    //   criticalAlert: false,
    //   provisional: false,
    //   sound: true,
    // );

    //Когда приложение открыто
    // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    //   print(message);
    //   if (message.notification != null) {
    //     showLocalNotification(
    //         message.notification!.title, message.notification!.body);
    //   }
    // });

    // //Когда нажимаешь на уведомление, которое пришло в фоне
    // FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    //   print(message);
    //   if (message.notification != null) {
    //     showLocalNotification(
    //         message.notification!.title, message.notification!.body);
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return _child;
  }
}
