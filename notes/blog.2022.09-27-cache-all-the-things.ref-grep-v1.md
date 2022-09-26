---
id: eu1jabg7wqbay9d7di84pgp
title: Ref Grep V1
desc: ''
updated: 1664218643029
created: 1664218639066
---

## Synopsis

```
grep [OPTIONS] PATTERN [FILE...]
grep [OPTIONS] [-e PATTERN | -f FILE] [FILE...] 
```

## Gotchas
- large repetitions can cause memory exhaustion
- must escape `()|-` signs
- set option flags **before** the PATTERN

## Options
- -P  use perl like regex (you can lookahead and lookbehind)
- -i: Ignore casecase
- -x: Force search to match line

## Example

```sh
grep 'python' *
```
