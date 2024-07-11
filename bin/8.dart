class Solution {
  List<String> fizzBuzz(int n) {
    final List<String> data = [];
    for (int a = 1; a <= n; a++) {
      if (a % 3 == 0 && a % 5 == 0) {
        data.add('FizzBuzz');
      } else if (a % 3 == 0) {
        data.add('Fizz');
      } else if (a % 5 == 0) {
        data.add('Buzz');
      } else {
        data.add(a.toString());
      }
    }

    return data;
  }
}

void main() {
  final s = Solution();

  print(s.fizzBuzz(
      15)); // ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]
}
