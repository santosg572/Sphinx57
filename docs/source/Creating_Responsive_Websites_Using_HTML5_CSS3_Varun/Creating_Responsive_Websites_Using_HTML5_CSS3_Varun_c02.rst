CHAPTER 2

HTML5 and
Responsive Web
Design
This chapter covers HTML5 and responsive web design by describing
the features that are supported by modern-day browsers. It covers how
to create an HTML5 page and explains why it is easier to write pages with
HTML5 than its older versions. The chapter also covers semantic elements
and shows the code to make it easier to understand the practical usage.
Additionally, the chapter explains text-level semantics in detail, followed
by the audio and video capabilities. All these concepts are supported by
code examples and browser screenshots displaying how a modern-day
browser renders the code.

What HTML5 Features Are Supported
by Browsers?
Most parts of HTML5 can be used today, as it is a widely supported
standard across all modern browsers. However, some of the newer features
may not be fully supported in older browsers, so before implementing

a new feature, you should always check the browser version your app is
going to run on. Here are some of the commonly used HTML5 features
that are widely supported across all modern browsers:
• Semantics: HTML5 introduced a new set of semantic
tags that can be used to describe the structure of web
pages more accurately. These tags are designed to
replace the generic <div> and <span> tags that were
used in earlier versions of HTML. Some of the most
popular semantic tags in HTML5 include <header>,
<footer>, <nav>, <article>, and <section>. Search
engine optimization can be improvised if these tags
are utilized appropriately, since a search engine will
use the new tags to understand the content of the
web page.
• Audio and video: HTML5 provides built-in support for
audio and video playback, which eliminates the need
for third-party plugins like Adobe Flash. This makes
it much easier to include multimedia content on web
pages. The audio and video tags in HTML5 support
several file formats, including MP3, MP4, and Ogg.
They also include controls for playback, volume, and
other settings, making it easy for users to interact with
multimedia content.
• Canvas: The <canvas> element in HTML5 provides a
way to draw graphics on a web page using JavaScript.
This feature can be used to create dynamic visual
effects, such as animations, games, and data
visualizations. The <canvas> element can be used to
create 2D or 3D graphics, and it provides a powerful set
of APIs for manipulating the graphics.

• Forms: HTML5 includes several enhancements to
forms, including new input types and attributes. Some
of the new input types in HTML5 include email, URL,
and number, which provide more accurate validation
for user input. HTML5 also includes new form
attributes, such as autocomplete and required, which
improve the usability of forms.
• Geolocation: HTML5 provides a geolocation API that
allows web applications to access the user’s location.
This feature can be used to create location-based
services, such as maps, local search, and weather
updates. The geolocation API is available on the latest
web browsers, such as Chrome, Firefox, and Safari.
• Local storage: HTML5 provides a local storage API that
permits web applications to use a user’s computer
to store data. This feature can be used to create web
applications that work offline or to cache the data to
load the web application faster. The local storage API
works on the latest web browsers, such as Chrome,
Firefox, and Safari.
• Web workers: HTML5 provides a web workers API
that allows web applications to run scripts in the
background. This feature can be used to improve the
performance of web applications by offloading tasks
to separate threads. The web workers API works on
the latest web browsers, such as Chrome, Firefox,
and Safari.

• Web sockets: HTML5 provides a web sockets API that
allows web applications to create real-time, two-way
communication channels between the client and
the server. This feature can be used to create web
applications that update in real time, such as chat
applications, collaborative editors, and online gaming
apps. The web sockets API works on the latest web
browsers, such as Chrome, Firefox, and Safari.

How to Write HTML5 Pages
The way HTML page used to be written was something like the
following code:
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;
charset=UTF-8" />
The HTML5 equivalent code, shown here, is the same as the
previous code:
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset=UTF-8" />
Save the previous code with an .html extension, and you have
written your first HTML5 page according to the W3C validator (http://
validator.w3.org)!

The first line of the code declares the new HTML5 doctype; remember,
<!DOCTYPE html> and <!doctype html> are the same; the case does not
make any difference.
The second tag is the first <html> tag, which mentions the language.
<html lang="en">
The <head> tag follows, with character encoding specified using
<meta> (this is a void element and will not require a closing tag). The value
for the character encoding will be UTF-8 (almost every time you create a
HTML page) unless there is a specific requirement otherwise.

