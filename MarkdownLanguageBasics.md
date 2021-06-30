# Intro: What is Markdown?

Markdown is actually HTML, the markdown spits out HTML which is then previewed.
You can realize that by taking a look at the original [John Gruber's page](https://daringfireball.net/projects/markdown/) (who is the creator of the Markdown language)

It says:
> Markdown is a text-to-HTML conversion tool for web writers. Markdown allows you to write using an easy-to-read, easy-to-write plain text format, then convert it to structurally valid XHTML (or HTML).

So, you can understand why HTML tags are working in markdown language.
Also:

> Markdown’s syntax is intended for one purpose: to be used as a format for writing for the web.
>
> Markdown is not a replacement for HTML, or even close to it. Its syntax is very small, corresponding only to a very small subset of HTML tags. The idea is not to create a syntax that makes it easier to insert HTML tags. In my opinion, HTML tags are already easy to insert. The idea for Markdown is to make it easy to read, write, and edit prose. HTML is a publishing format; Markdown is a writing format. Thus, Markdown’s formatting syntax only addresses issues that can be conveyed in plain text.
>
> For any markup that is not covered by Markdown’s syntax, you simply use HTML itself.



<br>

# Below lies a basic guide to Markdown language. (Heading level 1)

## Heading level 2

### Heading level 3

#### Heading level 4

##### Heading level 5

###### Heading level 6

<br>

1st line with no space results in no new line
2nd line with spaces results in a new line (space here called Trailing Whitespaces)  
You can see this is a new line.
<br> Also you can use the  HTML version of line break

Enter a blank line to indicate a new para.

Alternate Syntax for Heading here (lvl 1)
===== 
<!-- (any number of =) -->
<!-- This is how comment is written in Markdown -->

For lvl 2
-----

_____
This indicated a line, min 3 underscores
_____

<br>
<br>
<!-- multiple <br> for more spaces -->

# Usual Text formatting

**Note :** Using `Markdown All in One` Extension, **Bolding** can be done using `Ctrl+B`, whereas *Italic* can be done using `Ctrl+I`

## **BOLD**

This is how a **bold** text is __written__.  
You can also **bold** in betwee**n wor**ds and wi**thi**n words.  
Avoid using underscores wi__thi__n words to make them __bold__.

## *Italic*


_Everything_ with *single asteriks* are I*tal*ic  
This do_esn_'t work btw.

## ***Bold and Italic***


L***oo***k at that! _**Try**_ and it **_works!_**  
Also, like ___this___! (Not recommended tho)

## ~~Strikethrough~~


This is done by using a pair of `~~`. Like `~~This~~` renders ~~This~~

## Blackquotes


> Put a '>' in front for the 1st line  
Next line

> For multiple paras,
>
> This is how it's done

> Next line is how nested Blackquotes are done
>> Look here, See?  

<br>

## **Lists**

### Bullets

- This is how you put bullets
- Working?
- eh?  

Nice, no?
- Huh?
    - Nested
        - See?
            - This is cool no?
        - So, this is the maximum line where the bullet notation stops changing
* You can also use stars, *
    + Or, plus, + instead of hyphens, -

### Numberings

1. Simply like that
2. Got it?
4. This gives 3 btw
1237. See? This doesn't break  

So, maybe try this?
1. one
1. two
1. three

As long as you don't start with 1, these numberings won't work:  
2. See now  
5. See?
32. But here, due not no automation,  
221. you need to take care of the line breaks  
2837. Cause, these are not numberings, these are simple lines

Also  
See this :
1. Look
2. At
3. The spaces

4. In between

There comes indentations:
1. See below
2. If you use
    1. Indent
    2. This happens
1. But, like before, you must
    1. Start with 1
        - You can also use bullets in between
    1. to make it numbering
1. Gotcha?

<br>

### Lists with paragraphs
___
*   This is the first list item.
*   Here's the second list item.

    You need to indent this para
    Like this

*   And here's the third list item.

<br>

1. This is with numbering
2. See if it works too?

    Working?

3. Can you see?

<br>

- This looks better

    > No?

- Agreed?

<br>

## Codes

    printf('Just use Indentations before the code');
    

1. If in a list  

    Use double indentations

        print('Do you get it?')

1. List continuation.

<br>

### SynTax highlighting (fenced code blocks)


```json
{
  "firstName": "John",
  "lastName": "Smith",
  "age": 25
}
```

```python
print("See the SynTax highlights in Python?")
```


```Fortran
PRINT *, "Fortran works too!"
```

```C
printf("This was expected.")
```



<br>

## Code (or quote)


To denote a `code`  
Multiple `` can be used to include `sections` within ``.

<br>

## Link


Links are written like this: [Google](https://google.com)

Also, titles can be added to the link:  
[Google](https://google.com "Try to hover over the link")

To quickly add URLs and email addresses, enclose withing <>
<https://www.markdownguide.org>  
<fake@example.com>

Formatting can also be done:  
I love supporting the **[EFF](https://eff.org)**.
This is the _[Markdown Guide](https://www.markdownguide.org)_
See the section on [`code`](#code).

<br>

**NOTE :**
Using the `Markdown All in One extension`, pasting link on a selected word makes it a hyperlinked text like above.

<br>

## Reference Style Linking


This is more readable in terms of larger text bodies. See for example:

>In a hole in the ground there lived a hobbit. Not a nasty, dirty, wet hole, filled with the ends
of worms and an oozy smell, nor yet a dry, bare, sandy hole with nothing in it to sit down on or to
eat: it was a [hobbit-hole][1], and that means comfort.

[1]: <https://en.wikipedia.org/wiki/Hobbit#Lifestyle> "Hobbit lifestyles"

<br>

## Images


Put a ! before the link format  
![Tux, the Linux mascot](C:\Users\kopty\OneDrive\Pictures\Screenshot_1.png)

![Philadelphia's Magic Gardens. This place was so cool!](/assets/images/philly-magic-gardens.jpg "Philadelphia's Magic Gardens")

![Image](https://flic.kr/p/Qv3rFw)

<br>

## Escape Character
_

\* Without the backslash, this would be a bullet in an unordered list.  
\\ Here, we escaped backslash itself.

<br>

## HTML tag for coloring


```HTML
<span style="color:yellow"> some *yellow* text </span>.
```

yields: 
<span style="color:yellow"> some *yellow* text </span>.

<br>

## Tables


| Syntax    | Description |
| --------- | ----------- |
| Header    | Title       |
| Paragraph | Text        |

Note that, the syntax for the table may not need to be perfectly alligned (dashes)

<br>

### Allignment :


| Syntax    | Description |   Test Text |
| :-------- | :---------: | ----------: |
| Header    |    Title    | Here's this |
| Paragraph |    Text     |    And more |


<br>

# Not supported in general Markdown

## Footnotes


Here's a simple footnote,[^1] and here's a longer one.[^bignote]

[^1]: This is the first footnote.

[^bignote]: Here's one with multiple paragraphs and code.

    Indent paragraphs to include them in the footnote.

        { my code }

    Add as many paragraphs as you like.


Seems like this is not supported in VS Code default Markdown

<br>

## LaTeX


$$
f(x) = \int_{-\infty}^{\infty} \hat{f(\xi)} e^{2 \pi i \xi x} \, d \xi
$$

**Inline** - You have to enclose tightly: $E=mc^2$

<br>

## Task Lists


- [x] Write the press release
- [ ] Update the website
- [ ] Contact the media

## Emoji


:tent:  :smile:

<br>

## Definiton Listing (Works only in Enhanced)

Hello
: Does this work?