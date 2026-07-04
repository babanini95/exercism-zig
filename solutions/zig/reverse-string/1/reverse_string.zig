/// Writes a reversed copy of `s` to `buffer`.
pub fn reverse(buffer: []u8, s: []const u8) []u8 {
    var i = s.len;
    var j: usize = 0;

    while (i > 0) : ({
        i -= 1;
        j += 1;
    }) {
        buffer[j] = s[i - 1];
    }

    return buffer[0..s.len];
}
