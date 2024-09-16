# Neovim Configuration

## Table of Contents
1. Overview
2. Prerequisites
3. Folder Structure
4. Core Configuration

---

## 1. Overview
This is my personal Neovim configuration, created to maximize speed and productivity.
The setup follows a YouTube tutorial, which can be found [here](https://youtu.be/6pAG3BHurdM?si=zqISZsCQViXgmgP1).

## 2. Prerequisites
1. Neovim version 0.8+ (since Lua support is required).
2. Git (to clone the repo and manage plugins).
3. Kitty terminal (or another terminal emulator).
4. ripgrep (for fast file searching, used by some plugins).
5. Node.js (required for some plugins).

## 3. Folder Structure
```
├── init.lua
├── lazy-lock.json
├── lua/
│   └── kamel/
│       ├── core/
│       ├── lazy.lua
│       └── plugins/
```
