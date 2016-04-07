inuit-rails
===========

Compiling inuitcss with Rails Sprockets + some extra great stuff!

Configuration
--------------

For a working example take a look in `example/main.scss`

The 'vanilla inuit' modules within `inuitcss/` and `csswizardry/` must be imported in the following order

1. Settings
2. Tools
3. Generic
4. Base
5. Objects
6. Components
7. Trumps

E.G.

```scss
  @import "inuit-defaults/settings.defaults";

  @import "inuit-functions/tools.functions";
  @import "inuit-mixins/tools.mixins";

  @import "inuit-normalize/generic.normalize";
  @import "inuit-box-sizing/generic.box-sizing";

  @import "inuit-page/base.page";
  @import "inuit-headings/base.headings";

  // Objects would go next...
```

For help using the additional wegotcoders modules (recommended), please RTFM at https://wegotcoders.github.io/inuit-rails/

About
-----

This gem combines all of the repos on the new inuitcss github page
https://github.com/inuitcss.

A few of the files here have been included from the older inuitcss repo at
https://github.com/csswizardry/inuit.css/ since they are not yet covered by the
newest version. These are located in `csswizardy/`.

Some custom inuit-esque files are located in `wegotcoders/modified_inuit_css/`.
The syntax here has been adapted for improved 'guessability'. In addition each
class has been coupled to all of the breakpoints.

Some extra helper files, including a color palette, are located in
`wegotcoders/wgc_add_ons/`. These can be useful
for customising elements beyond the basic macros of the inuitcss
classes.

Contributing to inuit-rails
---------------------------

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.
