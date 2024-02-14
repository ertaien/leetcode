class Solution {
  bool isAnagram(String s, String t) {
    final a = s.split("")..sort();
    final b = t.split("")..sort();

    return a.join() == b.join();
  }
}

void main() {
  final solution = Solution();
  print(solution.isAnagram("anagram", "nagaram"));
}
