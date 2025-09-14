---
layout: post
title: "I redesigned the blog."
date: "2025-09-14"
author: "crazykitty"
tags: ["devlog", "webdev"]
---
## it's been a while
I've forgotten about this blog existing over the past few months.
Since this blog has been made I've made a [native bitmap to jpeg homebrew application for the 3DS](https://github.com/CrazyKitty357/bmp2jpg-3DS),
[kick chat support in godot](https://github.com/CrazyKitty357/kick.gd) *will be reworked*,
and a [greenheat](https://heat.prod.kr) [websocket api implementation in godot](https://github.com/CrazyKitty357/greenheatgd).

## what's the blog's patch notes?
- Changed css to be more consistent.
    - Was a custom color palette it's now [pear36](https://lospec.com/palette-list/pear36).
    <a href="{{ site.baseurl }}/assets/img/posts/i-redesigned-the-blog/beforeafter.png"><img src="{{ site.baseurl }}/assets/img/posts/i-redesigned-the-blog/beforeafter.png" style="border: 3px solid #ff6b97;"/></a>
- Added gif on homepage.
- Removed jekyll github pages blog default text.
    - Now replaced with the nav bar which was only seen on the blog homepage.
- Changed inconsistencies with visual date formatting.
    - The homepage was YYYY-MM-DD, now it's MM/DD/YYYY.
    - The articles were DD Month YYYY, now it's Month DD YYYY.
- Added kitty to [404 page](404).
<!-- this is ~~partially~~ mostly the reason why my hiatus was so long. more details about it are in a comment under the image, reader/viewer discretion is advised, you have been warned. -->
- Changed the favicon
    - Was <img src="{{ site.baseurl }}/favicon.ico.old" height="50px"> now it's <img src="{{ site.baseurl }}/favicon.ico" height="50px">.
    - I learned the ability to convert a png to an svg because of this.

Unrelated to patch notes but very related to making the *new* blog I learned [penpot](https://penpot.app) when making the inital concept design for this blog in my opinion it was better than figma.
Part A being I didn't have to run a systemd service to get custom fonts.
Part B, it has lospec color palette support via a plugin.
I only have 3 main issues with it.
The first one is the snapping is way to aggressive, when I want to move an object for only a few pixels it gets really jittery and wants to snap onto nothing.
The second isn't really a dealbreaker for but there is no custom theming support which makes it look off compared to every window.
The final one grinds my gears. When you import a font for the first time, then you change the text to the custom font you just imported, once you go to make edits to that text (moving, resizing, typing) it will sometimes revert to the previous font then snap back your font.  
Anyways with that rant done here is the original mock for the blog redesign
<a href="{{ site.baseurl }}/assets/img/posts/i-redesigned-the-blog/newblogmock.png">
    <img
        style="border: 3px solid #ff6b97;"
        src="{{ site.baseurl }}/assets/img/posts/i-redesigned-the-blog/newblogmock.png"
    />
</a>
## got any plans for anything?
I'm currently working on a new 3D overlay.
I'm considering on multistreaming to [Kick](https://kick.com/crazykitty) but that's just an idea floating around in my head at the moment.
I've already made the support addon to handle kick's undocumented main websocket connection, I would just need to add it into the new overlay.

Here's a leak of new starting soon screen (kitty not included).  

<a href="{{ site.baseurl }}/assets/img/posts/i-redesigned-the-blog/newstartsoonconept.png">
    <img
        style="border: 3px solid #ff6b97;" 
        src="{{ site.baseurl }}/assets/img/posts/i-redesigned-the-blog/newstartsoonconept.png"
        alt="I saw darkness around me as far as the eye can see. In front of me there was a blindingly white archway with an even brighter interrior. On the inky black ground sits a fat, black(brown) bombay cat with piercingly yellow eyes. I crouch down, smile, and say &quot;It&apos;s not my time, I&apos;m sorry.&quot;. My vision goes dark once again. I wake up from the &quot;dream&quot; within a dream. Then I go pee."
    />
</a>

Here's what I have in engine.
<a href="{{ site.baseurl }}/assets/img/posts/i-redesigned-the-blog/leakstart.png">
    <img
        style="border: 3px solid #ff6b97;"
        src="{{ site.baseurl }}/assets/img/posts/i-redesigned-the-blog/leakstart.png"
    />
</a>
I'll replace the bubbles with something else, I just need something to set the scene.
