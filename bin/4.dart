List<int> twoSum(List<int> nums, int target) {
  if (nums.length == 2) return [0, 1];

  late int num1;
  late int num2;

  for (int i = 0; i < nums.length; i++) {
    for (int a = i + 1; a < nums.length; a++) {
      if (nums[i] + nums[a] == target) {
        num1 = i;
        num2 = a;
      }
    }
  }

  return [num1, num2];
}

void main() {
  print(twoSum([2, 7, 11, 15], 9));
  print(twoSum([3, 2, 4], 6));
  print(twoSum([3, 2, 3], 6));
}
