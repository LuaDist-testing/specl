-- This file was automatically generated for the LuaDist project.

package = "specl"
version = "10-1"
description = {
  detailed = "Develop and run BDD specs written in Lua for RSpec style workflow.",
  homepage = "http://gvvaughan.github.io/specl",
  license = "GPLv3+",
  summary = "Behaviour Driven Development for Lua",
}
-- LuaDist source
source = {
  tag = "10-1",
  url = "git://github.com/LuaDist-testing/specl.git"
}
-- Original source
-- source = {
--   dir = "specl-release-v10",
--   url = "http://github.com/gvvaughan/specl/archive/release-v10.zip",
-- }
dependencies = {
  "luamacro >= 2.0",
  "lua >= 5.1",
  "lyaml >= 4",
}
external_dependencies = nil
build = {
  copy_directories = {
    "bin",
    "doc",
  },
  modules = {},
  type = "builtin",
}