require("todo-comments").setup {
  pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon.
  highlight = { pattern = [[.*<(KEYWORDS)\s*]]}
}
