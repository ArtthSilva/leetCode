//Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.

function firstUniqChar(s: string): number {
    const d: { [key: string]: [number, number] } = {};
  
    for (let idx = 0; idx < s.length; idx++) {
      const ch = s[idx];
      if (d[ch] === undefined) {
        d[ch] = [idx, 1];
      } else {
        d[ch][1]++;
      }
    }
  
    for (const ch in d) {
      if (d[ch][1] === 1) {
        return d[ch][0];
      }
    }
  
    return -1;
  }
 
  