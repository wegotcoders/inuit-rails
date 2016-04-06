---
title: Breakpoints
slug: breakpoints
---

In your `main.scss` file, define your desired breakpoints in `$wgc-breakpoints` as a sass map.

For example,

{% highlight scss %}
  $wgc-breakpoints: (
    (
      breakpoint-scope:     'all-devices',
      breakpoint-condition: 'screen and (min-width: 0em)'
    ),
    (
      breakpoint-scope:     'palm',
      breakpoint-condition: 'screen and (max-width: 44.9375em)'
    ),
    (
      breakpoint-scope:     'lap',
      breakpoint-condition: 'screen and (min-width: 45em) and (max-width: 63.9375em)'
    ),
    (
      breakpoint-scope:     'lap-and-up',
      breakpoint-condition: 'screen and (min-width: 45em)'
    ),
    (
      breakpoint-scope:     'portable',
      breakpoint-condition: 'screen and (max-width: 63.9375em)'
    ),
    (
      breakpoint-scope:     'desk',
      breakpoint-condition: 'screen and (min-width: 64em)'
    )
  ) !default;
{% endhighlight %}

These breakpoints are iterated over by the `wgc-media-query` mixin defined in `_breakpoints.scss`

{% highlight scss %}
@mixin wgc-media-query($device-alias) {
  $breakpoint-found: false;

  @each $breakpoint in $wgc-breakpoints {
    $breakpoint-scope:     map-get($breakpoint, breakpoint-scope);
    $breakpoint-condition: map-get($breakpoint, breakpoint-condition);

    @if ($device-alias == $breakpoint-scope) {
      $breakpoint-found: true;
      @media #{$breakpoint-condition} {
        @content;
      }
    }
  }

  @if $breakpoint-found == false {
    @warn 'Oops! Breakpoint ‘#{$device-alias}’ does not exist.'
  }
}
{% endhighlight %}

**WARNING:**

**As you can see, unused breakpoints will result in tons of redundant css whenver this mixin is invoked.**
