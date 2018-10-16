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
 
# Please, sit down, we need to negotiate
  the friendly version (adapted from MIUP’17)

 Negotiations are a black magic art. Before negotiating and having failed to have everyone involved around the table, we need to gather the right people with the right mindset. Without that, the negotiations are doomed to fail.
But how to ensure that, when no one wants to join the negotiation without some estab- lished predefined conditions?
Fortunately, here, these conditions are simply stated: “I join the negotiation table if X  and Y and ... and Z also agreed to join”
 If we number incrementally each potential participant by a natural number, say  from 0 to n	1, it is important to ensure that j, the key participant for the negotiation, join it, knowing that each potential participant has a certain number of condition to join the table. Gathering the people around the table is done in rounds, iteratively. One negotiator joins the table if the people already seated meet his own requirement. By doing that, other
negotiators may join the table the next round, because of him.

 - Task
   Taking into account which participant is the key in the negotiation process, and all the negotiator’s constraints,  your task is to tell the head of the negotiation process that the   right conditions are met for a fruitful negotiation.

 - Input
The first line introduces two numbers: n and m separated by a single space.
The number n is the number of potential negotiators (numbered from 0 to n	1) and m is the number of overall stated conditions.
The second line introduces the id (i.e. the number) of the key negotiator.
The following m lines introduce the conditions with the following format:
      r p1 . . . pr p	(with 0 ≤ r < n)
and with the meaning: if p1 and . . . pr join the table, then p also joins the table

 - Hints
 The condition 0 p means that p is willing to join the table without any conditions. A potential negotiator with no stated condition is a negotiator that categorically refuses to join the negotiation table.
If a potential negotiator has more than one stated condition, this means that he is willing to join the table if at least one of his conditions is fulfilled.

 - Constraints
     2 ≤ n ≤ 20
    Number of stated conditions to join the negotiation table:  
     0 < m ≤ 20
    These constraints define a frendly context for solving the problem.

 - Output
A single line with: “YES” if the key negotiator is able to join the negotiation, “NO” other- wise.
 
 Sample Input 1
  4 4
  0
  0 1
  1 1 3
  2 0 3 2
  1 2 0
 
 Sample Input 2
  5 6
  1
  0 0
  1 0 3
  2 0 3 2
  1 0 1
  1 2 1
  0 4

 Sample Output 1
  NO

 Sample Output 2
  YES
