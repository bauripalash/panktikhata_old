import 'dart:ffi';
import 'dart:io' show Platform,Directory;
import 'package:path/path.dart' as path;

typedef SumFunc = Int32 Function(Int32 a, Int32 b);
typedef Sum = int Function(int a, int b);

class CodeFFI{
	late final DynamicLibrary dlib;

	CodeFFI() {
		const libName = "sample";
		var libPath = path.join(Directory.current.path, "platform/linux64/lib$libName.so");
		print("PATH ->");
		print(libPath);

		if (Platform.environment.containsKey("FLUTTER_TEST")) {
			dlib = DynamicLibrary.open(libPath);
		} else {
			dlib = Platform.isIOS ? DynamicLibrary.process() : DynamicLibrary.open(libPath);
		}
	}


	int sum(int a, int b) {
		final sumPtr = dlib.lookup<NativeFunction<SumFunc>>('sum');
		final sum = sumPtr.asFunction<Sum>();
		final result = sum(a,b);
		return result;
	}
}