Writing HTML5 Code Is Easy
Developers have traditionally written code in HTML in lowercase and by
surrounding multiple attributes with double quotes. But HTML5 lets you
write code without quotes, in lower or uppercase, and with camel-case
letters, and it doesn’t need much information provided as an attribute in
HTML tags.
Typically, CSS code in HTML would have href, rel, and type attributed,
like so:
<link href="CSS/main.css" rel="stylesheet" type="text/css"/>
HTML5 does not require so many details; it will just work fine with the
following declaration:
<link href=CSS/main.css rel=stylesheet >
If you look closely, there is no ending tag or closing slash, there are
no quotes surrounding attribute values, and there is no type declaration
either. Here both the examples are valid and would work just fine.

In addition to CSS and JavaScript elements, this kind of lenient syntax
is applicable for all HTML tags. A <div> element could be defined as
follows:
<div id=wrapper>
Let’s take an example of another tag, for example, an <img> tag.
<img SRC=company_logo.png Alt=logo >
This HTML code is a valid <img> tag without an end tag or a slash,
without quotes, and with mixing upper and lowercase. HTML even lets
developers write code without specifying <html>, <body>, and <head>
tags, and it still validates.
Although HTML5 is flexible, I still recommend writing a few extra lines
of code to maintain best practices for better code maintainability and ease
of understanding. Hence, writing code in the old style is beneficial. The
CSS declaration shown earlier, for example, can be written as follows:
<link href="CSS/main.css" rel="stylesheet" />
The quotes and closing slash are in the stylesheet declaration, but the
type attribute is omitted here. This HTML code would not be flagged.
The anchor tag has been revised and can do a few things that the prior
version of HTML didn’t support. The older HTML version needed each
element to have its own anchor tag.
For example, look at the following code snippet:
<div class="container"><a href="home.html"> Home </a></div>
<p><a href="home.html"> This paragraph is actually a link
tagged by anchor. </a></p>
<h1><a href="home.html"> Navigate to Home Page </a></h1>
HTML5 now allows us to group all the elements under the anchor tag,
and it doesn’t require each element to have its own anchor tag. See the
following code snippet:

<a>
<div class="container"> Home </div>
<p> This paragraph is actually a link tagged by
anchor. </p>
<h1> Navigate to Home Page </h1>
</a>
The only restriction here with the anchor tag is that it cannot be
grouped with another anchor tag, and form elements are not allowed to be
grouped within the anchor tag.
There are some features of HTML5 that are obsolete; it won’t complain
if you use them, but you should avoid using them if you can. The HTML5
validator will generate warnings for these elements.
There are two types of obsolete features: conforming and
nonconforming. The prior definition was for the conforming obsolete
feature, whereas a nonconforming obsolete feature doesn’t guarantee that
it will work on all the browsers. It may work on a few but not others, so you
should implement those types at your own risk. Here is where you can find
a list of nonconforming obsolete features: https://html.spec.whatwg.
org/#non-conforming-features.

Semantic Elements in HTML5
What are semantic elements? A semantic element defines its purpose
or what type of content it will contain. A few examples of such semantic
elements are <header>, <footer>, and <p> tags. HTML was invented as a
markup language to provide a description of the documents it hosts, and it
has evolved as the Internet has grown.
Initially the Internet was used to share scientific research material, and
eventually people wanted to share other things on the Internet, followed
up by people making their website look good. Building such functionality
on the Web was not supported at that time, which forced developers to use

work-arounds to make their websites look good. Nonsemantic elements
did this job for the programmers (e.g., <div>) and provided these tags with
class or id attributes, which in turn defined the purpose of the tag (e.g.,
<div class=”header”></div>).
There are many advantages to using semantic elements. The first
and foremost is that they make it easier to read code. They draw anyone’s
attention when they look at the code (either written by you or by
someone else).
The following piece of code will illustrate my point; it uses semantic
elements:
<header></header>
<section>
<article>
<figure>
<img>
<figcaption></figcaption>
</figure>
</article>
</section>
<footer></footer>
The following code uses nonsemantic elements:
<div id="header"></div>
<div class="section">
<div class="article">
<div class="figure">
<img>
<div class="figcaption"></div>
</div>
</div>
</div>
<div id="footer"></div>

