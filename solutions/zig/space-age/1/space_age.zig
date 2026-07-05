pub const Planet = enum {
    mercury,
    venus,
    earth,
    mars,
    jupiter,
    saturn,
    uranus,
    neptune,

    pub fn age(self: Planet, seconds: usize) f64 {
        const year = @as(f64, @floatFromInt(seconds)) * 0.00000003168809;
        return switch (self) {
            .mercury => year / 0.2408467,
            .venus => year / 0.61519726,
            .mars => year / 1.8808158,
            .jupiter => year / 11.862615,
            .saturn => year / 29.447498,
            .uranus => year / 84.016846,
            .neptune => year / 164.79132,
            else => year,
        };
    }
};
