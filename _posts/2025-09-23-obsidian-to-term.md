---
layout: post
title: "How I replaced obsidian with my terminal."
date: "2025-09-23"
author: "crazykitty"
tags: ["workflow"]
---
it took me a lot of relearning, but it was pretty straightforward. First what I did was delete obsidian, then I found the right mix of terminal utilities that felt right to me.

## How I organize my notes.
I used to use a mix of tagging notes and a solid filesystem hierarchy (I recommend this.) now I just use the filesystem because of what I talk about later in this blog post.

## The cli-apps I use.
For writing I use [neovim](https://neovim.io) since it has a lot of support via plugins, fun fact I don't really use a lot of the macros that you can do in it but it's really cool imo that it's supported.

For viewing all of my many markdown documents I used to use [glow](https://github.com/charmbracelet/glow) for the longest time but now I use [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) because glow can't render images in [kitty](https://sw.kovidgoyal.net/kitty/) (this is the terminal I use).

Just for fun and for general privacy I encrypt all of my notes via pgp using [gpg.nvim](https://github.com/benoror/gpg.nvim).

When you combine this with render-markdown the markdown won't render because neovim will think "this is a gpg file." To fix this all we need to do is add this code snippet to <u>init.lua</u>
``` lua
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*.md.gpg",
	command = "setfiletype markdown",
})
```

Since everything is encrypted I can't just search for tags inside of the note files themselves via grep or ripgrep, so now I manually go look for filenames using [yazi](https://yazi-rs.github.io/).

However, yazi doesn't open neovim when you try to edit the gpg, it will instead try to open a default application for me it opened it up in firefox xD.
I fixed this by writing this and saving it as <u>~/.config/yazi/yazi.toml</u>

``` toml
[open]
prepend_rules = [
{ name = "*.gpg", use = "edit" },
]
```

