import 'dart:ffi';
import 'package:ffi/ffi.dart';

typedef SumFunc = Int32 Function(Int32 a, Int32 b);
typedef Sum = int Function(int a, int b);

typedef AllSampleFunc = Pointer<Utf8> Function(Pointer<Utf8> rawString, Int32 len);
typedef AllSample = Pointer<Utf8> Function(Pointer<Utf8> str, int len);

class CodeFFI{
	late final DynamicLibrary dlib;

	CodeFFI() {
		const libName = "sample";


		dlib = DynamicLibrary.open("lib$libName.so");
		print("DLIB->");
		print(dlib);
	}


	int sum(int a, int b) {
		final sumPtr = dlib.lookup<NativeFunction<SumFunc>>('sum');
		final sum = sumPtr.asFunction<Sum>();
		final result = sum(a,b);
		return result;
	}

	String allsample(String str , int len) {
		final allsPtr = dlib.lookup<NativeFunction<AllSampleFunc>>("allSample");
		final alls = allsPtr.asFunction<AllSample>();
		final str = 'Hello'.toNativeUtf8();
		print(str);
		final r = alls(str, 5);


		calloc.free(str);
		return r.toDartString();
	}
}
