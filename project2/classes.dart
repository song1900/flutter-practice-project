class Player {
  // String name = 'manbo';
  // final String name2 = "manbo2"; // final variable, property는 수정할 수 없음
  // int xp = 1500;

// late는 변수들의 값을 나중에 받아올거라는걸 의미
  final String name;
  int xp;

// 초기화 방법 1
  // Player(String name, int xp) {
  //   this.name = name;
  //   this.xp = xp;
  // }
// 초기화 방법 2
  Player(this.name, this.xp);

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  // var player = Player();
  // print(player.name); // manbo
  // player.sayHello(); // Hi my name is manbo
  // player.name = 'zaya';
  // print(player.name); // zaya
  // player.sayHello(); // Hi my name is zaya

  // player.manbo2 = "zaya2"  // 에러

  var player = Player("manbo", 1500);
  player.sayHello();

  var player2 = Player("zaya", 2000);
  player2.sayHello();
}