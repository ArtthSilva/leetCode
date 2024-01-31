class Solution {
 List<int>? buildArray(List<int> nums) {
    List<int> resultado = [];
    for (var i = 0; i < nums.length; i++) {
      resultado.add(nums[nums[i]]);
    }
    return resultado;
 }
}
