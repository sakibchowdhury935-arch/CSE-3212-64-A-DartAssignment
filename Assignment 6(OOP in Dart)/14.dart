import 'dart:io';

class Notification {
  String displayNotification() {
    return "General Notification";
  }
}

class EmailNotification extends Notification {
  @override
  String displayNotification() {
    return "You have received an email Notification";
  }
}

class SMSNotification extends Notification {
  @override
  String displayNotification() {
    return "You have received an SMS Notification";
  }
}

void main() {
  stdout.write("Enter notification type (email/sms): ");
  String type = stdin.readLineSync()!.toLowerCase();

  Notification notification;

  if (type == "email") {
    notification = EmailNotification();
  } else if (type == "sms") {
    notification = SMSNotification();
  } else {
    print("Invalid notification type.");
    return;
  }

  print(notification.displayNotification());
}

