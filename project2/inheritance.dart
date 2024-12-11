
class Human {
  final String name;
  Human(this.name);

  void sayHello() {
    print("Hi My name is $name");
  }
}

enum Team { red, blue }

class Player extends Human {
  final Team team;

  Player({
    required this.team,
    required String name
  }) : super(name);

  @override
  void sayHello() {
    super.sayHello();
    print("and I play for ${team}");
  }
}

void main() {
  var player = Player(team: Team.red, name: "manbo");
  player.sayHello();
}