const std = @import("std");

pub fn main() !void {
    const std_out = std.io.getStdOut().writer();
    var count: u8 = 1;
    while (count <= 100) : (count += 1) {
        if (count % 5 == 0 and count % 3 == 0) {
            try std_out.print("fizzbuzz\n", .{});
        } else if (count % 5 == 0) {
            try std_out.print("fizz\n", .{});
        } else if (count % 3 == 0) {
            try std_out.print("buzz\n", .{});
        } else {
            try std_out.print("{}\n", .{count});
        }
    }
}
