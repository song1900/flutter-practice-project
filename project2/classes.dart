class Player {
  String name = 'manbo';
  final String name2 = "manbo2"; // final variable, property는 수정할 수 없음
  int xp = 1500;

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var player = Player();
  print(player.name); // manbo
  player.sayHello(); // Hi my name is manbo
  player.name = 'zaya';
  print(player.name); // zaya
  player.sayHello(); // Hi my name is manbo
  
  // player.manbo2 = "zaya2" 
}