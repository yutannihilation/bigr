# bigr

R Markdown Template for [big](https://github.com/tmcw/big)

## Installation

You can install the dev version of bigr with:

``` r
devtools::install_github("yutannihilation/bigr")
```

## Example

[This presentation](https://yutannihilation.github.io/bigr/demo.html) is knitted from this Rmd:

````md
---
title: "Template Title"
author: "Your Name"
date: "The Date"
output: bigr::big_presentation
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

It's _big_, but a little more eazy

---

Put dashes between slides to separate them.

---

Supports lists

* Like
* This
* One

---

Code

```{r}
summary(iris)
```

---

Plot

```{r}
plot(0)
```
````
