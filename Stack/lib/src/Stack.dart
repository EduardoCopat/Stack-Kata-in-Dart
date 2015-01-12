// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

// TODO: Put public facing types in this file.

library Stack.Stack;
import 'EmptyStack.dart';

class Stack {
  int _size;
  List _list;
  Stack() {
    _size = 0;
    _list = new List();
  }

  bool isEmpty() {
    if (_size == 0) {
      return true;
    } else {
      return false;
    }
  }

  void push(int i) {
    _size++;
    _list.add(i);
  }
  
  int pop() {
    if(isEmpty())
      throw new EmptyStack("");
    _size--;
    return _list.removeLast();
    
  }
}
