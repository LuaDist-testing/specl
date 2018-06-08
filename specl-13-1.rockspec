-- This file was automatically generated for the LuaDist project.

package = "specl"
version = "13-1"
description = {
  detailed = "Develop and run BDD specs written in Lua for RSpec style workflow.",
  homepage = "http://gvvaughan.github.io/specl",
  license = "GPLv3+",
  summary = "Behaviour Driven Development for Lua",
}
-- LuaDist source
source = {
  tag = "13-1",
  url = "git://github.com/LuaDist-testing/specl.git"
}
-- Original source
-- source = {
--   dir = "specl-release-v13",
--   url = "http://github.com/gvvaughan/specl/archive/release-v13.zip",
-- }
dependencies = {
  "luamacro >= 2.0",
  "lua >= 5.1",
  "lyaml >= 5",
  "stdlib == 40",
}
external_dependencies = nil
build = {
  copy_directories = {
    "bin",
    "doc",
  },
  modules = {
    ["specl.badargs"] = "lib/specl/badargs.lua",
    ["specl.color"] = "lib/specl/color.lua",
    ["specl.compat"] = "lib/specl/compat.lua",
    ["specl.formatter.progress"] = "lib/specl/formatter/progress.lua",
    ["specl.formatter.report"] = "lib/specl/formatter/report.lua",
    ["specl.formatter.tap"] = "lib/specl/formatter/tap.lua",
    ["specl.inprocess"] = "lib/specl/inprocess.lua",
    ["specl.loader"] = "lib/specl/loader.lua",
    ["specl.main"] = "lib/specl/main.lua",
    ["specl.matchers"] = "lib/specl/matchers.lua",
    ["specl.runner"] = "lib/specl/runner.lua",
    ["specl.shell"] = "lib/specl/shell.lua",
    ["specl.std"] = "lib/specl/std.lua",
    ["specl.util"] = "lib/specl/util.lua",
    ["specl.version"] = "lib/specl/version.lua",
  },
  type = "builtin",
}