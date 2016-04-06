---
title: Layout groups and columns
slug: layout-groups-and-columns
---

Layout groups are defined in `_layout_groups.scss` like so:

{% highlight scss %}
  $wgc-guttering-options: (
    (
      dimension: 0,
      bem-modifier: 'flush',
      allowed-breakpoints: $wgc-allowed-breakpoints-for-guttering-option--flush
    ),
    (
      dimension: quarter($wgc-bsu),
      bem-modifier: 'one-quarter-bsu',
      allowed-breakpoints: $wgc-allowed-breakpoints-for-guttering-option--one-quarter-bsu
    ),
    (
      dimension: halve($wgc-bsu),
      bem-modifier: 'one-half-bsu',
      allowed-breakpoints: $wgc-allowed-breakpoints-for-guttering-option--one-half-bsu
    ),
    (
      dimension: $wgc-bsu,
      bem-modifier: 'one-bsu',
      allowed-breakpoints: $wgc-allowed-breakpoints-for-guttering-option--one-bsu
    ),
    (
      dimension: double($wgc-bsu),
      bem-modifier: 'two-bsu',
      allowed-breakpoints: $wgc-allowed-breakpoints-for-guttering-option--two-bsu
    ),
    (
      dimension: quadruple($wgc-bsu),
      bem-modifier: 'four-bsu',
      allowed-breakpoints: $wgc-allowed-breakpoints-for-guttering-option--four-bsu
    )
  ) !default;

  @mixin wgc-layout-group($guttering-dimension, $bem-modifier, $breakpoint-scope, $allowed-breakpoints) {
    @if (breakpoint-scope-is-allowed($breakpoint-scope, $allowed-breakpoints)) {

      .#{$wgc-namespace}__#{$breakpoint-scope}-layout-group__container--#{$bem-modifier},
      %#{$wgc-namespace}__#{$breakpoint-scope}-layout-group__container--#{$bem-modifier} {
        list-style: none;
        margin: 0;
        padding: 0;

        > .#{$wgc-namespace}__layout-group__member,
        > %#{$wgc-namespace}__layout-group__member {
          display: inline-block;
          padding-left: 0;
          padding-right: $guttering-dimension;

          -webkit-box-sizing: border-box;
             -moz-box-sizing: border-box;
                  box-sizing: border-box;
        }
      }
    }
  }

  @each $breakpoint in $wgc-breakpoints {
    $breakpoint-scope: map-get($breakpoint, breakpoint-scope);

    @include wgc-media-query($breakpoint-scope) {
      @each $option in $wgc-guttering-options {
        $dimension:           map-get($option, dimension);
        $bem-modifier:        map-get($option, bem-modifier);
        $allowed-breakpoints: map-get($option, allowed-breakpoints);

        @include wgc-layout-group($dimension, $bem-modifier, $breakpoint-scope, $allowed-breakpoints)
      }
    }
  }
{% endhighlight %}

Implementation
--------------

In your `main.scss` you must declare which of the various breakpoints from `$wgc-breakpoints`
you want to use for a particular guttering option. Do this by setting the corresponding
'allowed breakpoints' variable as a sass list of the desired breakpoint scopes.

E.G.

{% highlight scss %}
  $wgc-allowed-breakpoints-for-guttering-option--one-half-bsu: ('palm', 'lap-and-up');
{% endhighlight %}

This would generate the following css:

{% highlight css %}
  .wgc__palm-layout-group__container--one-half-bsu {
    list-style: none;
    margin: 0;
    padding: 0;
  }

  .wgc__palm-layout-group__container--one-half-bsu > .wgc__layout-group__member {
    display: inline-block;
    padding-left: 0;
    padding-right: 6px;

    -webkit-box-sizing: border-box;
       -moz-box-sizing: border-box;
            box-sizing: border-box;
  }

  .wgc__lap-and-up-layout-group__container--one-half-bsu {
    list-style: none;
    margin: 0;
    padding: 0;
  }

  .wgc__lap-and-up-layout-group__container--one-half-bsu > .wgc__layout-group__member {
    display: inline-block;
    padding-left: 0;
    padding-right: 6px;

    -webkit-box-sizing: border-box;
       -moz-box-sizing: border-box;
            box-sizing: border-box;
  }
{% endhighlight %}

{% highlight html %}
  <div class="wgc__lap-and-up-layout-group__container--one-bsu"></div>
{% endhighlight %}

Then place your `wgc__layout-group__member`s inside of it:

{% highlight html %}
  <div class="wgc__lap-and-up-layout-group__container--one-bsu">
    <div class="wgc__layout-group__member"></div>
    <div class="wgc__layout-group__member"></div>
    <div class="wgc__layout-group__member"></div>
  </div>
{% endhighlight %}

Let's make each `wgc__layout-group__member` fill one third of its parent:

{% highlight html %}
  <div class="wgc__lap-and-up-layout-group__container--one-bsu">
    <div class="wgc__layout-group__member wgc__lap-and-up-column-width--one-third"></div>
    <div class="wgc__layout-group__member wgc__lap-and-up-column-width--one-third"></div>
    <div class="wgc__layout-group__member wgc__lap-and-up-column-width--one-third"></div>
  </div>
{% endhighlight %}

But in order to preserve the column structure i.e. prevent the third child wrapping onto the next line, we need to strip the whitespace that is conferred to them as inline-blocks. This can be done using comment tags:

{% highlight html %}
  <div class="wgc__lap-and-up-layout-group__container--one-bsu">
    <div class="wgc__layout-group__member wgc__lap-and-up-column-width--one-third"></div><!--
    --><div class="wgc__layout-group__member wgc__lap-and-up-column-width--one-third"></div><!--
    --><div class="wgc__layout-group__member wgc__lap-and-up-column-width--one-third"></div>
  </div>
{% endhighlight %}

(or in haml by placing a `>` at the end of the line)

{% highlight haml %}
  .wgc__lap-and-up-layout-group__container--one-bsu
    .wgc__layout-group__member.wgc__lap-and-up-column-width--one-third>
    .wgc__layout-group__member.wgc__lap-and-up-column-width--one-third>
    .wgc__layout-group__member.wgc__lap-and-up-column-width--one-third>
{% endhighlight %}
