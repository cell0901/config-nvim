-- this is the main init lua anything created inside this cell dir will be required by this file
vim.g.mapleader = " "

require("cellll.lazy_init") -- added the lazy package manager in lazy_init file but this needs to require that to run that
require("cellll.set")
require("cellll.remap")


