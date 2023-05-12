local status, git = pcall(require, "git")
if (not status) then return end

git.setup({
  keymaps = {
    -- Open blame window
    blame = "<Leader>gb",
    -- Open file/folder in git repository
    browse = "<Leader>go",
    -- Open PR
    open_pull_request = "<Leader>pr",
    -- Create PR
    create_pull_request = "<Leader>cpr",
    -- git diff
    diff = "<Leader>gd",
    diff_close = "q",
  }
})
