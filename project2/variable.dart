import 'dart:ffi';

void main() {
  // 변수 선언
  // var name = "만보";
  // == String name2 = "우진";

  // dynamic은 꼭 필요할 때만 사용
  // var name;
  dynamic name;
  name = "만보";
  if (name is String) {    
    name = "MANBO";
  }
  name = 4;
  name = true;

  // Null Safety
  String? nico = "nico";
  nico = null;

  nico?.isNotEmpty;

  if (nico != null) {
    nico.isNotEmpty; 
  }


  // final -> 상수 (Swift의 let, js의 const)
  final age = 0;
  // == final Int age = 0; 
  // age = 1;

  
  // Late -> 초기 데이터 없이 변수 선언
  late final String address;
  // do something, go to api
  address = "경기도...";
  // address = "고양시"; -> Error (final !)


  // const
  const API = 012123;
  // API = 01912; -> Error (final처럼 동작하지 않음)
  // const는 컴파일 타임에 알고 있는 값이어야 함 (중요)

}