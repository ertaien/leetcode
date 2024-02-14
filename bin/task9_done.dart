class Solution {
  int singleNumber(List<int> nums) {
    int single = 0;

    if (nums.length == 1) {
      return nums.first;
    }

    for (int n in nums) {
      single = n ^ single;
    }

    return single;
  }
}

void main() {
  final s = Solution();

  print(s.singleNumber([4, 1, 2, 1, 2]));
}
