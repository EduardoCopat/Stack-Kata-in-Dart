// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library Stack.test;

import 'package:unittest/unittest.dart';
import 'package:Stack/Stack.dart';
import 'package:unittest/html_enhanced_config.dart';

main() {
  useHtmlEnhancedConfiguration();
  
  group('Stack tests', () {
    Stack stack;

    setUp(() {
      stack = new Stack();
    });

    test('Stack is empty in the beggining', () {
      expect(stack.isEmpty(), isTrue);
    });

    test('Stack shall not be empty after push', () {
      stack.push(2);
      expect(stack.isEmpty(), isFalse);
    });
    
    test('After two pushes, should pop last push', () {
        stack.push(2);
        stack.push(4);
        int popped = stack.pop();
        expect(popped, 4);
    });
    
    test('After two pushes and two pops, stack shall be empty', () {
        stack.push(2);
        stack.push(4);
        stack.pop();
        stack.pop();
        expect(stack.isEmpty(), isTrue);
    });
    
    test('Cant pop empty stack', () {
      expect(() => stack.pop(), throwsA(new isInstanceOf<EmptyStack>()) );
    });
  });
}
