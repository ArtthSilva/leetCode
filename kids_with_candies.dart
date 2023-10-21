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

 
 