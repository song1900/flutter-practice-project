class Player {
  // String name = 'manbo';
  // final String name2 = "manbo2"; // final variable, property는 수정할 수 없음
  // int xp = 1500;

// late는 변수들의 값을 나중에 받아올거라는걸 의미
  final String name;
  int xp;
  String team;

// 초기화 방법 1
  // Player(String name, int xp) {
  //   this.name = name;
  //   this.xp = xp;
  // }
// 초기화 방법 2
  Player({
    required this.name,
    required this.xp,
    required this.team
  });

  Player.createBluePlayer({
    required String name, 
    required int xp
  }) : this.xp = xp,
       this.name = name,
       this.team = 'blue';

  Player.createRedPlayer(String name, int xp) : 
      this.xp = xp,
      this.name = name,
      this.team = 'red';

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

  var player = Player.createBluePlayer(
    name: "manbo",
    xp: 1500
  );
  player.sayHello();

  var player2 = Player.createRedPlayer("zaya", 2500);
  player2.sayHello();
}