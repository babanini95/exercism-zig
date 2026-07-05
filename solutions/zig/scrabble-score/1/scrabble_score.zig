const std = @import("std");

// | Letter                       | Value |
// | ---------------------------- | ----- |
// | A, E, I, O, U, L, N, R, S, T | 1     |
// | D, G                         | 2     |
// | B, C, M, P                   | 3     |
// | F, H, V, W, Y                | 4     |
// | K                            | 5     |
// | J, X                         | 8     |
// | Q, Z                         | 10    |

const score_map = block: {
    var array = [_]u8{0} ** 26;

    array['a' - 'a'] = 1;
    array['b' - 'a'] = 3;
    array['c' - 'a'] = 3;
    array['d' - 'a'] = 2;
    array['e' - 'a'] = 1;
    array['f' - 'a'] = 4;
    array['g' - 'a'] = 2;
    array['h' - 'a'] = 4;
    array['i' - 'a'] = 1;
    array['j' - 'a'] = 8;
    array['k' - 'a'] = 5;
    array['l' - 'a'] = 1;
    array['m' - 'a'] = 3;
    array['n' - 'a'] = 1;
    array['o' - 'a'] = 1;
    array['p' - 'a'] = 3;
    array['q' - 'a'] = 10;
    array['r' - 'a'] = 1;
    array['s' - 'a'] = 1;
    array['t' - 'a'] = 1;
    array['u' - 'a'] = 1;
    array['v' - 'a'] = 4;
    array['w' - 'a'] = 4;
    array['x' - 'a'] = 8;
    array['y' - 'a'] = 4;
    array['z' - 'a'] = 10;

    break :block array;
};

pub fn index(c: u8) usize {
    return c - 'a';
}

pub fn score(s: []const u8) u32 {
    var total_score: u32 = 0;

    for (s) |c| {
        total_score += score_map[index(std.ascii.toLower(c))];
    }

    return total_score;
}
