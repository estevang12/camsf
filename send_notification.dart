import 'package:firebase_messaging/firebase_messaging.dart';

void sendContextNotification(String title, String body) {
  FirebaseMessaging.instance.subscribeToTopic("context-updates");
  FirebaseMessaging.instance.sendMessage(
    to: "/topics/context-updates",
    data: {
      "title": title,
      "body": body,
    },
  );
}
