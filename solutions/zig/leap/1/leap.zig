pub fn isLeapYear(year: u32) bool {
    if (@rem(year, 100) != 0) {
        return @rem(year, 4) == 0;
    }

    return @rem(year, 400) == 0;
}
