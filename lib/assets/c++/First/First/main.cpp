//
//  main.cpp
//  First
//
//  Created by Cristian Camilo Cuevas on 2/15/21.
//  Copyright © 2021 Cristian Camilo Cuevas. All rights reserved.
//

require 'inline'

class InlineTest
  inline do |builder|
    builder.include '<math.h>'
    builder.c '
      int inline_pow(int a, int n) {
        return pow(a, n);
      }'
    builder.c '
      long inline_factorial(int max) {
        int i=max, result=1;
        while (i >= 2) { result *= i--; }
        return result;
      }'
    builder.c '
      int inline_fibonacci(int n) {
        int a = 1, b = 1, c, i;
        if (n == 0) {
          return 0;
        }
        for (i = 3; i <= n; i++) {
          c = a + b;
          a = b;
          b = c;
        }
        return b;
      }'
  end
end

puts InlineTest.new.inline_factorial(5)
puts InlineTest.new.inline_fibonacci(9)
puts InlineTest.new.inline_pow(2, 10)
