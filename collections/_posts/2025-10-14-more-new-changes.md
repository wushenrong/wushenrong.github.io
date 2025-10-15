---
title: More New Changes
description: >-
    How almost even in a year or so, I probably should do maintenance quarterly.
---

At the beginning of the year, I rebuild this site to have a better theme,
accessibility, and less maintenance on updating site. Well a lot has happened
since then, so here are the changes to Minima and what I did to this site.

Minima in the main branch now has a default max width of 800 pixels instead of
740 pixels. Removed the duplicate RSS link that has a bad contrast with the dark
theme. They switched to web fonts for icons instead of SVG, which I did not like
as I either host the fonts myself which takes up more space or use Font
Awesome's CDN. And SVG are much better than web fonts because you can use the
`aria-labelledby` attribute to reference the `<title>` tag[^1] instead of just
having the `title` attribute which is [bad for people with screen readers][1].
Reverting the social icons back to SVG using `minima.social_links` key is easy.
For the menu icon however, this requires some CSS editing because the icon is in
the pseudo-element `:before`, so delete that pseudo-element and replace it with
the CSS property before the icon change.

[^1]: According to some testing the `<title>` tag is good enough for SVG icons,
    but it is better to be safe with adding `aria-labeledby` too.
    <https://www.smashingmagazine.com/2021/05/accessible-svg-patterns-comparison/>

[1]: <https://developer.mozilla.org/en-US/docs/Web/HTML/Reference/Global_attributes/title#accessibility_concerns>

Additionally, I changed the syntax highlight theme to Pygments's default and
Monokai theme for light and dark mode respectively. The theme from Minima and
rouge's Monokai almost follow the [4.5:1 contrast ratio that the WCAG needs][2],
but Pygments produces styles that already follows the guidelines and, that I
have learned, used by MediaWiki for its syntax highlighting tool. I removed the
skip to main content link because the header does not have a lot of links to
justify it, and anchor links because most of my post is going to be short.

[2]: https://www.w3.org/TR/WCAG22/#contrast-minimum

<!-- markdownlint-disable no-inline-html -->
> [!TIP]
> You can use the <kbd>h</kbd> key to jump to the next heading and keys
> <kbd>1-6</kbd> to the next heading level 1-6, or <kbd>d</kbd> for the next
> landmark in Windows Narrator and in NVDA. Consult your screen reader manual
> for additional keyboard shortcuts.
<!-- markdownlint-enable no-inline-html -->

Lastly I removed some plugins and pages that I do not need anymore and make this
site more professional. Like having a projects page and resume page. Again the
modifications and source code can be viewed at
<{{ site.github.repository_url }}>.
