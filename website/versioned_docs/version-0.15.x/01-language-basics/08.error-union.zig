// hide-start
const expect = @import("std").testing.expect;

const FileOpenError = error{
    AccessDenied,
    OutOfMemory,
    FileNotFound,
};
const AllocationError = error{OutOfMemory};

// hide-end
test "error union" {
    const maybe_error: AllocationError!u16 = AllocationError.OutOfMemory;
    const no_error = maybe_error catch 0;

    try expect(no_error == 0);
}
