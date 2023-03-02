// Given an m x n matrix, return all elements of the matrix in spiral order.

// Example 1:
// 3X3 matrix
// -----------------
// | 1 -> 2 -> 3  |
// |           |  |
// |           ˅  |
// | 4 -> 5 -> 6  |
// | ^         |  |
// | |         ˅  |
// | 7 <- 8 <- 9  |
// ---------------

// Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
// Output: [1,2,3,6,9,8,7,4,5]
// Example 2:

// Input: matrix = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
// Output: [1,2,3,4,8,12,11,10,9,5,6,7]

// Constraints:

// m == matrix.length
// n == matrix[i].length
// 1 <= m, n <= 10
// -100 <= matrix[i][j] <= 100

class Solution {
  List<int> spiralOrder(List<List<int>> matrix) {
    if (matrix.isEmpty) {
      return [];
    }

    final int rows = matrix.length;
    final int columns = matrix[0].length;
    List<int> answer = [];

    int firstRow = 0;
    int firstColumn = 0;
    int lastRow = rows - 1;
    int lastColumn = columns - 1;
    int totalLenghtOfAnswer = rows * columns;

    //while answer is not complete.
    while (answer.length < totalLenghtOfAnswer) {
      bool answerIsNotComplete = answer.length < totalLenghtOfAnswer;
      for (int j = firstColumn; j <= lastColumn && answerIsNotComplete; ++j) {
        answer.add(matrix[firstRow][j]);
      }
      for (int i = firstRow + 1; i <= lastRow - 1 && answerIsNotComplete; ++i) {
        answer.add(matrix[i][lastColumn]);
      }
      for (int j = lastColumn; j >= firstColumn && answerIsNotComplete; --j) {
        answer.add(matrix[lastRow][j]);
      }
      for (int i = lastRow - 1; i >= firstRow + 1 && answerIsNotComplete; --i) {
        answer.add(matrix[i][firstColumn]);
      }
      ++firstRow;
      ++firstColumn;
      --lastRow;
      --lastColumn;
    }

    return answer;
  }
}
