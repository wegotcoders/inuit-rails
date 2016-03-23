---
title: Breakpoints
slug: breakpoints
---

In your `main.scss` file, override `$wgc-breakpoints` as you wish. For example,

```scss
  $wgc-breakpoints: (
    "palm-"          "screen and (max-width: 44.9375em)",
    "lap-"           "screen and (min-width: 45em) and (max-width: 63.9375em)",
    "custom-"        "screen and (min-width: 79em)",
  );
```
The default breakpoints are

```scss
  $wgc-breakpoints: (
    ""               "screen and (min-width: 0em)",
    "palm-"          "screen and (max-width: 44.9375em)",
    "lap-"           "screen and (min-width: 45em) and (max-width: 63.9375em)",
    "lap-and-up-"    "screen and (min-width: 45em)",
    "portable-"      "screen and (max-width: 63.9375em)",
    "desk-"          "screen and (min-width: 64em)",
    "retina-"        "(-webkit-min-device-pixel-ratio: 2), (min-resolution: 192dpi), (min-resolution: 2dppx)"
  ) !default;
```
These breakpoints are iterated over by the `wgc-media-query` mixin in `_breakpoints.scss`

```scss
  @mixin wgc-media-query($mq) {
    $breakpoint-found: false;

    @each $wgc-breakpoint in $wgc-breakpoints {
      $alias:     nth($wgc-breakpoint, 1);
      $condition: nth($wgc-breakpoint, 2);

      @if $mq == $alias and $condition {
        $breakpoint-found: true;
        @media #{$condition} {
          @content;
        }
      }
    }

    @if $breakpoint-found == false{
      @warn "Oops! Breakpoint ‘#{$mq}’ does not exist."
    }
  }
```
**WARNING:**

**As you can see, unused breakpoints will result in tons of redundant css whenver this mixin is invoked.**