Apart from better readability, semantic elements have greater
accessibility. They are not restricted to readability; they can also be used as
search engine optimization (SEO) and assistive technologies, which help
users who have vision impairment. Overall, it’s a better experience for all
the users.
New Semantic Elements
Here are the new semantic elements:
• <article>: This element specifies an independent
content. Use cases of article tags could be comments,
news articles, blogs, etc.
Here is what it looks like in code:
<style>
.superheros {
margin: 0;
padding: 5px;
background-color: lightgray;
}
.superheros > h1, .superhero {
margin: 10px;
padding: 5px;
}
.superhero {
background: white;
}

.superheros > h2, p {
margin: 4px;
font-size: 90%;
}
</style>
<article class="superheros">
<h1>Most Liked Superheros</h1>
<article class="superhero">
<h2> Batman </h2>
<p>Batman is a superhero appearing in American
comic books published by DC Comics. <br/>
The character was created by artist Bob Kane
and writer Bill Finger, and debuted in the 27th
issue of the comic book</p>
</article>
<article class="superhero">
<h2> Iron Man</h2>
<p>Iron Man is a superhero appearing in
American comic books published by Marvel
Comics. <br/>
The character was co-created by writer and editor
Stan Lee, developed by scripter Larry Lieber,
and designed by artists Don Heck and Jack
Kirby</p>
</article>
</article>
Figure 2-2 shows what it looks like in a browser (the paragraph in the
code is taken from Wikipedia).

• <aside>: As an addendum to the main content, <aside>
is used to define a kind of subcontent or sidebar
content.
Here is what it looks like in code:
<style>
aside {
width: 30%;
padding-left: 15px;
margin-left: 15px;
float: right;
font-style: italic;
background-color: lightgray;
}
</style>
<p>
Marvel Comics is an American comic book publisher
and the flagship property of Marvel Entertainment,
a division of The Walt Disney Company since
September 1, 2009. Evolving from Timely Comics
in 1939,

Magazine Management/Atlas Comics in 1951 and its
predecessor, Marvel Mystery Comics, the Marvel
Comics title/name/brand
was first used in June 1961.
Marvel was started in 1939 by Martin Goodman as
Timely Comics,[3] and by 1951 had generally become
known as Atlas Comics.
The Marvel era began in June 1961 with the launch
of The Fantastic Four and other superhero titles
created by Stan Lee, Jack Kirby,
Steve Ditko and many others. The Marvel brand,
which had been used over the years and decades, was
solidified as the company's
primary brand.
</p>
<aside>
<h3>
Wolverine
</h3>
<p>
The Wolverine, is a fictional character
originating as the primary protagonist of 20th
Century Fox's X-Men film series, <br/>
and appearing in the Marvel Cinematic Universe
media franchise produced by Marvel Studios.
</p>
</aside>
Figure 2-3 shows what it looks like in a browser (the paragraph in the
code is taken from Wikipedia).

Figure 2-2. Google Chrome displaying <aside> tag
• <details>: This element is used to provide additional
information that can be opened or closed based on
user action. It can be assumed to be a pop-up or a
widget that can be opened or closed.
Here is what it looks like in code:
<style>
details > summary {
padding: 4px;
width: 200px;
background-color: #5296ce;
border: none;
box-shadow: 1px 1px 2px #bbbbbb;
cursor: pointer;
}
details > p {
background-color: #5296ce;
padding: 4px;
margin: 0;

box-shadow: 1px 1px 2px #bbbbbb;
}
</style>
<details>
<summary>
ICC World Cup
</summary>
<p>
The Cricket World Cup, officially known
as ICC Men's Cricket World Cup,[4] is the
international championship of
One Day International (ODI) cricket. The event
is organised by the sport's governing body, the
International Cricket Council
(ICC), every four years, with preliminary
qualification rounds leading up to a finals
tournament. The tournament is one of the
world's most viewed sporting events and
is considered the "flagship event of the
international cricket calendar" by the ICC.[5]
The first World Cup was organised in England
in June 1975, with the first ODI cricket match
having been played only four years
earlier. However, a separate Women's Cricket
World Cup had been held two years before the
first men's tournament, and a
tournament involving multiple international
teams had been held as early as 1912, when a
triangular tournament of Test matches

