---
title: Layout groups and columns
slug: layout-groups-and-columns
---

Layout is implemented with this scss mixin defined in `_layout_groups.scss`:

```scss
  @mixin wgc-layout-group($modifier, $modifier-value, $wgc-breakpoint) {
    .#{$wgc-namespace}__#{$wgc-breakpoint}layout-group#{$modifier},
    %#{$wgc-namespace}__#{$wgc-breakpoint}layout-group#{$modifier} {
      list-style: none;
      margin: 0;
      padding: 0;

      > .#{$wgc-namespace}__layout__item,
      > %#{$wgc-namespace}__layout__item {
        display: inline-block;
        padding-left: 0;
        padding-right: $modifier-value;

        -webkit-box-sizing: border-box;
           -moz-box-sizing: border-box;
                box-sizing: border-box;
      }

      > .#{$wgc-namespace}__#{$wgc-breakpoint}layout__item--center,
      > %#{$wgc-namespace}__#{$wgc-breakpoint}layout__item--center {
        padding-left: $modifier-value / 2;
        padding-right: $modifier-value / 2;
      }
    }
  }
```

Create a `wgc__#{breakpoint}layout-group--#{gutter-modifier}` element.

The default guttering options are:

```scss
  $wgc-layout-sizes: (
    $wgc-enable-layout--flush                     "--flush"                     0,
    $wgc-enable-layout--gutter-one-quarter-bsu    "--gutter-one-quarter-bsu"    quarter($wgc-bsu),
    $wgc-enable-layout--gutter-one-half-bsu       "--gutter-one-half-bsu"       halve($wgc-bsu),
    $wgc-enable-layout--gutter-one-bsu            "--gutter-one-bsu"            $wgc-bsu,
    $wgc-enable-layout--gutter-two-bsu            "--gutter-two-bsu"            double($wgc-bsu),
    $wgc-enable-layout--gutter-four-bsu           "--gutter-four-bsu"           quadruple($wgc-bsu)
  ) !default;
```
(But these can be overridden in your `main.scss` - and should be if there are unused options!)

E.G.

```html
  <div class="wgc__lap-and-up-layout-group--one-bsu"></div>
```

Then place your `wgc__layout__item`s inside of it:

```html
  <div class="wgc__lap-and-up-layout-group--one-bsu">
    <div class="wgc__layout__item"></div>
    <div class="wgc__layout__item"></div>
    <div class="wgc__layout__item"></div>
  </div>
```
Let's make each `wgc__layout__item` fill one third of its parent:

```html
  <div class="wgc__lap-and-up-layout-group--one-bsu">
    <div class="wgc__layout__item wgc__lap-and-up-column-width--one-third"></div>
    <div class="wgc__layout__item wgc__lap-and-up-column-width--one-third"></div>
    <div class="wgc__layout__item wgc__lap-and-up-column-width--one-third"></div>
  </div>
```

But in order to preserve the column structure i.e. prevent the third child wrapping onto the next line, we need to strip the whitespace that is conferred to them as inline-blocks. This can be done using comment tags:

```html
  <div class="wgc__lap-and-up-layout-group--one-bsu">
    <div class="wgc__layout__item wgc__lap-and-up-column-width--one-third"></div><!--
    --><div class="wgc__layout__item wgc__lap-and-up-column-width--one-third"></div><!--
    --><div class="wgc__layout__item wgc__lap-and-up-column-width--one-third"></div>
  </div>
```

And that's it!
