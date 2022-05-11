# sclang-format.nvim

A simple wrapper for [sclang_format.py](https://github.com/john-d-murphy/sclang_format), a tree-sitter based tool for formatting SuperCollider code.

## Installation

Using packer:

```lua
use {
	"madskjeldgaard/sclang-format.nvim", 
	requires = "nvim-treesitter/nvim-treesitter", 
	config = function() require"sclang-format".setup() end
}
```

### Requirements

Some python packages are needed:

- `tree_sitter`
- `argparse`

Install using pip:
```bash
pip install tree_sitter argparse
```

## Usage

Run the command `SCLangFormat` while in a SuperCollider buffer.
