package = "lub"
version = "master-2"
source = {
  url = 'git://github.com/lubyk/lub',
  branch = 'master',
  dir = 'lub',
}
description = {
  summary = "Lubyk base module.",
  detailed = [[
    lub: helper code, class declaration.

    lub.Autoload: autoloading classes in modules.

    lub.Dir: a simple directory traversal class.

    lub.Template: a simple templating class that uses {{moustache}} like syntax.

    lub.Param: script parameter save/restore.
  ]],
  homepage = "https://lubyk.github.io/lubyk/lub.html",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1, < 5.4",
  "luafilesystem >= 1.4.0",
}
build = {
  type = 'builtin',
  modules = {
    -- Plain Lua files
    ['lub'            ] = 'lub/init.lua',
    ['lub.Autoload'   ] = 'lub/Autoload.lua',
    ['lub.Dir'        ] = 'lub/Dir.lua',
    ['lub.Param'      ] = 'lub/Param.lua',
    ['lub.Template'   ] = 'lub/Template.lua',
  },
}

