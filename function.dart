void main() {
  var sumFunc = sum('Test', number1: 'hello',number2: 5);
  testPrint();
  print(sumFunc);
}

int sum(String text, {int number2=3, String? number1}){
  print(number1);
  print(number2);
  return number2;
}

testPrint()=>print('hello');