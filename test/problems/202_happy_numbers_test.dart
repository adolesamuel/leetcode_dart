import 'package:leetcode/202_happy_numbers.dart';
import 'package:test/test.dart';

void main() => group('Happy Numbers Test', () {
      final List<int> testCases = [19, 2, 1, 7, 111111];

      //Result cases are matched by index
      //for next test use a Map instead.
      final List<Matcher> resultCases = [
        isTrue,
        isFalse,
        isTrue,
        isTrue,
        isFalse
      ];

      final f = Solution().isHappy;

      for (int i = 0; i < testCases.length; i++) {
        final testNum = testCases[i];

        final result = resultCases[i];

        test('$testNum', () {
          expect(f(testNum), result);
        });
      }
    });
