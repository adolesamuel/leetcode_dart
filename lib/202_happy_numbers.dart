import 'dart:math';

class Solution {
  bool isHappy(int n) {
    int slow = _squaredSum(n);
    int fast = _squaredSum(_squaredSum(n));

    while (slow != fast) {
      slow = _squaredSum(slow);
      fast = _squaredSum(_squaredSum(fast));
    }

    return slow == 1;
  }

  int _squaredSum(int n) {
    int sum = 0;
    while (n > 0) {
      sum += pow(n % 10, 2).toInt();
      n = n ~/ 10;
    }
    return sum;
  }
}
