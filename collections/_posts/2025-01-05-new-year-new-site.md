---
title: New Year, New Site
description: >-
    How to create an accessible Jekyll site with the default Minima theme for
    the new year
---

After a detour of creating a [portfolio site](/CSCE190) for my CSCE190 class,
and now I have free time over the break, it is a great time to rebuild this site
from scratch as my last attempts making a mostly accessible site with dark mode
didn't go well. Not the fact that the theme I was modifying,
[Lanyon](https://github.com/poole/lanyon), has a sidebar that is not very
accessible without JavaScript. Nor modifications to the theme are simple. So
keeping in mind of the "[Keep it simple, silly][KISS]" principle, having a
minimal design, and no JavaScript on the client, let's see how I can make a
better site than the last one.

[KISS]: https://en.wikipedia.org/wiki/KISS_principle

## Choosing a site generator

For getting a simple site up quickly, [Jekyll](https://jekyllrb.com) is the
choice for me as it was the previous generator I used, and it is the default for
[GitHub Pages](https://pages.github.com/versions/) albeit its version of Jekyll
is outdated. Compared to [Hugo](https://gohugo.io), yes I need to install
[Ruby](https://www.ruby-lang.org), plugins for features that are built in to
Hugo and has a short build time. However, there are benefits to use Jekyll than
Hugo. The [Liquid](https://shopify.github.io/liquid/) templates that Jekyll uses
is easier to use than Go templates, as I don't have to use postfix operations
for tags and Liquid, as I currently learned, can also suppress the emissions of
whitespace by adding dashes in the Liquid variables and tags like so:

```liquid
{%- raw -%}
This tag will emit whitespace before and after the tag
{% if false %}
    This tag will emit whitespace before the tag
{% elsif true -%}
    This tag will emit whitespace after the tag
{%- else %}
    This tag will not emit whitespace before and after the tag
{%- endif -%}
{% endraw %}
```

It is a bit tricky to have consistent whitespace for the output, but you can put
dashes and use a minifier for hosting. You don't need it for variables if there
is no whitespace between the HTML and the Liquid tags.

---

<!-- LTeX: enabled=false -->
Having native support in the site generator is great, however Jekyll's plugin
systems allows me to modify existing plugins as local plugins. There are some
features that I don't want like CSS injection at build time for admonitions.
Changing a setting in a plugin that is not using `_config.yaml`. Using a plugin
that is not hosted on [RubyGems](https://rubygems.org/). See the `_plugins`
folder at <{{ site.github.repository_url }}> for those examples.
<!-- LTex: enabled=true -->

But the major benefit to Jekyll is that it provides a default theme that is has
a minimal design, [Minima](https://github.com/jekyll/minima). The latest version
supports icons for socials and dark mode, making me do much less work. Still the
version that Jekyll provides is old, and I need to modify the theme anyway so
time to clone the theme right into the site.

## Modifications

The biggest modification I need to make is changing the colors, so the site is
compliant with Web Content Accessibility Guidelines (WCAG). These set of
guidelines lets designers create sites with disabled people in mind. The hardest
and what designers might strive for is
[WCAG on enhanced contrast](https://www.w3.org/TR/WCAG22/#contrast-enhanced). It
requires body text to at least to have a contrast ratio of 7 to 1 against the
background. However, link to body text needs a contrast of at least 3:1, making
it difficult to find a balance between background, body and link colors. After
considerations and to keep it simple, I use Minima's original colors and try to
follow [WCAG on contrast][wcag-1.4.3] which requires a text against background
contrast of at least 4.5:1, still it's difficult to satisfy.

[wcag-1.4.3]: https://www.w3.org/TR/WCAG22/#contrast-minimum

*[WCAG]: Web Content Accessibility Guidelines

Additional modifications I made are edits to the header and footer, including
replacing the icons with [Font Awesome's](https://fontawesome.com). Update the
styles to account for breaking changes in [Sass](https://sass-lang.com). Add
[$$\jektex$$](https://github.com/yagarea/jektex) to render math expressions
using [$$\KaTeX$$](https://katex.org). Kramdown does have math support with
$$\KaTeX$$ but its more out of date than $$\jektex$$, and it does not support
the usual [$$\LaTeX$$](https://www.latex-project.org/) syntax for math mode. But
I cannot escape them in code blocks yet, so sticking to the double dollar
kramdown syntax is recommended and more portable.

```markdown
$$a^{2} + b^{2} = c^{2}$$
```

$$a^{2} + b^{2} = c^{2}$$

I also added GitHub alerts to the site by using a
[Jekyll plugin](https://github.com/Helveg/jekyll-gfm-admonitions) as notice
boxes and colors from GitHub, which conforms to
[WCAG on color contrast][wcag-1.4.3].

```markdown
> [!NOTE]
> This is a note.

> [!TIP]
> This is a tip.
```

> [!NOTE]
> This is a note.

<!--  -->

> [!TIP]
> This is a tip.

<!-- LTeX: enabled=false -->
Lastly along the way I added more Jekyll plugins, configurations for linters,
formatters, minifiers, [pre-commit](https://pre-commit.com/), and GitHub Actions
to build and host the site. And it's much cleaner and nicer than before. Any
modifications and source code of this site can be seen at
<{{ site.github.repository_url }}>.
<!-- LTex: enabled=true -->
