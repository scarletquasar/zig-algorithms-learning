const std = @import("std");
const RndGen = std.rand.DefaultPrng;

pub fn quicksort(array: []i32) []i32 {
    if (array.len < 2) {
        return array;
    }

    var randImpl = RndGen.init(0);
    var pivotRandSize: usize = @intCast(array.len);
    const pivot = @mod(randImpl.random().int(i32), pivotRandSize);

    const stdout = std.io.getStdOut().writer();
    try stdout.print("random: {x}\n", .{pivot});

    return array;
}

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    var inputArray = [_]i32{0};
    var quicksortResult = quicksort(&inputArray);

    try stdout.print("Quicksort result: {x}\n", .{quicksortResult});
}
