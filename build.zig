// Copyright (c) Lion Kortlepel 2022
const std = @import("std");

pub fn build(b: *std.build.Builder) void {
    // Standard release options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall.
    const mode = b.standardReleaseOptions();

    const lib_server = b.addStaticLibrary("zig-multiserver", "src/network/NetServer.zig");
    lib_server.setBuildMode(mode);
    lib_server.install();

    const lib_client = b.addStaticLibrary("zig-multiclient", "src/network/NetClient.zig");
    lib_client.setBuildMode(mode);
    lib_client.install();
}
