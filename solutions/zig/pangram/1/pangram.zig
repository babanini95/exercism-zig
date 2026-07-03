const std = @import("std");

pub fn isPangram(str: []const u8) bool {
    if (str.len < 26) return false;

    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const allocator = arena.allocator();

    var map = std.AutoHashMap(u8, bool).init(allocator);
    for (std.ascii.lowercase.*) |c| {
        map.put(c, false) catch unreachable;
    }

    for (str) |c| {
        const key = std.ascii.toLower(c);
        map.put(key, true) catch unreachable;
    }

    var iter = map.valueIterator();
    while (iter.next()) |v| {
        if (!v.*) return false;
    }

    return true;
}