was played between Australia, England and South
Africa. The first three World Cups were held in
England. From the 1987
tournament onwards, hosting has been shared
between countries under an unofficial rotation
system, with fourteen ICC members
having hosted at least one match in the
tournament.
</p>
</details>
Figure 2-3 shows what it looks like in a browser (the paragraph in the
code is taken from Wikipedia). Figure 2-4 shows the HTML <details> tag
expanded.

• <figcaption>: Whenever a <figure> element needs a
caption, the <figcaption> tag comes to rescue. This
element can be placed as the first or last child of the
<figure> element.

Here is what it looks like in code:
<style>
figure {
border: 1px #cccccc solid;
padding: 4px;
margin: auto;
}
figcaption {
background-color: black;
color: white;
font-style: italic;
padding: 2px;
text-align: center;
}
</style>
<figure>
<img src="../../../cityscape.jpeg" alt="cityscape"
style="width: 100%; height: 90%;" />
<figcaption>High rise buildings in the city at
night look so amazing.</figcaption>
</figure>
Figure 2-5 shows what it looks like in a browser.

• <footer>: There can be multiple elements in the footer
section, and typically the footer element contains
authorship, copyright, contact information, and a link
to go to the top of the document.
Here is the code:
<style>
footer {
text-align: center;
padding: 3px;
background-color: DarkSalmon;
color: white;
}
</style>
<footer>
<p>Author: John Doe<br>
<a href="mailto:johndoe@example.com">
johndoe@example.com</a>
</p>
</footer>

Figure 2-6. HTML <footer> tag displayed in Chrome

Note The footer is placed after the figcaption tag and shows the
author information.

• <header>: This element represents the introductory
content for the document. Typically it contains
navigation links, heading elements, or company logos.
Here is the code:
<style>
header {
display: block;
}
</style>

<header>
<h1>Main page heading here</h1>
<p>Posted by John Doe</p>
</header>
<style>
figure {
border: 1px #cccccc solid;
padding: 4px;
margin: auto;
}
figcaption {
background-color: black;
color: white;
font-style: italic;
padding: 2px;
text-align: center;
}
</style>
<figure>
<img src="../../../cityscape.jpeg" alt="cityscape"
style="width: 100%; height: 90%;" />
<figcaption>High rise buildings in the city at
night look so amazing.</figcaption>
</figure>
Figure 2-7 shows what it looks like in a browser.

Figure 2-7. HTML <header> tag displayed in Chrome

Note The image tag is followed by the header tag.

• <hgroup>: This element can be used when the
requirement is to have a heading with one or more
subheadings. It is used to group heading elements from
<h1> to <h6>.
Here is the code:
<hgroup>
<h1>Heading H_One</h1>
<h2>Heading H_Two</h2>
<hgroup>
<p>This is a sample text in paragraph 1.</p>
<p>This is a sample text in paragraph 2.</p>
<p>This is a sample text in paragraph 3.</p>
<p>This is a sample text in paragraph 4.</p>
</body>

Figure 2-8. HTML <hgroup> tag displayed in Chrome
• <main>: As the name specifies, this tag is used to define
the nonrepetitive content of the document. This tag
should contain information unique to document; no
content such as navigations, sidebars, or links should
be repeated. Multiple definitions for the main tag per
the documentation is not allowed, and it cannot be a
descendent of <article>,<aside>, <header>, <footer>, or
<nav> elements.
Here is the code:
<style>
main {
margin: 0;
padding: 5px;
background-color: rgb(91, 153, 161);
}
main > h1, p, .cricketer {
margin: 10px;
padding: 5px;
}

.cricketer {
background: rgb(137, 116, 116);
}
.cricketer > h2, p {
margin: 4px;
font-size: 90%;
}
</style>
<main>
<h1>Most Popular Cricketers</h1>
<p>The list of cricketer popular around the world
is hard to fit in here.</p>
<article class="cricketer">
<h2>Sachin Tendulkar</h2>
<p>Sachin Ramesh Tendulkar, AO is an Indian
former international cricketer who captained the
Indian national team.
He is regarded as one of the greatest batsmen
in the history of cricket. He is the all-time
highest run-scorer in both ODI and
Test cricket with more than 18,000 runs and
15,000 runs, respectively.</p>
</article>
<article class="cricketer">
<h2>Adam Gilchrist</h2>
<p>Adam Craig Gilchrist AM is an Australian
cricket commentator and former international
cricketer and captain of the
Australia national cricket team. He was an

