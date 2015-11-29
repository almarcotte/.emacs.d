# Emacs Settings

Always a work in progress. I don't particularily recommend anyone to use this. It's mostly so I can easily keep
my environment between multiple computers.

### General idea

Everything is separated into modules. The `settings` directory has multiple elisp files corresponding to
either emacs packages (such as `helm`) or as as a way to group related settings. The `init.el` file makes sure
`use-package` is available (as well as `package.el`) and loads everything in `settings`.

The `site-lisp` folder is for packages or files that aren't loaded through melpa. It is added to the load path
along with all of its sub-directories. You can, for instance, grab a package through git by adding it as a submodule
and cloning it into `site-lisp`.

### Adding packages

1. Create a new setting file under `settings/`, ex: `settings/settings-foo.el`
2. Use `use-package` or `require` to install the package through emacs' package system
3. In `settings-foo.el` add any configurations, bindings, etc... related to that package
4. Add `settings-foo` to `settings-files` in `init.el`, it'll be loaded when emacs starts

### Next steps

* Flycheck is not playing nicely with Clojure
* Powerline / mode-line needs work
* Having issues with Powerline on a Chromebook through Crouton -- might be more of a Crouton issue
