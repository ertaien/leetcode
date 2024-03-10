class Solution {
  bool isPalindrome(int x) {
    if (x < 0) {
      return false;
    }

    return x.toString().split('').reversed.join() == x.toString();
  }
}

void main() {
  final s = Solution();

  print(s.isPalindrome(121));
  print(s.isPalindrome(121));
}
