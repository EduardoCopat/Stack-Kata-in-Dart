library Stack.EmptyStack;

class EmptyStack  extends StateError {
  EmptyStack(String message) : super(message);
}