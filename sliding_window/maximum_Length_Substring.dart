// Given a string s, return the maximum length of a 
// substring
//  such that it contains at most two occurrences of each character.
 

// Example 1:

// Input: s = "bcbbbcba"

// Output: 4

// Explanation:

// The following substring has a length of 4 and contains at most two occurrences of each character: "bcbbbcba".
 
// Constraints:

// 2 <= s.length <= 100
// s consists only of lowercase English letters.

import 'dart:math';

class Solution {
  int maximumLengthSubstring(String s) {
    int l = 0, r = 0;    
    int _max = 1;
    Map<String, int> counter = {};
    counter[s[0]] = 1;
    while (r < s.length - 1){ 
      r += 1;
       if (counter.containsKey(s[r])) {
        counter[s[r]] = counter[s[r]]! + 1;
      } else {
        counter[s[r]] = 1;
      }
      while (counter[s[r]] == 3){
        counter[s[l]] = counter[s[l]]! - 1;
        l++;
      }
      _max = max(_max, r - l + 1);
    }


    return _max;
  }
}
 