import 'package:leetcode/54_spiral_matrix.dart';
import 'package:test/test.dart';

void main() => group(
      'Spiral Matrix Test',
      () {
        final List<List<List<int>>> testCases = [
          [
            [1, 2, 3],
            [4, 5, 6],
            [7, 8, 9]
          ],
          [
            [1, 2, 3, 4],
            [5, 6, 7, 8],
            [9, 10, 11, 12]
          ],
          [],
        ];

        //Result cases are matched by index
        //for next test use a Map instead.
        final List<List<int>> resultCases = [
          [1, 2, 3, 6, 9, 8, 7, 4, 5],
          [1, 2, 3, 4, 8, 12, 11, 10, 9, 5, 6, 7],
          [],
        ];

        final f = Solution().spiralOrder;

        for (int i = 0; i < testCases.length; i++) {
          final testNum = testCases[i];

          final result = resultCases[i];

          test('$testNum', () {
            expect(f(testNum), result);
          });
        }
      },
    );
