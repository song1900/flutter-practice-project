
// Defining a Function
/*
void sayHello(String name) { // void: 이 함수가 아무것도 return 하지 않는다
  print("Hello $name nice to meet you!");
}
*/

/*
String sayHello(String name) { // void: 이 함수가 아무것도 return 하지 않는다
  return "Hello $name nice to meet you!";
}
*/

// fat arrow syntax -> 곧바로 리턴하는 위 코드랑 같은 의미
String sayHello(String name) => "Hello $name nice to meet you!";

// fat arrow syntax 좋은 예
num plus(num a, num b) => a + b;


// Named Parameters
String sayHello2({
    String name = 'anon',
    required int age, // 기본값을 안쓰려면 required 선언
    String country = 'wakanda',
  }) {
  return "Hello $name, you are $age, and you come from $country";
}

// Optional Positional Parameters
String sayHello3(
  String name,
  int age,
  [String? country = "cuba"] // [String? ] 널러블 Swift의 옵셔널
) => "Hello $name, you are $age years old from $country";

void main() {

  print(sayHello('manbo'));


  // named parameter는 순서와 상관 없이 사용 가능
  print(sayHello2(
    age: 22,
    name: "manbo",
    country: "cuba"  
  ));

  print(sayHello2(
    age: 20,
    name: "zaya",
  ));


  var result = sayHello3("manbo3", 18);
  print(result);
}