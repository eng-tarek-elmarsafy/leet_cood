void main() {
  // Test cases
  print(twoSum([2, 7, 11, 15], 9)); // Output: [0, 1]
  print(twoSum([3, 2, 4], 6)); // Output: [1, 2]
  print(twoSum([3, 3], 6)); // Output: [0, 1]
  print(twoSum(
      [3, 2, 3, 5, 3, 2, 5, 8, 133, 64, 72, 71, 90, 134], 98)); // Example case
}

List<int> twoSum(List<int> nums, int target) {
  Map<int, int> numOfIndex = {};

  for (int i = 0; i < nums.length; i++) {
    int difference = target - nums[i];

    if (numOfIndex.containsKey(difference)) {
      print(numOfIndex);
      return [numOfIndex[difference]!, i];
    } else {
      numOfIndex[nums[i]] = i;
    }
  }

  return [];
}
