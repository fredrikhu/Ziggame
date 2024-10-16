const std = @import("std");

pub fn main() !void {
    const std_out = std.io.getStdOut().writer();
    var count: u8 = 1;
    while (count <= 100) : (count += 1) {
        const div_3: u2 = @intFromBool(count % 3 == 0);
        const div_5 = @intFromBool(count % 5 == 0);

        switch (div_3 << 1 | div_5) {
            0b11 => try std_out.print("fizzbuzz\n", .{}),
            0b10 => try std_out.print("fizz\n", .{}),
            0b01 => try std_out.print("buzz\n", .{}),
            else => try std_out.print("{}\n", .{count}),
        }
    }
}
