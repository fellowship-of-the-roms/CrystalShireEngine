# 16-bit index expansion for Crystal

This repository contains a modified Pokémon Crystal game, updated to handle 16-bit indexes. The main goal of this
project is to create a reusable system that ROM hacks can use to bring 16-bit indexes into their games.  
It is *not* within scope to create a new game, or to add additional features beyond 16-bit indexes.

The `master` branch of this repository is intended to perform identically to the original Pokémon Crystal, with
minimal changes to support further development on it. Other branches will implement more features on top of it; the
intention is that the necessary changes can be readily seen by comparing said branches to `master` (or between each
other). Therefore, these other branches will never be merged into `master`, even though they will always be directly
descended from it (i.e., in Git terminology, a merge would be a fast-forward).

Since this repository is intended to be used as a reference, the commit history is intentionally kept clean to make
changes clearly visible. Therefore, modifications (such as bug fixes) will often be merged into whichever commit is
more suitable for them, with the remainder of the commit tree rebased on top of the updated commit. **Please do not
fork this repository to build a new game on top** (unless you intend to contribute to it), as the publicly-visible
history will be repeatedly rewritten, making merges impossible. If you do want to contribute to the repository, let
me know in advance so I can notify you of history rewrites.

For further documentation, check out the [wiki].

## Branches

Last PC16 rebase: **2023-09-18**

* `master`: (status: **stable**, last update: **2023-07-18**) Base branch. This branch contains a slightly modified
  version of Pokémon Crystal, with some quality-of-life improvements intended to make development easier. These
  improvements have been taken from the documentation in the [main disassembly repository][pokecrystal]. This branch
  contains no 16-bit features and it is only intended as a reference.
* `base-components`: (status: **stable**, last update: **2023-07-18**) This branch defines the basic components that
  will comprise the 16-bit index table system, on top of which the remaining branches will be built. Since it only
  defines macros (and a handful of WRAM locations to be shared by all index tables), it should build the same ROM as
  `master`.
* `expand-mon-ID`: (status: **stable**, last update: **2023-07-18**) This branch implements 16-bit indexes for Pokémon
  species, thus allowing more than 253 species to be included in a single game.
* `expand-move-ID`: (status: **stable**, last update: **2023-09-18**) This branch implements 16-bit indexes for moves,
  on top of the existing 16-bit support for Pokémon species from the previous branch. (Interaction between the
  branches is kept to a minimum, though.)
* `newbox`: (status: **experimental**, last update: **2023-07-18**) This branch ports Rangi & FIQ's "newbox" from
  Polished Crystal. Newbox is a complete overhaul to Bill's PC, and this branch ports the functionality on
  top of the previous branches.
* `expand-item-ID`: (status: **very experimental - use at on RISK!**, last update: **2023-10-22**) This branch implements 16-bit
  indexes for items, on top of the existing 16-bit support for Pokémon moves from the `expand-move-ID` branch.
* `item-newbox` : (status: **very experimental - use at on RISK!**, last update: **2023-1022**) This branch is the same
  as the `newbox` branch, but it builds on top of `expand-item-ID`.
* `pokecrystal`: (status: **N/A**, last update **2023-09-17**) This branch contains pret's vanilla pokecrystal and
  should only be used to compare with the previous branches to view pokecrystal16 changes. **DO NOT USE THIS BRANCH!**

To view the differences between any two branches (or any two commits in the repository), you can use GitHub's [tree
comparison][compare] tool.

## FAQs

**Q1:** Will this engine include \<insert additional feature here\>?  
**A1:** Unless the feature is specifically related to 16-bit indexing (or otherwise extending the range of possible
index values), the answer is almost certainly "no". This repository's scope is limited to 16-bit indexes. If you
already have a ROM hack that includes the features you like and you'd want it to have 16-bit indexes, the right course
of action would be to port this engine to it. Otherwise, you can use this engine as a base to make your own ROM hack
with all the features you want.

**Q2:** Can I use this engine for my own ROM hack?  
**A2:** Of course; that's what it was made for. I will try make it as easy as possible to port to existing or new ROM
hacks; instructions to do so will be in the [wiki]. All I can ask you for is that, just like this engine was openly
available for you to use, you make your hack's code openly available as well — quoting some of the text in
[SQLite](https://sqlite.org)'s copyright disclaimer, "may you share freely, never taking more than you give".

**Q3:** What's this engine's new limit on indexes?  
**A3:** The theoretical limit is 65,534, minus a couple of "special" indexes used by the game for specific purposes
(such as the value that indicates that a Pokémon is inside an egg). However, there are several limitations that will
probably prevent you from ever reaching that limit. For starters, you can't fit 65,534 of _anything_ inside a ROM
bank! The index work is done, and I'll try to remove any hurdles that would render that work useless; however, if you
want to push the limits of the hardware and add 20,000 new Pokémon, you'll find yourself against a technical challenge
that will go beyond indexes.

[compare]: https://github.com/aaaaaa123456789/pokecrystal16/compare
[pokecrystal]: https://github.com/pret/pokecrystal/
[wiki]: https://github.com/aaaaaa123456789/pokecrystal16/wiki
