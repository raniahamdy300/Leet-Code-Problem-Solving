// Given an array of integers nums and an integer target,
//  return indices of the two numbers such that they add up to target.
// You may assume that each input would have exactly one solution, and you may not use the same element twice.
// You can return the answer in any order.

// Example 1:
// Input: nums = [2,7,11,15], target = 9
// Output: [0,1]
// Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

void main() {
  List<int> result = twoSum([2, 7, 11, 15], 13);
  print(result);
}

List<int> twoSum(List<int> nums, int target) {
  List<int> output = [];
  for (var i = 1; i < nums.length; i++) {
    if (target - nums[i] == nums[i - 1]) {
      output.add(i - 1);
      output.add(i);
    }
  }
  return output;
}
