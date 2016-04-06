---
title: Box model
slug: box-model
---

Padding classes are generated as follows in `_box_model.scss`:

{% highlight scss %}
  $wgc-padding-options: (
    (
      dimension:           0,
      bem-modifier:        'none',
      allowed-breakpoints: $wgc-allowed-breakpoints-for-paddings--none
    ),
    (
      dimension:           quarter($wgc-bsu),
      bem-modifier:        'one-quarter-bsu',
      allowed-breakpoints: $wgc-allowed-breakpoints-for-paddings--one-quarter-bsu
    ),
    (
      dimension:           halve($wgc-bsu),
      bem-modifier:        'one-half-bsu',
      allowed-breakpoints: $wgc-allowed-breakpoints-for-paddings--one-half-bsu
    ),
    (
      dimension:           $wgc-bsu,
      bem-modifier:        'one-bsu',
      allowed-breakpoints: $wgc-allowed-breakpoints-for-paddings--one-bsu
    ),
    (
      dimension:           double($wgc-bsu),
      bem-modifier:        'two-bsu',
      allowed-breakpoints: $wgc-allowed-breakpoints-for-paddings--two-bsu
    ),
    (
      dimension:           quadruple($wgc-bsu),
      bem-modifier:        'four-bsu',
      allowed-breakpoints: $wgc-allowed-breakpoints-for-paddings--four-bsu
    )
  );

  @mixin wgc-paddings($dimension, $bem-modifier, $allowed-breakpoints) {
    @each $breakpoint in $wgc-breakpoints {
      $breakpoint-scope: map-get($breakpoint, breakpoint-scope);

      @if (breakpoint-scope-is-allowed($breakpoint-scope, $allowed-breakpoints)) {
        @include wgc-media-query($breakpoint-scope) {
          .#{$wgc-namespace}__#{$breakpoint-scope}-paddings-all--#{$bem-modifier} {
            padding:         $dimension !important;
          }

          .#{$wgc-namespace}__#{$breakpoint-scope}-padding-top--#{$bem-modifier} {
            padding-top:     $dimension !important;
          }

          .#{$wgc-namespace}__#{$breakpoint-scope}-padding-right--#{$bem-modifier} {
            padding-right:   $dimension !important;
          }

          .#{$wgc-namespace}__#{$breakpoint-scope}-padding-bottom--#{$bem-modifier} {
            padding-bottom:  $dimension !important;
          }

          .#{$wgc-namespace}__#{$breakpoint-scope}-padding-left--#{$bem-modifier} {
            padding-left:    $dimension !important;
          }

          .#{$wgc-namespace}__#{$breakpoint-scope}-paddings-horizontal--#{$bem-modifier} {
            padding-right:   $dimension !important;
            padding-left:    $dimension !important;
          }

          .#{$wgc-namespace}__#{$breakpoint-scope}-paddings-vertical--#{$bem-modifier} {
            padding-top:     $dimension !important;
            padding-bottom:  $dimension !important;
          }
        }
      }
    }
  }

  @each $option in $wgc-padding-options {
    $dimension:           map-get($option, dimension);
    $bem-modifier:        map-get($option, bem-modifier);
    $allowed-breakpoints: map-get($option, allowed-breakpoints);

    @include wgc-paddings($dimension, $bem-modifier, $allowed-breakpoints);
  }
{% endhighlight %}

Margins and negative margins follow a similar configuration and logic.

Implementation
--------------

In your `main.scss` you must declare which of the various breakpoints from `$wgc-breakpoints`
you want to use for a particular guttering option. Do this by setting the corresponding
'allowed breakpoints' variable as a sass list of the desired breakpoint scopes.

E.G.

{% highlight scss %}
  $wgc-allowed-breakpoints-for-paddings--one-quarter-bsu: ('lap-and-up');
{% endhighlight %}

This would generate the following css:

{% highlight css %}
  .wgc__lap-and-up-paddings-all--one-quarter-bsu {
    padding:        6px !important;
  }

  .wgc__lap-and-up-padding-top--one-quarter-bsu {
    padding-top:    6px !important;
  }

  .wgc__lap-and-up-padding-right--one-quarter-bsu {
    padding-right:  6px !important;
  }

  .wgc__lap-and-up-padding-bottom--one-quarter-bsu {
    padding-bottom: 6px !important;
  }

  .wgc__lap-and-up-padding-left--one-quarter-bsu {
    padding-left:   6px !important;
  }

  .wgc__lap-and-up-paddings-horizontal--one-quarter-bsu {
    padding-right:  6px !important;
    padding-left:   6px !important;
  }

  .wgc__lap-and-up-paddings-vertical--one-quarter-bsu {
    padding-top:    6px !important;
    padding-bottom: 6px !important;
  }
{% endhighlight %}
