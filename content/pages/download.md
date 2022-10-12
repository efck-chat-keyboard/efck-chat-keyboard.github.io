title: Download
template: page-download
bg_file: emoji_u1f680_rocket.svg
icon: 📦
quote: <q>No user-servicable parts inside. Refer to qualified service personnel.</q>

EFCK Chat Keyboard runs <del>well</del><ins>decently</ins> on all major desktop platforms: 

<div markdown="1">

<details id="win" markdown="1">
<summary itemprop="operatingSystem">
<svg style="width: 2em" xmlns="http://www.w3.org/2000/svg" color="#0078d4" viewBox="0 0 24 24"><path d="M0 0h11.4v11.4H0Zm12.6 0H24v11.4H12.6ZM0 12.6h11.4V24H0Zm12.6 0H24V24H12.6"/></svg>
Windows</summary>

[Windows installer EXE](/dl/win.html){: target=_blank}, 23 MB

#### Installation Notes

Once installed, use keyboard shortcut <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>.</kbd> to run the program.
</details>


<details id="mac" markdown="1">
<summary itemprop="operatingSystem">
<svg style="width: 2em;" xmlns="http://www.w3.org/2000/svg" color="gray" viewBox="0 0 24 24"><path d="M12.2 6.9c-1 0-2.5-1-4-1-2 0-4 1.1-5 3-2 3.6-.5 9 1.5 12 1 1.5 2.3 3.2 3.8 3.1 1.6 0 2.1-1 4-1 1.8 0 2.3 1 4 1 1.6 0 2.6-1.5 3.6-3a13 13 0 0 0 1.7-3.4 5.3 5.3 0 0 1-.6-9.4 5.6 5.6 0 0 0-4.4-2.4C14.8 5.6 13 7 12.2 7zm3.3-3c.9-1 1.4-2.5 1.3-3.9-1.2 0-2.7.8-3.6 1.8A5 5 0 0 0 12 5.5c1.3.1 2.7-.7 3.5-1.7"/></svg>
macOS</summary>
macOS package, 25 MB, flexible pricing:
<form id="buy-form" action="https://www.buymeacoffee.com/__k_"><label>💲 <input type="number" value="5" min=0 style="width: 7ch"></label> <button type="submit">Buy for $5</button></form>
<script>
let [f, input, btn] = document.querySelectorAll('#buy-form, #buy-form input, #buy-form button');
input.addEventListener('change', () => { btn.innerHTML = input.value > 0 ? 'Buy for $' + input.value : 'Download for free' });
f.addEventListener('submit', () => { if (input.value <= 0) { f.action = '/dl/mac.html'; f.target = "_blank"; } });
</script>
<small>Donations are processed by BuyMeACoffee.com.</small>
{: style="margin:0"}

<hr style="margin-top:4em">

#### Installation Notes

Post installation, it is recommended to
[assign a keyboard shortcut](https://support.apple.com/en-gu/guide/mac-help/mchlp2271/mac),
such as <kbd>Ctrl</kbd>+<kbd>Cmd</kbd>+<kbd>Space</kbd>
or <kbd>Ctrl</kbd>+<kbd>Cmd</kbd>+<kbd>.</kbd>,
to launch the app.

Since the free and open-source package doesn't want to pay $99
annual fee for the _Apple Developer Program_,
the release package is not cryptographically signed,
and you may encounter a blocker such as:

![... cannot be opened because it is from an unidentified developer]({static}/images/macos-1.png){:.screenshot loading=lazy}
{:.center}

In order to circumvent it, go to
**System Preferences | Security & Privacy**, and on **General** tab
click **Open Anyway**:

![System Preferences | Security & Privacy dialog, General tab, Open Anyway]({static}/images/macos-2.png){:.screenshot loading=lazy}
{:.center}

Afterwards, when you run EFCK for the first time, you may see:

![macOS cannot verify the developer of ... are you sure you want to open it?]({static}/images/macos-3.png){:.screenshot loading=lazy}
{:.center}

And you click **Open**.

When activating some emoji/text item for the first time,
you may additionally experience a blocker where you click **OK**:

![... wants access to control "System Events.app"]({static}/images/macos-4.png){:.screenshot loading=lazy}
{:.center}

This is needed so the app is
able to type into the previously focused window.
Again, go to
**System Preferences | Security & Privacy**, and on **Privacy** tab,
**Accessibility** menu, ensure EFCK is on the list of allowed apps.
If it's already there, but it doesn't work,
_add it again_ for good measure:

![System Preferences | Security & Privacy dialog, Privacy tab, Accessibility menu]({static}/images/macos-5.png){:.screenshot loading=lazy}
{:.center}

Without this permission, the activated item would instead
be placed into your clipboard.

Once sales permit it, we will consider joining
_Apple Developer Program_.
</details>


<details id="linux" markdown="1">
<summary itemprop="operatingSystem" markdown="1">
![ ]({static}/images/linux.webp){: style="width: 2em;"}
GNU/Linux</summary>

[Generic GNU/Linux x64 binary archive](/dl/linux.html){: target=_blank} (X11/Wayland), 54 MB

[Debian / Ubuntu / Linux Mint DEB package](/dl/debian.html){: target=_blank}, 150 kB

Installation Notes
------------------
If on **X11**, additionally install package _**xdotool**_, e.g.

    sudo apt install xdotool

If on **Wayland**, additionally install package _**ydotool**_, e.g.

    sudo apt install ydotool

It is recommended to
assign a keyboard shortcut
such as <kbd>Win</kbd>+<kbd>.</kbd>
or <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>.</kbd>
to execute `efck-chat-keyboard`.

</details>


<details markdown="1">
<summary markdown="1">
![ ]({static}/images/pypi.svg){: style="width: 2em;"}
PyPI</summary>
You can install
[EFCK from PyPI](https://pypi.org/project/efck/)
via:

    pip install 'efck[extra]'

    # Additionally, install preferred Qt
    pip install pyqt6  # or pyside6 or pyqt5

    # Run
    python -m efck

*[PyPI]: Python Package Index

</details>


<details markdown="1">
<summary>
<svg style="height: 2em;" xmlns="http://www.w3.org/2000/svg" fill-rule="evenodd" clip-rule="evenodd" image-rendering="optimizeQuality" shape-rendering="geometricPrecision" text-rendering="geometricPrecision" viewBox="0 0 411 512"><path d="M411 485a27 27 0 0 1-27 27H27a27 27 0 0 1-27-27V27A27 27 0 0 1 27 0h230c4 0 9 2 11 5l132 129c6 2 11 7 11 14v337zM205 246a14 14 0 0 1 28 7l-31 133a14 14 0 1 1-28-6l31-134zm68 129a14 14 0 0 1-18-22l42-37-42-37a14 14 0 0 1 18-21l55 48 1 1c6 6 5 15-1 20l-55 48zm-117-22a14 14 0 0 1-18 22l-55-48a14 14 0 0 1 0-21l55-48a14 14 0 0 1 18 21l-42 37 42 37zm225-187H257c-9 0-15-7-15-15V30H30v452h351V166zM272 52l89 84h-89V52z"/></svg>
Source code</summary>
Source code repository and issue tracker are
[hosted on GitHub](https://github.com/efck-chat-keyboard/efck/).
Contributions are welcome.
</details>

</div>


<div class="bmac"><a class href="https://www.buymeacoffee.com/__k_"><img loading="lazy" alt="Buy me a coffee" src="{static}/images/BuyMeACoffee.webp"></a></div>
