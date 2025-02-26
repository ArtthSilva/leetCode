class Solution {
  List<int> twoSum(List<int> nums, int target) {
          List<int> result = [];
    for (var l = 0; l < nums.length; l++) {
      for (var r = l+ 1; r < nums.length; r++) {
        if (nums[l] + nums[r] == target) {
          result.add(l);
          result.add(r);
        } 
      }
    }
     return result;
  }
}
void main(List<String> args) {
  Solution().twoSum([2,7,11,15], 9);
}