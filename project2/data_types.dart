void main() {
  // Lists
  // List 자동 Formatting -> option + shift + f

  // List<int> numbers2 = [1, 2, 3, 4,];
  var giveMeFive = true;
  var numbers = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5, // collection if
  ];
  
  // String Interpolation
  // 텍스트에 변수를 추가하는 방법
  var name = 'manbo';
  var age = 10;
  var greeting = 'Hello everyone, my name is $name and I\'m ${age + 2}';
  print(greeting);

  // Collection For
  var oldFriends = ['song', 'manbo'];
  var newFriends = [
    'zaya',
    'kim',
    for (var freind in oldFriends) "💌 $freind",
    ];

    print(newFriends);
}
