const std = @import("std");

pub fn main() !void {
    const out = std.io.getStdOut().writer();
    _ = try out.write("Message");
}
