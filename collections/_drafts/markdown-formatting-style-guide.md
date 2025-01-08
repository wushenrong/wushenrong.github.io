---
title: Markdown Formatting Style Guide
description: >-
    An opinionated style guide on how to format Markdown in a document and on
    the web.
jektex: false
---

After getting my site rebuilt, I think it's a great time to create a formatting
style guide for [Markdown], after all that is what I use to blog on this site,
and many people also use it to create documentation, send messages, taking
notes, and more.

[Markdown]: https://daringfireball.net/projects/markdown/

Table of Contents:

-   List of Markdown Rules To Follow
{:toc}

## Why Markdown

Why use Markdown and not [AsciiDoc](https://asciidoc.org/), [Typst](https://typst.app),
[Textile](https://textile-lang.com), or other [lightweight markup languages][light-markup-langs].
Well there are three reasons:

[light-markup-langs]: https://en.wikipedia.org/wiki/Lightweight_markup_language

-   Simplicity:

    -   Markdown is very easy to write and is less visually noisy then other
        markup languages, making it easily to be parsed and read by everyone.

    -   There are many different ways to write Markdown, and they can all
        represent the same document, allowing people to choose how they want to
        write Markdown.

-   HTML Support:

    -   Markdown is most commonly parsed down to HTML and can support most of
        HTML elements directly in the document.

    -   There are Markdown extension that adds more HTML elements as native
        features.

-   Popularity:

    -   Because of its simple syntax and HTML support, many sites and
        application integrate and support Markdown, leading to many people learn
        and write basic Markdown.

However, Markdown has disadvantages due to its simplicity and needs extensions
to support:

- Tables
- Code blocks with syntax highlighting
- Footnotes
- Custom heading IDs
- Definition lists
- Strikethrough
- Table of Contents
- and many more features that are not in the original Markdown implementation

Support these features depends on the extension or "flavors" of Markdown, and
they might be incompatible with each other with different syntax. Even so
Markdown is not very customizable without actual HTML and CSS. But for most
people, including me, the Markdown features that their tools provides is good
enough. If you need more additional features and complex customizations, then
use a different markup language, bring the right tools for the job.

Regardless, big projects still need to guarantee that their Markdown document is
consistently written the way and uses a well-supported flavor that most tools
can parse the document, this where the Markdown Formatting Style Guide comes in.

## Considerations

This document will mainly consider [GitHub Flavor Markdown](https://github.github.com/gfm/)
(GFM) as the default extension of Markdown for usage and [kramdown] as a
secondary extension.

[kramdown]: https://kramdown.gettalong.org/

*[GFM]: GitHub Flavor Markdown

Rational: Other flavors and tools supports GFM either as a native feature or as
an extension due to the popularity of GitHub. Features from kramdown allow
customizations that is useful for authoring and has GFM support.

Enforcement: Use GFM and tools that support it.

<!-- LTeX: enabled=false -->
- [kramdown] with [`kramdown-parser-gfm`](https://github.com/kramdown/parser-gfm)
- [Pandoc](https://pandoc.org/) with the `--format=gfm` option.
- [VSCode](https://code.visualstudio.com/) with [GitHub Markdown Preview][vscode-gh-md]
- And many more based on your tools and editor.
<!-- LTeX: enabled=true -->

[vscode-gh-md]: https://marketplace.visualstudio.com/items?itemName=bierner.github-markdown-preview

For portability of other flavors (e.g. [CommonMark](https://commonmark.org/)
whence GFM is an extension of) that has features that differs from GFM, this
guide will list first rules then any exceptions and information regarding
portability, kramdown and using Markdown on sites.

For a simple, readable, maintainable, and portable GFM document. This guide will
consider rules from [Santilli's](https://doi.org/10.5281/zenodo.3464189) and
[Google's][google-style-guide] style guides.

[google-style-guide]: https://google.github.io/styleguide/docguide/style.html

> [!IMPORTANT]
> This formatting style guide is **not** a writing style guide. As with any
> document you would write, please follow the proper spelling, grammar, and
> writing style that your project requires.
