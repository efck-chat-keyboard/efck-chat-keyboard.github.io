title: FAQ / Docs
template: page-faq
bg_file: emoji_u1f937_200d_2642_shrug.svg
icon: 📘
quote: <q>What we anticipate seldom occurs; what we least expect generally happens.</q><br>— Bengamin Disraeli

## Basic program operation

<details markdown="1">
<summary><h3>How do I cancel / close / exit the app?</h3></summary>
To close EFCK, like any cancelable dialog, 
simply use Escape (<kbd>Esc</kbd>) key.
See here for additional [keyboard shortcuts](#keyboard-shortcuts).
</details>


<details markdown=1 id="keyboard-shortcuts">
<summary><h3>What keyboard shortcuts are available?</h3></summary>
EFCK responds to the following keyboard keys with
the specified actions:

* <kbd>Alt</kbd>+<kbd>E</kbd>: switch to _Emoji_ tab.
* <kbd>Alt</kbd>+<kbd>F</kbd>: switch to _Filters_ tab.
* <kbd>Alt</kbd>+<kbd>G</kbd>: switch to _GIFs_ tab.
* <kbd>Alt</kbd>+<kbd>O</kbd>: switch to _Options_ tab.
* <kbd>←</kbd>, <kbd>↑</kbd>, <kbd>→</kbd>, <kbd>↓</kbd> (arrow keys):
  move main view selection. To instead move the caret (text input cursor)
  in the text edit field, use e.g. <kbd>Ctrl</kbd>+<kbd>←</kbd> (or <kbd>Cmd</kbd>+<kbd>←</kbd> on macOS) or
  <kbd>Home</kbd> to move to the previous word.
* <kbd>Enter</kbd>: activate the current selection and issue the
  associated action (type out the chosen emoji or text,
  put stuff into system clipboard ...)
* <kbd>Alt</kbd>+<kbd>1</kbd> ... <kbd>Alt</kbd>+<kbd>9</kbd>: 
  select and activate the offset-numbered item in the view.
  Particularly useful in _Filters_ tab where the available
  transforms always maintain their sorted order regardless of input text.
* <kbd>Esc</kbd>: exit the application.
* <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>.</kbd>:
  **only on Windows**, this is installed to launch the Start Menu shortcut / program.
</details>


<details markdown="1">
<summary><h3>How do I use GIFs?</h3></summary>
Rather than activate the chosen GIF with <kbd>Enter</kbd> key (works on X11),
you can drag and drop it into the target receiver application. 
</details>


<details markdown="1">
<summary><h3>The window has no titlebar / handle. How do I move / resize?</h3></summary>
It is very modern for windows to draw their own window frames and reinvent
procedures for common window actions like resizing, moving, toggling state ...
These are called _client-side decorations_ and _branding_.
Who gives a f— what the user likes on their desktop.
"We gave you an app; you will submit to us, fully."
Digression over.

To resize the window, you can use the **size grip in the bottom right window corner**.

To move the window, you can **"pick it" on any background window surface**
(i.e. not the tabbar, not the text input field, not the main list view, 
but everything else).
</details>


<details markdown="1" id="config-home">
<summary><h3>Where are program configuration / extensions kept?</h3></summary>
EFCK stores it's files in user's local config home folder.
This location is platform dependent:

* **Windos**:  
  `%LOCALAPPDATA%\{APP_NAME}`  
  `%PROGRAMDATA%\{APP_NAME}` &nbsp;&nbsp;(sometimes)
* **macOS**:  
  `~/Library/Preferences/{APP_NAME}`
* **GNU/Linux/X11**:  
  `~/.config/{APP_NAME}`  
  `$XDG_CONFIG_HOME/{APP_NAME}` &nbsp;&nbsp;(if the variable is set).

In all above cases, `{APP_NAME}` stands for `"efck-chat-keyboard"`.
</details>



## Custom emoji

<details markdown=1 id="create-emoji">
<summary><h3>How do I create custom emoji?</h3></summary>
Emoji text characters are well-defined codepoints in the Unicode
Standard, released by the Unicode Consortium.
**You can't create your own emoji** in an interoperable manner, 
**but you can**
[_propose_ to the Unicode Consortium](https://www.unicode.org/emoji/proposals.html)
that a new emoji be added to Unicode standard.
Here is a
[list of current emoji proposals with their latest status](https://www.unicode.org/emoji/emoji-requests.html).

**You can also**
[add custom _emoji sequences_ and override text bindings](#emoji-custom-strings)
in EFCK.

**You _could_** [forge a new font](https://fontforge.org)
with custom images you pick assigned arbitrary codepoints
from the
[Unicode private use blocks](https://en.wikipedia.org/wiki/Private_Use_Areas)
and then make all your recipients use your font file,
but that's all unlikely and not really worthwhile. 
</details>


<details markdown="1" id="emoji-custom-strings">
<summary><h3>How to add custom emoji sequences / alias text bindings?</h3></summary>
You can create custom text aliases for emoji by adding lines to
_emoji-custom-strings.txt_ file kept in your
[config home folder](#config-home).

If the file doesn't exist, create it.
The expected format is simply the emoji character or sequence
(no whitespace allowed) followed by the desired text alias.
E.g.:

    # Comments are prefixed with '#' symbol and ignored
    # Line format: emoji_sequence any_text_alias
    👨🏿‍❤️‍💋‍👨🏿	gay
    😂🔫	blow brains out

For more inspiration, see [bundled _emoji-custom-strings.txt_](https://github.com/efck-chat-keyboard/efck/blob/master/efck/emoji-custom-strings.txt).
</details>


<details markdown=1 id="fonts">
<summary><h3>What emoji fonts are available?</h3></summary>

* **Apple Color Emoji** -- Emoji font on macOS and Apple devices.
* [**Noto Color Emoji**](https://fonts.google.com/noto/specimen/Noto+Color+Emoji)
  -- Google's emoji font used on Android and readily
  available on GNU/Linux.
* [**Twitter Color Emoji**](https://twemoji.twitter.com)
  -- A free-to-use Emoji font from Twitter,
  also shipped by Mozilla Firefox.
* **SegoeUI Emoji** -- Windows 7-11 emoji font.
* [**OpenMoji Color**](https://openmoji.org/)
  -- An open source emoji font that is currently in beta.
* **Joypixels** -- One needs a license to use the font. Geesh!
* [**Symbola**](https://dn-works.com/ufas/)
  -- A black and white font with fair Unicode 9.0 coverage.

Most fonts work well on Android/GNU/Linux/X11/fontconfig.
Presently, only the platform-shipped default fonts work
on Widows and macOS.

Note again, what emoji images your recipients see depends
solely on what emoji fonts are loaded on _their machines_,
therefore one might as well just stick with platform defaults.
</details>


<details markdown="1">
<summary><h3>How do I use a custom emoji font?</h3></summary>
By default, EFCK uses platform-default emoji font,
with fallback alternatives configured as are known to be supported.
You can force use of a custom emoji font family by setting
environment variable `ICON_FONT`. E.g.:

    export ICON_FONT="Twitter Color Emoji"
    ./efck-chat-keyboard

See instructions how to set environment variables
[on Linux](https://www.google.com/search?q=set+environment+variable+linux),
[on macOS](https://stackoverflow.com/questions/56307294/how-do-i-launch-a-mac-osx-macos-app-with-an-environment-variable-set),
and [on Windosw](https://www.google.com/search?q=set+environment+variable+windows).

Of course, the font has to be installed beforehand.
See here for [emoji font alternatives](#fonts).
</details>


## Troubleshooting and debugging

<details markdown="1">
<summary><h3>Some emoji glyphs are white / empty / placeholder / missing ...</h3></summary>
EFCK ships with official emoji sequences for the
[latest Unicode Standard](https://www.unicode.org/versions/latest/).
And cooking new emoji sequences is
[all the rage these days](#create-emoji).
**If you see only white empty squares**,
your platform emoji font (see [#fonts](#fonts)) and
any of the available fallback emoji fonts are, in fact,
missing glyphs for the associated code points.
What you can do is **update your font to the latest version**.
</details>


<details markdown="1">
<summary><h3>The keyboard <em>never</em> types out the selected emoji ...</h3></summary>

Typing out the text into the previously focused window may not be supported
on your platform. Typeout was tested working on Widosw, macOS,
Linux/X11 (using xdotool), and Linux/Wayland (using ydotool or wtype).

If it's not working for you on one of these platforms, please
[submit a bug report](#bug-report).
</details>


<details markdown="1">
<summary><h3>Doesn't seem to work on macOS ...</h3></summary>

Make sure you have followed [macOS installation notes]({filename}/pages/download.md#mac).
</details>


<details markdown="1">
<summary><h3>I only get some weird characters typed out ...</h3></summary>
If instead of the expected emoji or text the program types out
unexpected characters like empty rectangles or rectangles with some numbers
(like one of `𪛗�۝□`) or Chinese letters or strings like `&lt;ffffffff&gt;`,
**the issue likely lies with the receiving program**.
Please only raise new bug reports if you can't make it work
in a quality program like Firefox or Chromium.
</details>


<details markdown="1">
<summary><h3>Generally works, but doesn't paste into some fields ...</h3></summary>
The typeout function only works with **programs that _retain_
keyboard focus on the focused input field** even as their windows are
deactivated (unfocused).
Therefore, it works, for instance, with most browsers' location fields,
but it doesn't work with Windos' File Manager file rename operation
since the rename operation is canceled once the window loses focus.

**To augment the typeout function,
you can force use of system clipboard in _Options_ tab.**
</details>


<details id="debugging" markdown="1">
<summary><h3>Debugging CLI switch and log file location</h3></summary>
Use **`--debug` command line switch** to print debug messages on
stderr and into the log file.
Log file location is
`"$TMPDIR/efck-chat-keyboard-{timestamp}.log"`
where variable `$TMPDIR` is resolved as per the algorithm of
[Python's `tempfile.gettempdir()`](https://docs.python.org/3/library/tempfile.html#tempfile.gettempdir)
function.
</details>


<details id="bug-report" markdown="1">
<summary><h3>Reporting bugs / issues</h3></summary>
Please report bugs on the [issue tracker on GitHub](https://github.com/efck-chat-keyboard/efck/issues).
Please kindly revise
[contributing guidelines](https://github.com/efck-chat-keyboard/efck/blob/master/CONTRIBUTING.md),
in particular, see
[how to report bugs effectively](https://www.chiark.greenend.org.uk/~sgtatham/bugs.html). Thanks!
</details>


## Extending the application {: id="extending"}

<details markdown="1" id="custom-tabs">
<summary><h3>How do I make custom tabs?</h3></summary>
**EFCK is written in Python programming language
and based on Qt widget framework**, so you'll need some grasp of both.
In order to write a custom tab, simply extend
[`efck.tab.Tab`](https://github.com/efck-chat-keyboard/efck/blob/master/efck/tab.py)
class in your module file that you put in your
[config dir](#config-home)
"tabs" subdirectory (create it if doesn't exist).

See [bundled tabs](https://github.com/efck-chat-keyboard/efck/tree/master/efck/tabs)
for code inspiration and don't hesitate to
drop by the discussion forum if you think you need help.
</details>


<details markdown="1">
<summary><h3>How can I customize text filters?</h3></summary>
Create a python module in your
[config dir](#config-home)
"filters" subdirectory (create it if doesn't exist).
The module name will become the filter's name and
will affect its **sort order**. The module needs to define
one function as below:

    def func(text: str) -> str:
        transformed: str = ...  # transform text
        return transformed

    example = 'Placeholder to pass through func and show when text empty'

**To disable a built-in filter**, _name_ an empty file module
the same as the built-in filter you want to disable
(e.g. create empty file `$CONFIG_HOME/filters/bold.py`
to disable "bold" text transform).

See [bundled filters](https://github.com/efck-chat-keyboard/efck/tree/master/efck/filters)
for more transforming inspiration.
See also above [question on customizing tabs](#custom-tabs).
</details>


<div class="bmac"><a class href="https://www.buymeacoffee.com/__k_"><img alt="Buy me a coffee" src="{static}/images/BuyMeACoffee.webp"></a></div>
