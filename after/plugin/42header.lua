local header = require("42header")

header.setup({
  length = 80, -- headers of different sizes are incompatible with each other
  margin = 5,
  default_map = true, -- default Mapping <F1> in normal mode
  auto_update = true, -- update header when saving
  user = "astavrop", -- your user
  mail = "astavrop@student.42berlin.de", -- your mail
  -- asciiart = { "......", "......",} -- headers with different ascii arts are incompatible with each other
})
