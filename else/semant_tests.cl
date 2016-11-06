class Main {
	main() : SELF_TYPE {
		self
	};
};

class A inherits Object {
};

class B inherits A {};

class C inherits Int {};
class D inherits Bool {};