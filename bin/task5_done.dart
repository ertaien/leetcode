// https://leetcode.com/problems/word-pattern/?envType=study-plan-v2&envId=top-interview-150

class Solution {
  bool wordPattern(String pattern, String s) {
    final patterns = pattern.split("");
    final words = s.split(" ");

    final matches = {};
    bool result = true;

    if (patterns.length != words.length) {
      return false;
    }

    patterns.asMap().forEach((idx, pattern) {
      if (matches.containsKey(pattern)) {
        final patternWord = matches[pattern];

        if (words[idx] != patternWord) {
          result = false;
        }
      } else {
        if (!matches.containsValue(words[idx])) {
          matches[pattern] = words[idx];
        } else {
          result = false;
        }
      }
    });

    return result;
  }
}

void main() {
  final solution = Solution();

  print(solution.wordPattern("abba", "dog cat cat dog"));
  print(solution.wordPattern("abbi", "dog cat cat dog"));
  print(solution.wordPattern("aaa", "aa aa aa aa"));
}
