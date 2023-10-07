class Solution {
  int removeDuplicates(List<int> nums) {
    for (int n in nums) {
      final numCount = nums.where((e) => e == n).length;

      if (numCount > 2) {
        final removeCount = numCount - 2;
        final firstIndex = nums.indexOf(n);
        final lastIndex = nums.lastIndexOf(n);

        print([firstIndex + 2, lastIndex]);

        nums.removeRange(firstIndex + 2, lastIndex);
      }
    }

    print(nums);

    return nums.length;
  }
}

void main() {
  final sol = Solution();
  print(sol.removeDuplicates([0, 0, 1, 1, 1, 1, 2, 3, 3]));
}
