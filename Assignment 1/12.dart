void main() {
  double distance = 25; // km
  double speed = 40;    // km/h

  double timeHours = distance / speed;
  double timeMinutes = timeHours * 60;

  print("Time taken = $timeMinutes minutes");
}