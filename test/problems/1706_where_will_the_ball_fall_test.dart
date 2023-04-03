import 'package:leetcode/1706_where_will_the_ball_fall.dart';
import 'package:test/test.dart';

void main() => group('Where will the ball fall test', () {
      final List<List<List<int>>> testCases = [[]];

      //Result cases are matched by index
      //for next test use a Map instead.
      final List<List<int>> resultCases = [];

      final f = Solution().findBall;

      for (int i = 0; i < testCases.length; i++) {
        final testNum = testCases[i];

        final result = resultCases[i];

        test('$testNum', () {
          expect(f(testNum), result);
        });
      }
    });
