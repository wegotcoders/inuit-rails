---
title: Box model
slug: box-model
---

Box model classes are generated like this in `_box_model.scss`:

{% highlight scss %}
  @mixin wgc-generate-spacing() {
    @each $wgc-breakpoint in $wgc-breakpoints {

      $wgc-generate-spacing-alias:      nth($wgc-breakpoint, 1) !global;
      $wgc-generate-spacing-condition:  nth($wgc-breakpoint, 2);

      @if ($wgc-generate-spacing-alias != "retina-") {
        @include wgc-media-query($wgc-generate-spacing-alias) {
          @content;
        }
      }

      $wgc-generate-spacing-alias: null !global;
    }
  }

  @if ($wgc-enable-margins--one-quarter-bsu == true) {
    @include wgc-generate-spacing() {
      .#{$wgc-namespace}__#{$wgc-generate-spacing-alias}margins-all--one-quarter-bsu                { margin:           quarter($wgc-bsu) !important; }
      .#{$wgc-namespace}__#{$wgc-generate-spacing-alias}margin-top--one-quarter-bsu                 { margin-top:       quarter($wgc-bsu) !important; }
      .#{$wgc-namespace}__#{$wgc-generate-spacing-alias}margin-right--one-quarter-bsu               { margin-right:     quarter($wgc-bsu) !important; }
      .#{$wgc-namespace}__#{$wgc-generate-spacing-alias}margin-bottom--one-quarter-bsu              { margin-bottom:    quarter($wgc-bsu) !important; }
      .#{$wgc-namespace}__#{$wgc-generate-spacing-alias}margin-left--one-quarter-bsu                { margin-left:      quarter($wgc-bsu) !important; }
      .#{$wgc-namespace}__#{$wgc-generate-spacing-alias}margins-horizontal--one-quarter-bsu         { margin-right:     quarter($wgc-bsu) !important;     margin-left:   quarter($wgc-bsu) !important; }
      .#{$wgc-namespace}__#{$wgc-generate-spacing-alias}margins-vertical--one-quarter-bsu           { margin-top:       quarter($wgc-bsu) !important;     margin-bottom: quarter($wgc-bsu) !important; }
    }
  }
{% endhighlight %}

Therefore to use `wgc__lap-and-up-margins-all--one-quarter-bsu` in your markup just set

`$wgc-enable-margins--one-quarter-bsu: true;`

in your `main.scss`.

And that's it!
