---
title: Markdown Formatting Guide
description: >-
    An opinionated style guide on how to format Markdown in a document and on
    the web.
---

After getting my site rebuilt, I think it's a great time to create a formatting
guide for [Markdown], after all that is what I use to blog on this site, and
many people also use it to create documentation, send messages, taking notes,
and more.

[Markdown]: https://daringfireball.net/projects/markdown/

Table of Contents:

-   List of Markdown Rules To Follow
{:toc}

## Why Markdown

Why use Markdown and not [AsciiDoc](https://asciidoc.org/),
[Typst](https://typst.app), [Textile](https://textile-lang.com), or other
[lightweight markup languages][light-markup-langs]. Well there are three
reasons:

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
can parse the document, this where the Markdown Formatting Guide comes in.

> [!IMPORTANT]
> This is a formatting guide, **not** a writing style guide. As with any
> document you would write, please follow the proper spelling, grammar, and
> writing style that your project requires.

## Considerations

This document will mainly use and consider
[GitHub Flavor Markdown](https://github.github.com/gfm/) (GFM) as the main
Markdown flavor and [kramdown] as a secondary flavor.

[kramdown]: https://kramdown.gettalong.org/

*[GFM]: GitHub Flavor Markdown

Rational: Most flavors of Markdown and editors supports GFM either as a native
feature or as an extension due to the popularity of GitHub. Features from
kramdown allows customizations that are useful for authoring and has GFM
support.

<!-- LTeX: enabled=false -->
-   [kramdown] with
    [`kramdown-parser-gfm`](https://github.com/kramdown/parser-gfm).
-   [Pandoc](https://pandoc.org/) with the `--format=gfm` option.
-   [VSCode](https://code.visualstudio.com/) with
    [GitHub Markdown Preview][vscode-gh-md].
-   And many more depending on your editor.
<!-- LTeX: enabled=true -->

[vscode-gh-md]: https://marketplace.visualstudio.com/items?itemName=bierner.github-markdown-preview

For portability of other flavors (e.g. [CommonMark](https://commonmark.org/)
whence GFM is an extension of) that has features that differs from GFM, this
guide will list first rules then any exceptions and information regarding
portability, kramdown and using Markdown on sites.

For a simple, readable, maintainable, and portable GFM document. This guide will
consider rules from [Santilli's](https://doi.org/10.5281/zenodo.3464189)
(CC BY-SA 4.0),
[Google's](https://google.github.io/styleguide/docguide/style.html) (CC BY 3.0)
style guide, and
[markdownlint](https://github.com/DavidAnson/markdownlint/blob/main/doc/Rules.md)
(MIT License).

Use the following tools to enforce this style guide:

-   [EditorConfig](https://editorconfig.org/)

-   Choose one of the following:

    -   [markdownlint](https://github.com/DavidAnson/markdownlint)

    -   [remark](https://remark.js.org) with plugins for linting, GFM and
        frontmatter support

-   And reading both the source and rendered Markdown document

This guide will use markdownlint as it's the most popular linter for Markdown
with editor plugin support, and it's very configurable with defaults that this
guide will build on top of in `.markdownlint.yaml`:

```yaml
# Enable defaults
default: true
```

Change the configuration to [JSON](https://www.json.org) or
[TOML](https://toml.io) based on your need.

## Source document

### File extension

Use `.md` for all Markdown documents, this includes very important documents
listed in [File name](#file-name).

Rational: `.md` is popular and shorter than `.markdown`.

Enforcement: Change all Markdown documents to use the `.md` file extension.

### File name

Use alphanumeric ASCII characters with hyphens `-` or underscores `_` and be
either in the following formats:

-   `SCREAMING_SNAKE_CASE` for important documentation in source control:
    - `README.md`
    - `CHANGELOG.md`
    - `CONTRIBUTING.md`
    - `CODE_OF_CONDUCT.md`
    - etc.

    Rational: Important documents like project information, important changes,
    or contributing guidelines can be quickly located by looking for or sorted
    by uppercase letters first.

-   Or `kebab-case` for publishing on the web and all other Markdown documents:

    ```plaintext
    filename-without-date.md
    01-01-2025-filename-with-date.md
    ```

    Rational: Hyphens are the most popular word separators in URLs and helps
    search engines find keywords[^1].

Enforcement: Rename Markdown documents to an appropriate filename format.

[^1]: <https://developers.google.com/search/docs/crawling-indexing/url-structure>

### File encoding

Use UTF-8 and Unicode characters instead of HTML character entity reference
(i.e. `©` over `&copy;`, `π` over `&#960;`).

Rational: Most, if not all, pages on the web are encoded in UTF-8 and Unicode
character are much more recognizable in the source document.

Enforcement: Convert all Markdown documents to UTF-8. In `.editorconfig` for
files that end with `.md` add `charset = utf-8`, this rule might already been
enforced for all files if you are following modern coding standards. Use a
Unicode character inserter when inserting symbols.

### Character line limit

Markdown content follows the convention of having an 80-character line limit
while tables, headings, and code blocks have a 120-character line limit. Lines
with links also have a 120-character line limit, along with any relevant
punctuation except for text before and after the link that gets wrapped.

Example <https://google.github.io/styleguide/docguide/style.html#exceptions>:

```markdown
*   See the
    [foo docs](https://gerrit.googlesource.com/gitiles/+/HEAD/Documentation/markdown.md).
    and find the logfile.
```

Rational: Most coding style guides have limits of 80 to 120 characters per line,
and it's much easier to view change in difference mode in source control.

Enforcement: In `.markdownlint.yaml` add:

```yaml
line-length:
    # The default line length is 80 characters.
    code_block_line_length: 120
    heading_line_length: 120
    # Enforce wrapping for words that pass the 80 character length except for links.
    stern: true
    # There is no separate line length settings for tables, so we disable line length checking on tables.
    tables: false
```

## Whitespace

### Trailing whitespace

Don't use and trim trailing whitespace. Use a trailing backslash to break lines.

Rational: Most coding style guides, formatters, linters, and checkers don't
allow trailing whitespace. Additionally, many editors will also automatically
trim trailing whitespace by default.

Enforcement: In `.editorconfig` for files that end with `.md`, add
`trim_trailing_whitespace = true`, this rule might already been enforced for all
files if you are following modern coding standards.

In `.markdownlint.yaml` add:

```yaml
no-trailing-spaces:
    br_spaces: 0
    strict: true
```

### Newlines

Don't use 2 or more consecutive newlines except in code blocks. End files with
a newline without trailing whitespace.

Rational: Blank lines does not affect rendered content and occupy more vertical
screen space. Some programs have trouble with files that do not end with a
newline[^2].

[^2]: <https://unix.stackexchange.com/q/18743>

Enforcement: In `.editorconfig` for files that end with `.md`, add
`insert_final_newline = true`, this rule might already been enforced for all
files if you are following modern coding standards. This is the default in
markdownlint.

### Indentation

Use 4 spaces for indentation instead of a tab for indentation.

Rationale: Hard tabs are often rendered inconsistently by different editors and
can be harder to work with than spaces.

Enforcement: In `.editorconfig` for files that end with `.md`, add:

```ini
indent_style = space
indent_size = 4
```

These rules might already been enforced for all files if you are following
modern coding standards.

In `.markdownlint.yaml` add:

```yaml
no-hard-tabs:
    spaces_per_tab: 4
```

## Front Matter

A Markdown document may optionally have a YAML front matter as a preamble that
is wrapped with three dashes `-`.

Example:

```markdown
---
title: Some metadata about the document
date: 2025-01-01
---

Some text here.
```

Rational: Documentation and authoring tools that convert Markdown to HTML use
front matter for metadata. YAML is used as it's much more natural to read than
JSON or TOML at the beginning on the document, and most tools support a YAML
front matter.

Enforcement: If front matter is used, change it to be in YAML and warped with
three dashes `-`.

## Headings
