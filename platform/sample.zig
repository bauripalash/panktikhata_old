const std = @import("std");

export fn allSample(rawSource: [*]const u8, len: i32) callconv(.C) ?[*]u8 {
    const handyAl = std.heap.c_allocator;
    const r = rawSource[0..@intCast(len)];

    const a = std.fmt.allocPrint(handyAl, "{s}", .{r}) catch {
        return null;
    };

    std.debug.print("{s}", .{a});

    return a.ptr;
}

export fn sum(a: i32, b: i32) i32 {
    return a + b;
}