attacking left-handed batsman and record-
breaking wicket-keeper, who redefined

the role for the Australia national team
through his aggressive batting.</p>
</article>
<article class="cricketer">
<h2>Allan Donald</h2>
<p>Allan Anthony Donald is a South African former
cricketer who is also the current bowling coach
of Bangladesh national cricket
team. Often nicknamed 'White Lightning' due to
his lightning quick bowling, he is considered
one of the South Africa national
cricket team's most successful pace
bowlers.</p>
</article>
</main>
Figure 2-9 shows what it looks like in a browser (the paragraph in the
code is taken from Wikipedia).

Figure 2-9. HTML <main> tag displayed in Chrome
• <mark>: This tag defines the text that should be
highlighted.

Here is the code:
<style>
mark {
background-color: yellow;
color: black;
}
</style>
<p>Send <mark>bug report</mark>, holiday plan and
<mark>MOM</mark> to the higher management.</p>
Figure 2-10 shows what it looks like in a browser.

Figure 2-10. HTML <mark> tag displayed in Chrome
• <nav>: As the name suggests, the web application’s
navigation can be defined using this tag. Though it is
not mandatory to define all the links inside the <nav>
tag, it defines the majority of navigational links.
Here is the code:
<nav>
<a href="/html/">HTML</a> |
<a href="/css/">CSS</a> |
<a href="/js/">JavaScript</a> |
<a href="/python/">Python</a>
</nav>
Figure 2-11 shows what it looks like in a browser.

Figure 2-11. HTML <nav> tag displayed in Chrome
• <section>: The <section> element is used when a
generic section of document needs to be defined.
Here is the code:
<style>
section {
display: block;
}
</style>
<section>
<h2>WWF History</h2>
<p>The World Wide Fund for Nature (WWF) is an
international organization working on issues
regarding the conservation, research and
restoration of the environment, formerly named the
World Wildlife Fund. WWF was founded in 1961.</p>
</section>
<section>
<h2>WWF's Symbol</h2>
<p>The Panda has become the symbol of WWF. The
well-known panda logo of WWF originated from a
panda named Chi Chi that was transferred from the
Beijing Zoo to the London Zoo in the same year of
the establishment of WWF.</p>
</section>

Figure 2-12 shows what it looks like in a browser (the paragraph in the
code is taken from Wikipedia).

Figure 2-12. HTML <section> tag displayed in Chrome
• <address>: The <address> element defines numerous
ways of getting touch with the author or owner of the
document. This tag can contain contact information
such as email address, website link, postal address,
phone number, or social media links. The information
rendered in the <address> tag is in italic, and a line
break is added before and after the <address> element
by the majority of the browsers.
Here is the code:
<style>
address {
display: block;
font-style: italic;
}
</style>
<p>
The properties font-family, font-size, and color
are then defined, <br/>
which set the font, font size, <br/>
and color of the text within the paragraph element.

<br/><br/>
The stylesheet is applied because it has been
defined for element &lt;p&gt; in <br/>
parent folder and file example.css.
</p>
<link rel="stylesheet" href="../../css/example.css">
<address>
Written by <a href="mailto:johndoe@example.com">Jon
Doe</a>.<br>
Visit us at:<br>
Example.com<br>
Box 564, Disneyland<br>
USA
</address>
Figure 2-13 shows what it looks like in a browser (the paragraph in the
code is taken from Wikipedia)..

Figure 2-13. HTML <address> tag displayed in chrome
• <summary>: This tag defines the heading for the
<details> tag. The first child of the <details> tag must be
a <summary> tag, which contains the information in a
section that can be expanded or collapsed by a click of
a button.

Here is what it looks like in code:
<style>
details > summary {
padding: 4px;
width: 200px;
background-color: #d9b37c;
border: none;
box-shadow: 1px 1px 2px #131313;
cursor: pointer;
}
details > p {
background-color: #d9b37c;
padding: 4px;
margin: 0;
box-shadow: 1px 1px 2px #131313;
}
</style>
<details>
<summary>Marvel Comics</summary>
<p>
Marvel Comics is an American comic book
publisher and the flagship property of Marvel
Entertainment,
a division of The Walt Disney Company since
September 1, 2009. Evolving from Timely Comics
in 1939,
Magazine Management/Atlas Comics in 1951 and
its predecessor, Marvel Mystery Comics, the
Marvel Comics title/name/brand
was first used in June 1961.

