object StaticTypeCheck {
	def main(args: Array[String]):Unit = {
		var x = 0;
		print("Hello, World!");
		print(x[7]); // Static Type error. File won't even compile!
	}
}
