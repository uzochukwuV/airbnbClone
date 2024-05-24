class Person {
  void getname() {
    print("My name");
  }
}

// entends is inheritance
// implement is interface

class Nigerian extends Person {
  void getNigerianId() {
    print("I am Nigerian");
  }
}

class Kenyan extends Person {
  getKenyanId() {
    print("I am Kenyan");
  }
}

mixin KenyanMixin {
  void getKenyanId() {
    print("I am Kenyan");
  }
}

class HalfCast extends Nigerian with KenyanMixin {}

void main(List<String> args) {
  Nigerian().getname();
  HalfCast().getKenyanId();
  HalfCast().getNigerianId();
  HalfCast().getname();
}