Marvel was started in 1939 by Martin Goodman
as Timely Comics,[3] and by 1951 had generally
become known as Atlas Comics.
The Marvel era began in June 1961 with the
launch of The Fantastic Four and other
superhero titles created by Stan Lee,
Jack Kirby,
Steve Ditko and many others. The Marvel brand,
which had been used over the years and decades,
was solidified as the company's
primary brand.
</p>
</details>
Figure 2-14 shows how Google Chrome displays it (collapsed).

Figure 2-14. HTML <summary> tag displayed in Chrome (collapsed)
Figure 2-15 shows how Google Chrome displays it (expanded).

Figure 2-15. HTML <summary> tag displayed in Chrome
(expanded)

• <time>: This tag defines the time or datetime.
Here is what it looks like in code:
<p>The office is open from <time>09:00</time> to
<time>18:00</time> Monday to Friday.</p>
<p>I have an appointment with the CEO on
<time datetime="2023-02-28 20:00">last day of
February</time>.</p>
Figure 2-16 shows what it looks like in a browser.

Text-Level Semantics in HTML5
Text-level semantics refer to the HTML elements that define the meaning
of the text within a web page. These elements provide additional context
and information about the content of a page, making it easier for search
engines, screen readers, and other tools to understand and interpret the
content. In HTML5, there are several new text-level semantic elements,
including the following:<mark>: This element is used to highlight text
that is relevant or important to the content on the page. This element can
be used to highlight specific words or phrases or to indicate the location
of a particular point within the text. A code example was given earlier in
this book.

• <time>: This element is used to define a specific date or
time within the document. Time-related information
such as the publication date of an article, the time of
an event, or any other date can be represented by the
<time> element. A code example was given earlier in
this book.
• <abbr>: This element is used to define an abbreviation
or acronym within the document. Additional context
information and information about the meaning of a
particular word or phrase can be emphasized by this
element.
Here is what it looks like in code:
<style>
abbr {
display: inline;
}
</style>
<p><dfn><abbr title="Cascading Style Sheets">CSS</abbr>
</dfn> is a language that describes the style of an
HTML document.</p>
Figure 2-17 shows what it looks like in a browser.

Figure 2-17. HTML <abbr> tag displayed in Chrome

• <q>: A short quotation within a document is written
inside the <q> element. The primary focus of
this element is to provide additional context and
information about a particular quote or to indicate the
author of a quote.
Here is what it looks like in code:
<style>
q {
color: gray;
font-style: italic;
}
</style>
<p>WWF's goal is to:
<q>Build a future where people live in harmony with
nature.</q>
We hope they succeed.
</p>
Figure 2-18 shows what it looks like in a browser.

Figure 2-18. HTML <a> tag displayed in Chrome
• <cite>: This element is used to define a citation within
the document. The primary focus of <cite> is to provide
additional context and information about the source of
a particular piece of information.

Here is what it looks like in code:
<style>
cite {
font-style: italic;
color: rgb(126, 126, 237);
}
</style>
<p><cite>The sport of cricket</cite> has a known
history beginning in the late 16th century. Having

originated in south-
east England,

it became an established sport in the country in
the 18th century and developed globally in the 19th
and 20th centuries.
International matches have been played since the
19th-century and formal Test cricket matches are
considered to date from 1877.</p>

Figure 2-19 shows what it looks like in a browser (the paragraph in the
code is taken from Wikipedia).

Figure 2-19. HTML <cite> tag displayed in Chrome
Why Are Text-Level Semantics Important?
Text-level semantics are important because they help to improve the
accessibility and usability of web content. By providing additional context
and information about the content of a page, these elements make it easier
for people with disabilities to understand and navigate the content.

