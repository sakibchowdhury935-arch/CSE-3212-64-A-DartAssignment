import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print("1. Add Task");
    print("2. Remove Task");
    print("3. View Tasks");
    print("4. Exit");

    print("Enter your choice:");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("Enter task:");
        String task = stdin.readLineSync()!;
        tasks.add(task);
        print("Task Added!");
        break;

      case 2:
        print("Enter task to remove:");
        String task = stdin.readLineSync()!;
        tasks.remove(task);
        print("Task Removed!");
        break;

      case 3:
        print("\nYour Tasks:");
        if (tasks.isEmpty) {
          print("No tasks available.");
        } else {
          for (int i = 0; i < tasks.length; i++) {
            print("${i + 1}. ${tasks[i]}");
          }
        }
        break;

      case 4:
        print("Exiting...");
        return;

      default:
        print("Invalid Choice!");
    }
  }
}