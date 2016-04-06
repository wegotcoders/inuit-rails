---
title: Configuration
slug: configuration
---

The defualt configuration variables are defined as follows in `_wgc_config.scss`.

(For an example of how to override this please see `examples/main.scss` in the gem.)

{% highlight scss %}
  $wgc-bsu:                                                       24px    !default;
  $wgc-base-text-color:                                           #333333 !default;
  $wgc-base-background-color:                                     #FFFFFF !default;
  $wgc-namespace:                                                 'wgc'   !default;

  $wgc-border-radius:                                             3px     !default;

  $wgc-allowed-breakpoints-for-guttering-option--flush:           ()      !default;
  $wgc-allowed-breakpoints-for-guttering-option--one-quarter-bsu: ()      !default;
  $wgc-allowed-breakpoints-for-guttering-option--one-half-bsu:    ()      !default;
  $wgc-allowed-breakpoints-for-guttering-option--one-bsu:         ()      !default;
  $wgc-allowed-breakpoints-for-guttering-option--two-bsu:         ()      !default;
  $wgc-allowed-breakpoints-for-guttering-option--four-bsu:        ()      !default;

  $wgc-allowed-breakpoints-for-column-group-wholes:               ()      !default;
  $wgc-allowed-breakpoints-for-column-group-halves:               ()      !default;
  $wgc-allowed-breakpoints-for-column-group-thirds:               ()      !default;
  $wgc-allowed-breakpoints-for-column-group-quarters:             ()      !default;
  $wgc-allowed-breakpoints-for-column-group-fifths:               ()      !default;
  $wgc-allowed-breakpoints-for-column-group-sixths:               ()      !default;
  $wgc-allowed-breakpoints-for-column-group-sevenths:             ()      !default;
  $wgc-allowed-breakpoints-for-column-group-eighths:              ()      !default;
  $wgc-allowed-breakpoints-for-column-group-ninths:               ()      !default;
  $wgc-allowed-breakpoints-for-column-group-tenths:               ()      !default;
  $wgc-allowed-breakpoints-for-column-group-elevenths:            ()      !default;
  $wgc-allowed-breakpoints-for-column-group-twelfths:             ()      !default;
  $wgc-allowed-breakpoints-for-column-group-thirteenths:          ()      !default;
  $wgc-allowed-breakpoints-for-column-group-fourteenths:          ()      !default;
  $wgc-allowed-breakpoints-for-column-group-fifteenths:           ()      !default;
  $wgc-allowed-breakpoints-for-column-group-sixteenths:           ()      !default;
  $wgc-allowed-breakpoints-for-column-group-seventeenths:         ()      !default;
  $wgc-allowed-breakpoints-for-column-group-eighteenths:          ()      !default;
  $wgc-allowed-breakpoints-for-column-group-nineteenths:          ()      !default;
  $wgc-allowed-breakpoints-for-column-group-twentieths:           ()      !default;

  $wgc-allowed-breakpoints-for-paddings--none:                    ()      !default;
  $wgc-allowed-breakpoints-for-paddings--one-quarter-bsu:         ()      !default;
  $wgc-allowed-breakpoints-for-paddings--one-half-bsu:            ()      !default;
  $wgc-allowed-breakpoints-for-paddings--one-bsu:                 ()      !default;
  $wgc-allowed-breakpoints-for-paddings--two-bsu:                 ()      !default;
  $wgc-allowed-breakpoints-for-paddings--four-bsu:                ()      !default;
  $wgc-allowed-breakpoints-for-margins--none:                     ()      !default;
  $wgc-allowed-breakpoints-for-margins--one-quarter-bsu:          ()      !default;
  $wgc-allowed-breakpoints-for-margins--one-half-bsu:             ()      !default;
  $wgc-allowed-breakpoints-for-margins--one-bsu:                  ()      !default;
  $wgc-allowed-breakpoints-for-margins--two-bsu:                  ()      !default;
  $wgc-allowed-breakpoints-for-margins--four-bsu:                 ()      !default;
  $wgc-allowed-breakpoints-for-negative-margins--one-quarter-bsu: ()      !default;
  $wgc-allowed-breakpoints-for-negative-margins--one-half-bsu:    ()      !default;
  $wgc-allowed-breakpoints-for-negative-margins--one-bsu:         ()      !default;
  $wgc-allowed-breakpoints-for-negative-margins--two-bsu:         ()      !default;
  $wgc-allowed-breakpoints-for-negative-margins--four-bsu:        ()      !default;

  $wgc-allowed-breakpoints-for-layout-helpers:                    ()      !default;
  $wgc-allowed-breakpoints-for-colours:                           ()      !default;
  $wgc-allowed-breakpoints-for-borders:                           ()      !default;
  $wgc-allowed-breakpoints-for-lists:                             ()      !default;
  $wgc-allowed-breakpoints-for-typography:                        ()      !default;
{% endhighlight %}