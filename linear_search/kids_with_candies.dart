// There are n kids with candies. You are given an integer array candies, where each candies[i] represents the number of candies the ith kid has, and an integer extraCandies, denoting the number of extra candies that you have.

// Return a boolean array result of length n, where result[i] is true if, after giving the ith kid all the extraCandies, they will have the greatest number of candies among all the kids, or false otherwise.

// Note that multiple kids can have the greatest number of candies.
class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    List<bool> result = [];
    int maxCandies = candies.reduce((value, element) => value > element ? value : element);    
  
    for (var crianca in candies) {
      result.add(crianca + extraCandies >= maxCandies);
    }   
    return result;
  }
}

 
 