void main() {
  Map<String, dynamic> person = {
    "name": "Sakib",
    "address": "Sylhet",
    "age": 21,
    "country": "Bangladesh"
  };

  person["country"] = "Norway";

  print("Keys:");
  person.keys.forEach(print);

  print("\nValues:");
  person.values.forEach(print);
}