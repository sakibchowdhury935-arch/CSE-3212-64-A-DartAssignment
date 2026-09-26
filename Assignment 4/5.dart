void main() {
  List<String> friends = [
    "Habib",
    "Ratul",
    "Hasan",
    "Ayon",
    "Shorif",
    "Fardin",
    "Fahim"
  ];

  var nameA =
      friends.where((name) => name.toLowerCase().startsWith('a'));

  print("Names starting with a:");
  nameA.forEach(print);
}