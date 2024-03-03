class Solution {
  bool containsDuplicate(List<int> nums) {
    nums.sort();

    if (nums.length == 2) {
      return nums[0] == nums[1];
    }

    for (int a = 0; a < nums.length - 1; a++) {
      if (nums[a] != nums.last) {
        if (nums[a] == nums[a + 1]) {
          return true;
        }
      }
    }

    return false;
  }
}

void main() {
  final s = Solution();

  print(s.containsDuplicate([3, 3]));
  print(s.containsDuplicate([1, 3]));
  print(s.containsDuplicate([2, 14, 18, 22, 22]));
}
