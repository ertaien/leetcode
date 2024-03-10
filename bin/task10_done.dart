class Solution {
  bool containsDuplicate(List<int> nums) {
    return nums.toSet().length != nums.length;
  }
}

void main() {
  final s = Solution();

  print(s.containsDuplicate([3, 3]));
  print(s.containsDuplicate([1, 3]));
  print(s.containsDuplicate([2, 14, 18, 22, 22]));
}
