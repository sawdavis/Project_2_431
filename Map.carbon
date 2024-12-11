fn map(values: [i32], fn f(i32) -> i32) -> [i32] {
    var result: [i32];
    for (var v in values) {
        result.push(f(v));
    }
    return result;
}
