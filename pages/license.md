---
title: License
permalink: /license/
---

Content on this site is licensed under the
[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0) license. This
means that you can use, copy, share, and modify the content on this site even
for commercial purposes, provided that you:

- credit the content and its creators by providing a link or a copy if possible
- when requested, remove the credit of creators
- provide a link or, if possible, a copy of the CC BY-SA 4.0 license
- list any modifications you have made to the content
- license the modifications under the same or a compatible CC BY-SA 4.0 license
- do not use any digital right management tools to protect the content

More information can be found in the
[license code](https://creativecommons.org/licenses/by-sa/4.0/legalcode).

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
# Clone the site's repository
git clone {{ site.github.clone_url }}
# Change directory into the site's repository
cd {{ site.github.project_title }}
# Create a bill of materials, make sure you have installed reuse
# Either by using pipx or your package manager
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
dependencies, see the `Gemfile` and the `_plugins` folder at
<{{ site.github.repository_url }}>.
<!-- LTeX: enabled=true -->

[MIT License]: https://opensource.org/license/mit

## Theme

This site uses a modified version of the minima theme.
[Minima](https://github.com/jekyll/minima) is a one-size-fits-all Jekyll theme
for writers, and it is licensed under the [MIT License].

## Math Support

This site includes CSS and fonts from [KaTeX](https://katex.org) to render LaTeX
math expressions, which it is under the [MIT License].

## Icons

Icons on this site is from [Font Awesome](https://fontawesome.com) under the
[Font Awesome Free License][fafl] which is composed of the [MIT License] for the
code, the [Open Font License][ofl] for fonts, and the
[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) for icons. And
[Octicons] under the [MIT License].

[fafl]:      https://fontawesome.com/license/free
[ofl]:       https://openfontlicense.org/open-font-license-official-text/
[Octicons]:  https://primer.style/foundations/icons/

## Layout and Styles

Some layout inspiration is from [Tim Coombs](https://blog.slowb.ro/). Some
styles are from the [Poole theme](https://github.com/poole/lanyon) under the
[MIT License], and [Octicons] under the [MIT License].
