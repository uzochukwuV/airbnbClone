Iterable<T> intersperse<T>(T element, Iterable<T> iterable) sync* {
  final iterator = iterable.iterator;
  if (iterator.moveNext()) {
    yield iterator.current;
    while (iterator.moveNext()) {
      yield element;
      yield iterator.current;
    }
  }
}

void main() {
  print([
    ...[
      ...intersperse(6, [3, 5, 7, 9, 0]),
      intersperse(6, [3, 5, 7, 9, 0])
    ]
  ]);
}
