class Solution {
  Map<String, int> valores = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000
  };

  int romanToInt(String s) {
    int valor = 0;

    List<String> entrada = s.split('');

    for (var i = 0; i < entrada.length; i++) {
      String atual = entrada[i];
      int valorAtual = valores[atual]!;

       valor += valorAtual;

       if (i + 1 < entrada.length) {
        String proximo = entrada[i + 1];
        if ((atual == 'I' && (proximo == 'V' || proximo == 'X')) ||
            (atual == 'X' && (proximo == 'L' || proximo == 'C')) ||
            (atual == 'C' && (proximo == 'D' || proximo == 'M'))) {
          valor -= 2 * valores[atual]!; 
        }
      }
    }

    return valor;
  }
}

void main(List<String> args) {
  int valor = Solution().romanToInt('MCMXCIV');
  print(valor); 
}
