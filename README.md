# fish-cdf

Quickly cd to recent directories.

![demo](https://github.com/user-attachments/assets/196edc91-5f0a-4009-965e-18cb3bfe0b68)

## Requirements

- [fzf](https://github.com/junegunn/fzf)

## Install

```fish
fisher install yuys13/fish-cdf
```

## Usage

```fish
cdf
```

## Variables

### `cdf_recent_dirs_max`

Maximum number of directories to record. Default size is `500`.  
If you want to make it 1000, run the following command:

```fish
set -U cdf_recent_dirs_max 1000
```
