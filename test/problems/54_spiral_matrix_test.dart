import 'package:leetcode/54_spiral_matrix.dart';
import 'package:test/test.dart';

void main() => group(
      'Spiral Matrix Test',
      () {
        final List<List<List<int>>> testCases = [
          [],
          [],
          [],
        ];

        //Result cases are matched by index
        //for next test use a Map instead.
        final List<List<int>> resultCases = [
          [],
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