For example, the <mark> element can be used to indicate the location
of a particular point within the text. This can be particularly useful for
people with visual impairments, who may find it difficult to navigate
through large blocks of text.
Similarly, the <abbr> element can be used to provide additional
context and information about the meaning of a particular word or phrase.
This can be particularly useful for people with cognitive disabilities, who
may have difficulty understanding certain words or concepts.
In addition to improving accessibility, text-level semantics can also
improve the search engine optimization of a web page. By providing
additional context and information about the content of a page, these
elements make it easier for search engines to understand and index the
content, which can lead to better search engine rankings and increased
traffic to the site.
How to Use Text-Level Semantics
Using text-level semantics is relatively simple. All you need to do is identify
the elements that are most appropriate for the content on your page and
use them accordingly.
For example, if you are required to add a quote on your page, the
<q> element can be used to define the quote, and the <cite> element
can be used to define the source of the quote. Similarly, if you have an
abbreviation or acronym on your page, you could use the <abbr> element
to define the meaning of the word or phrase.
Audio and Video Capabilities of HTML5
The introduction of the <video> and <audio> tags in HTML5 has made the
plug-ins that were used to embed the video and audio file on the website
useless. A video file can be featured on the web page using the <video>
element.

Let’s take a look at a code example:
<!DOCTYPE html>
<html>
<body>
<video width="1080" height="720" controls>
<source src="../../../sample.mp4" type=video/mp4>
</video>
</body>
</html>
Figure 2-20 shows what it looks like in a browser.

Figure 2-20. HTML <video> tag displayed in Chrome

The <video> element must define the following attributes in order
work correctly:
• src: The URL where the video content is hosted.
• type: The video file format that will be used to play the
content.
• controls: To control the playback content, this attribute
is a must; without this attribute, the end user will not
be able to play, pause, or seek the video content.
Additionally, the following are option controls that help influence the
video content:
• autoplay: This starts the video as soon as it loads on the
web page.
• loop: As the name specifies, the video content will be
repeated once it is finished playing.
• poster: This defines an image or thumbnail for
the video, and it is displayed when the content is
not played.
• preload: When the page loads, how the video content is
loaded can be specified by this attribute.
HTML5 supports three types of video files, as listed in Table 2-1.
Table 2-1. Video Formats Supported
by the HTML5 <video> Tag
Format MIME Type
mp4 video/mp4
webm video/webm
ogg video/ogg

Another way of inserting videos from an external source could be done
by using iframes. Follow these steps to get the YouTube URL link:
1. Open the video on YouTube.
2. Right-click the video and click “<> copy
embed code.”
3. Paste the copied code onto a Notepad src tag, and
will have the YouTube video source link; you will be
using it for your src attribute of the video tag.
The following is some sample code:
<!DOCTYPE html>
<html>
<body>
<h2>Steve Jobs - How to Live before You Die</h2>
<p>At his Stanford University commencement speech, Steve
Jobs, CEO and co-founder of Apple and Pixar, urges us to
pursue our dreams and see the opportunities in life's
setbacks - including death itself.</p>
<iframe width="500" height="320" src="https://www.youtube.
com/embed/lcZDWo6hiuI">
</iframe>
</body>
</html>
The <audio> tag can be used to embed an audio file in the web page. Just
like the <video> tag, the <audio> tag has the controls and source attributes
that identify the file and whether to show the controls on the web page.
Here is what it looks like in code:
<h3>Ambient Classic Guitar</h3>
<audio controls autoplay>
<source src="../../../sample_audio.mp3" type="audio/mpeg">
</audio>

Figure 2-21 shows what it looks like in a browser.

Figure 2-21. HTML <audio> tag displayed in Chrome
The HTML DOM controls the audio by defining properties, methods,
and events that help to load, play, and pause audios, as well as set the
duration and volume. The HTML DOM events can be used to notify when
an audio begins to play, is paused, etc.
HTML5 supports the audio formats shown in Table 2-2.
Table 2-2. Audio Formats Supported
by the HTML5 <audio> Tag
Format MIME Type
mp3 audio/mpeg
wav audio/wav
ogg audio/ogg

Summary
This chapter covered the features of HTML5 that can be used to create a
responsive web design. It explained the new features supported by this
technology and listed the features such as the semantics, audio, and video
capabilities added to HTML, as well as the canvas, geolocation, local
storage, web works, and web sockets. We also explained how to write a new
HTML5 web page, ways to make the job easier, and new features added
to HTML5.


