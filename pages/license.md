---
title: License
permalink: /license/
jektex: false
---

Content on this site is licensed under the [CC BY-SA 4.0] license. This
means that you can use, copy, share, and modify the content on this site even
for commercial purposes, provided that you:

[CC BY-SA 4.0]: https://creativecommons.org/licenses/by-sa/4.0

- credit the content and its creators by providing a link or a copy if possible
- when requested, remove the credit of creators
- provide a link or, if possible, a copy of the CC BY-SA 4.0 license
- list any modifications you have made to the content
- license the modifications under the same or a compatible CC BY-SA 4.0 license
- do not use any digital right management tools to protect the content
- more information can be found at the [license code][cc-by-sa-4.0-legal]

[cc-by-sa-4.0-legal]: https://creativecommons.org/licenses/by-sa/4.0/legalcode

Content like code snippets, content external to this site, or other pages under
this site that are not in this site's repository might be under a different
license than this site. Please consult the page or repository for the actual
license that the content is under on that page.

> [!NOTE]
> Logos and brands used in the content might be trademarks or registered
> trademarks of their respective owners. Please consult their respective
> guidelines for their usage. All uses are either informative use or a link
> to their site.

The source code is under various licenses and have SPDX expressions to mark
what licenses the code is under. A bill of materials can be created by cloning
the repository this site is hosted on and using the
[REUSE tool](https://reuse.software).

```bash
# Clone the repository
git clone {{ site.github.clone_url }}
# Change directory into the cloned repository
cd {{ site.github.project_title }}
# Create a bill of materials, make sure you have installed reuse
# either by using pipx or your package manager
reuse spdx
```

---

The rest of this page will list dependencies to build the appearance of the
site.

## Generator

<!-- LTeX: enabled=false -->
This site is built with [Jekyll](https://jekyllrb.com), a static site generator
that helps you to create your own website, and it is the default for
[GitHub Pages](https://pages.github.com). Jekyll licensed is under the
[MIT License]. For additional plugins and [Ruby](https://ruby-lang.org)
dependencies, see `Gemfile` and `_plugins` at
<{{ site.github.repository_url }}>.
<!-- LTeX: enabled=true -->

[MIT License]: https://mit-license.org

## Theme

This site uses a modified version of the minima theme.
[Minima](https://github.com/jekyll/minima) is a one-size-fits-all Jekyll theme
for writers, and it is licensed under the [MIT License].

## Math Support

This site includes CSS and fonts from [KaTeX](https://github.com/KaTeX/KaTeX) to
render LaTeX math expressions, which it is under the [MIT License].

## Icons

Icons on this site is from [Font Awesome](https://fontawesome.com) under the
[Font Awesome Free License] and [Octicons] under the [MIT License].

[Font Awesome Free License]: https://fontawesome.com/license/free
[Octicons]:                  https://github.com/primer/octicons

## Layout and Styles

Some layout inspiration are from [Tim Coombs](https://blog.slowb.ro/). Anchor
links are from [Jekyll Anchor Headings] under the [MIT License].

[Jekyll Anchor Headings]: https://github.com/allejo/jekyll-anchor-headings

Some [screen reader only styles][sr-only] are from [Kitty Giraudel] is licensed
under the [MIT License]. Other styles are from the [Poole theme] under the
[MIT License], and [Octicons] under the [MIT License].

[Kitty Giraudel]: https://kittygiraudel.com/snippets/sr-only-class/
[sr-only]:        https://codepen.io/ffoodd/pen/gwKeyq
[Poole theme]:    https://github.com/poole/lanyon
