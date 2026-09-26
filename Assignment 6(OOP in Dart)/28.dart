import 'dart:io';

class Guest {
  String name;

  Guest(this.name);
}

class Room {
  int roomNumber;

  Room(this.roomNumber);
}

class Reservation {
  Guest guest;
  Room room;

  Reservation(this.guest, this.room);

  void display() {
    print("Guest: ${guest.name}");
    print("Room Number: ${room.roomNumber}");
  }
}

void main() {
  stdout.write("Enter guest name: ");
  String guestName = stdin.readLineSync()!;

  stdout.write("Enter room number: ");
  int roomNo = int.parse(stdin.readLineSync()!);

  Reservation reservation =
      Reservation(Guest(guestName), Room(roomNo));

  reservation.display();
}