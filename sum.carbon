package MyApp api;

fn Main() -> i32 {
  var num1: i32;
  var num2: i32;
  Print("Enter the first number: ");
  num1 = Input<i32>();
  Print("Enter the second number: ");
  num2 = Input<i32>();

  var sum: i32 = num1 + num2;
  Print("The sum is: ", sum);

  return 0;
}
