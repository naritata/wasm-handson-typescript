// The entry file of your WebAssembly module.

export function add(a: i32, b: i32): i32 {
	return a + b;
}

export function _start(): i32 {
	return add(10, 20);
}
