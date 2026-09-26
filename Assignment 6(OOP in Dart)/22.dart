mixin LoggerMixin {
  void logMessage(String msg) {
    print("LOG: $msg");
  }
}

class User with LoggerMixin {}

class Product with LoggerMixin {}

void main() {
  User user = User();
  Product product = Product();

  user.logMessage("User created");
  product.logMessage("Product added");
}