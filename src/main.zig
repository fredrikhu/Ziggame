const std = @import("std");

pub fn main() !void {
    const std_out = std.io.getStdOut().writer();
    const args = try std.process.argsAlloc(std.heap.page_allocator);
    defer std.process.argsFree(std.heap.page_allocator, args);

    if (args.len < 2)
        return error.ExpectedArgument;

    const fahrenheit = try std.fmt.parseFloat(f16, args[1]);
    const celsius = (fahrenheit - 32) / 1.8;

    try std_out.print("Celsius: {d:.1}", .{celsius});
}
