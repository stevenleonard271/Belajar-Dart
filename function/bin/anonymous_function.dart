//Anonymous function => fungsi yang tidak memiliki nama

int doMathOperator(int number1, int number2, Function operator) {
  return operator(number1, number2);
}

main(List<String> args) {
  print(doMathOperator(20, 30, (int a, int b) => a * b));

  // int doMathOperator(int number1, int number2, Function operator) {
  // return operator(number1, number2);

  //return (int a, int b)=> a*b;
}
