class Solution {
  int lengthOfLastWord(String s) {
    return s.trim().split(" ").last.length;
  }
}

void main() {
  final solution = Solution();
  print(solution.lengthOfLastWord("Hello      World     ddd"));
}
