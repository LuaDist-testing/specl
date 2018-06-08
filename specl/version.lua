-- Version data.
--
-- Copyright (c) 2013 Free Software Foundation, Inc.
-- Written by Gary V. Vaughan, 2013
--
-- This program is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 3, or (at your option)
-- any later version.
--
-- This program is distributed in the hope that it will be useful, but
-- WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-- General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

local M = {
  _VERSION = "5",

  name = arg[0] and arg[0]:gsub (".*/", "") or "specl",

  opts = {
    color   = true,
    verbose = false,
  },

  ["--help"] = function ()
    print [[Usage: specl [OPTION]... [FILE]...

Behaviour Driven Development for Lua.

Develop and run BDD specs written in Lua for RSpec style workflow, by
verifying specification expectations read from given FILEs or standard
input, and reporting the results on standard output.

If no FILE is listed, or where '-' is given as a FILE, then read from
standard input.

      --help            print this help, then exit
      --version         print version number, then exit
      --color=WHEN      request colorized formatter output [default=yes]
  -f, --formatter=FILE  use a specific formatter [default=progress]
  -v, --verbose         request verbose formatter output

Report bugs to http://github.com/gvvaughan/specl/issues.]]
    os.exit (0)
  end,

  ["--version"] = function ()
    print [[specl (Specl) 5
Written by Gary V. Vaughan <gary@gnu.org>, 2013

Copyright (C) 2013, Gary V. Vaughan
Specl comes with ABSOLUTELY NO WARRANTY.
You may redistribute copies of Specl under the terms of the GNU
General Public License; either version 3, or any later version.
For more information, see <http://www.gnu.org/licenses>.]]
    os.exit (0)
  end,

  ["--color"] = function (opt, arg)
    if arg == nil then
      return nil, "option '" .. opt .. "' requires an argument"
    end
    local map = { yes = true, no = false }
    if map[arg] == nil then
      return nil, "invalid argument to option '" .. opt .. "'"
    end
    return map[arg]
  end,

  ["--verbose"] = function ()
    -- `--verbose` is a shortcut for `--formatter=specl.formatter.report`
    return true, "verbose"
  end,

  ["--formatter"] = function (opt, arg)
    if arg == nil then
      return nil, "option '" .. opt .. "' requires an argument"
    end
    local ok, formatter = pcall (require, arg)
    if ok == false then
      ok, formatter = pcall (require, "specl.formatter." .. arg)
    end
    if ok == false then
      return nil, "could not load formatter: " .. formatter
    end
    return formatter, "formatter"
  end,
}

-- Option equivalents.
M["-f"] = M["--formatter"]
M["-v"] = M["--verbose"]

return M