class TheBest {
  var eyad;
  void sayHello() {
    print("THIS is $eyad");
  }
}

void main() {
  var human = TheBest();
  human.eyad = 'very good';
  human.sayHello();
}
