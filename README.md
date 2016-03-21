inuit-rails
===========

An attempt to get inuit css framework to play nicely with rails.

It is strategy #2 in this useful blog post: http://www.codefellows.org/blog/five-ways-to-manage-front-end-assets-in-rails

Of all the options, I wanted to have a way of keeping control over how and when I update the framework, whilst keeping bower out of my main rails app. This is the compromise that I came up with.

Using inuit-rails
-----------------

This repo combines all of the repos on the inuit github page https://github.com/inuitcss. A few particular files selected from the older -- csswizardry url -- which are not yet covered in the -- inuit css version -- are to be found in `lib/vendor/assets/stylesheets/wgc/csswizardy`.

`lib/vendor/assets/stylesheets/wgc/modified_inuit_behaviour`

`lib/vendor/assets/stylesheets/wgc/additional_behaviour`

You can opt to bring in whichever modules you want, the philosophy behind this is that you import the least css necessary for the job.

On the Rails side therefore, create a sass/scss file somewhere in your app/assets/stylesheets folder, which does the importing of just the modules you need. But sure that you import the modules in the correct order -- insert correct order here --. For example

Rules of thumb
--------------

## TODOS:
## guarantee code
## artists please improve the pallette
## <!-- --> or > hack!
## $wgc-layout-namespace
## $wgc-widths-namespace
## $inuit-global-border-box
## open source the demo page carousel
## example config with manifest file
## 'goes-like' rules: including colours
## american spelling conventions for universality
## facility to generate extra breakpoints from manifest file :) -- and append to lists generally
## for an example of this being used in anger head over to  demo page
## #{property}--#{value}
## responsive colors
## configuring size of border-radii
## responsive wgc add ons

Take advantage of the box-sizing property

```
  @import "inuit-defaults/settings.defaults";

  @import "inuit-functions/tools.functions";
  @import "inuit-mixins/tools.mixins";

  @import "inuit-normalize/generic.normalize";
  @import "inuit-box-sizing/generic.box-sizing";

  @import "inuit-page/base.page";
  @import "inuit-headings/base.headings";

  // Objects would go next...
```

Contributing to inuit-rails
---------------------------

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.
