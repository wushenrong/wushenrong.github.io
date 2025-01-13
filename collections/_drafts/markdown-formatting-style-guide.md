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

Support these features depends on an implantation extension or "flavors" of
Markdown, and they might be incompatible with each other with different syntax.
Even so Markdown is not very customizable without actual HTML and CSS. But for
most people, including me, the features that Markdown provides is good enough.
If you need more additional features and complex customizations, then use a
different markup language, bring the right tools for the job.

Regardless, big projects still need to guarantee that their Markdown document is
consistently written the way and uses a well-supported flavor that most tools
can parse the document, this where the Markdown Formatting Style Guide comes in.

> [!IMPORTANT]
> This is a formatting style guide, **not** a writing style guide. As with any
> document you would write, please follow the proper spelling, grammar, and
> writing style that your project requires.

## Considerations

This document will mainly use and consider [GitHub Flavor Markdown](https://github.github.com/gfm/)
(GFM) as the main Markdown flavor and [kramdown] as a secondary flavor.

[kramdown]: https://kramdown.gettalong.org/

*[GFM]: GitHub Flavor Markdown

Rational: Most flavors of Markdown and editors supports GFM either as a native
feature or as an extension due to the popularity of GitHub. Features from
kramdown allow customizations that are useful for authoring and has GFM support.

<!-- LTeX: enabled=false -->
- [kramdown] with [`kramdown-parser-gfm`](https://github.com/kramdown/parser-gfm).
- [Pandoc](https://pandoc.org/) with the `--format=gfm` option.
- [VSCode](https://code.visualstudio.com/) with [GitHub Markdown Preview][vscode-gh-md].
- And many more depending on your editor.
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

Enforcement: Use the following style linters and formatters to enforce this
style guide.

-   [EditorConfig](https://editorconfig.org/)

-   Choose one of the following:

    -   [markdownlint](https://github.com/DavidAnson/markdownlint)

    -   [remark](https://remark.js.org) with plugins for linting, GFM and
        frontmatter support

-   And reading both the source and rendered Markdown document.

This guide will use markdownlint as it's the most popular linter for Markdown
with plugin support for many editors and has an easy configuration.

## Source document

### File extension

Use `.md` for Markdown documents, this includes very important documents listed
in [File name](#file-name).

Rational: `.md` is popular and shorter than `.markdown`.

### File name

Use alphanumeric ASCII characters with hyphens `-` or underscores `_` and be
either in the following formats:

-   `SCREAMING_SNAKE_CASE` for important documentation in source control:
    - `README.md`
    - `CHANGELOG.md`
    - `CONTRIBUTING.md`
    - `CODE_OF_CONDUCT.md`
    - etc

    Rational: Important documents like project information, important changes,
    or contributing guidelines can be quickly located by looking for or sorted
    by uppercase letters first.

-   Or `kebab-case` for publishing on the web and all other Markdown documents:

    ```plaintext
    file-name.md
    01-01-2025-file-name-with-date.md
    ```

    Rational: Hyphens are the most popular word separators in URLs and helps
    search engines find keywords[^1].

[^1]: <https://developers.google.com/search/docs/crawling-indexing/url-structure>

### File encoding

Use UTF-8 and Unicode characters instead of HTML character reference.

Rational: Most, if not all, pages on the web are encoded in UTF-8 and Unicode
character are much more readable in the source document.

### Character line limit

## Whitespace

### Line breaks

## Frontmatter

## Headings
