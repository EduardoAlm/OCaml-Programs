# OCaml-Programs
Problems from MIUP, algorithm implementations, etc all solved in OCaml.

# Palindromas numericos

 - Problem
    O  desafio neste problema e, dado um valor inteiro natural x em entrada, decidir se x
 ́e um palindroma numerico numa base b (com 1 ≤ b ≤ 10).
Um inteiro palindroma (em base b)  ́e um inteiro que se pode ler tanto da esquerda para a direita
como da direita para a esquerda na base considerada.

 - Input
    A entrada deste exercıcio consiste em duas linhas. A primeira linha cont ́e um o inteiro b, 
 a base numerica por considerar.
A segunda linha cont ́e um o inteiro x.

 - Output
    A saída esperada apresenta-se numa so linha com a palavra
    
    • “ERROR”, se x nao ́e inteiro na base considerada;
    • “YES”, se x for um palindroma na base considerada;
    • “NO”, se x ́e um inteiro na base considerada mas nao ́e palindroma.

 - Constraints
    A base b fornecida respeita a regra:  1 ≤ b ≤ 10. É garantido que o inteiro
  natural x em entrada tem estritamente menos de 18 algarismos (i.e.pode ser lido seguramente como sendo 
  do tipo int de OCaml).
  
  Sample Input1
  5
  1324231
  Sample Output1
  YES
  Sample Input2
  10
  5692695
  Sample Output2
  NO
  Sample Input3
  4
  56922965
  Sample Output3
  ERROR

