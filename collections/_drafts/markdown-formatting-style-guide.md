---
title: Markdown Formatting Style Guide
description: >-
    An opinionated style guide on how to format Markdown in a document and on
    the web.
---

After getting my site rebuilt, I think it's a great time to create a formatting
style guide for [Markdown], after all that is what I use to blog on this site,
and many people also use it to create documentation, send messages, taking
notes, and more.

[Markdown]: https://daringfireball.net/projects/markdown/

-   Table of Contents
{:toc}

## Why Markdown

Why use Markdown and not [AsciiDoc](https://asciidoc.org/),
[Typst](https://typst.app), [Textile](https://textile-lang.com), or other
[lightweight markup languages][markup-langs]. Well there are three reasons:

[markup-langs]: https://en.wikipedia.org/wiki/Lightweight_markup_language

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
