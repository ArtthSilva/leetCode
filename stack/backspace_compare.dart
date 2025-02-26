class Solution {
  bool backspaceCompare(String s, String t) {
    var novo1 = [];
    var novo2 = [];

    for (int i = 0; i < s.length; i++) {
      String letra = s[i];
      if (letra != '#') {
        novo1.add(letra);
      } else if (novo1.isNotEmpty) {
        novo1.removeLast();
      }
    }

    for (int i = 0; i < t.length; i++) {
      String letra = t[i];
      if (letra != '#') {
        novo2.add(letra);
      } else if (novo2.isNotEmpty) {
        novo2.removeLast();
      }
    }

    return novo1.toString() == novo2.toString();
  }
}

void main(List<String> args) {
  var teste = Solution().backspaceCompare('ab##', 'c#d#');
  print(teste);
}
