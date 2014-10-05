inuit-rails
===========

An attempt to get inuit css framework to play nicely with rails.

It is strategy #2 in this useful blog post: http://www.codefellows.org/blog/five-ways-to-manage-front-end-assets-in-rails

Of all the options, I wanted to have a way of keeping control over how and when I update the framework, whilst keeping bower out of my main rails app. This is the compromise that I came up with.

Using inuit-rails
-----------------

I've tried to bring in pretty much all of the components on the inuit github page https://github.com/inuitcss; but the whole point of it is that you only bring in the parts that you need.

Therefore on the Rails side, create a sass/scss file somewhere in your app/assets/stylesheets folder, which does the importing of just the modules you need. E.g.

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

I couldn't really get this to play nicely with the extensive use of variables, unless I import the stylesheets from the main app. To set a button colour for instance, you can add a variable before the part of the framework that you are importing, e.g.

```
  $inuit-btn-background: #09992a;
  @import "inuit-buttons/objects.buttons";
```

Contributing to inuit-rails
---------------------------

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.