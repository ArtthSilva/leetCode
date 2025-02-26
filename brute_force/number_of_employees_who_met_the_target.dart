class Solution {
  int numberOfEmployeesWhoMetTarget(List<int> hours, int target) {
     List<int> concluidos = [];
    for (var horaTrabalhada in hours) {
      if (horaTrabalhada >= target) {
        concluidos.add(horaTrabalhada);
      }
    }
    return concluidos.length;
  }
}

void main(List<String> args) {
  int teste = Solution().numberOfEmployeesWhoMetTarget([5,1,4,2,2], 6);
  print(teste);
}