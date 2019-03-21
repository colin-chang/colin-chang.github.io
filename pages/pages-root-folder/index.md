---
#
# Use the widgets beneath and the content will be
# inserted automagically in the webpage. To make
# this work, you have to use › layout: frontpage
#
layout: frontpage
header:
  image_fullwidth: home-title.jpg
widget1:
  title: "Blog & Portfolio"
  url: '/blog/'
  image: home-blog.jpg
  text: 'Every good portfolio website has a blog with fresh news, thoughts and develop&shy;ments of your activities. We also give readers a quick overview of all the posts.'
widget2:
  title: "Book & Notebook"
  url: '/book/'
  image: home-book.jpg
  text: 'Here are some personal books and notes writed when I learn something new.Such as IT and other skills.All of these books are base on <a href="https://www.gitbook.com/@colinchang/spaces">Gitbook</a>.'

widget3:
  title: "Theme Document"
  url: 'https://github.com/Phlow/feeling-responsive/'
  text: '1. Language-Support :)<br/>2. Optimized for speed and it&#39;s responsive.<br/>3. Built on <a href="http://foundation.zurb.com/">Foundation Framework</a>.<br/>4. Customizable navigation, footer,...'
  video: '<a href="#" data-reveal-id="videoModal"><img src="/images/home-doc.jpg" width="302" height="182" alt=""/></a>'

#
# Use the call for action to show a button on the frontpage
#
# To make internal links, just use a permalink like this
# url: /getting-started/
#
# To style the button in different colors, use no value
# to use the main color or success, alert or secondary.
# To change colors see sass/_01_settings_colors.scss
#
callforaction:
  url: https://github.com/colin-chang/colin-chang.github.io/issues
  text: Inform me about any suggestions ›
  style: secondary
permalink: /index.html
#
# This is a nasty hack to make the navigation highlight
# this page as active in the topbar navigation
#
homepage: true
---

<div id="videoModal" class="reveal-modal large" data-reveal="">
  <div class="flex-video widescreen vimeo" style="display: block;">
    <iframe width="1280" height="720" src="https://www.youtube.com/embed/3b5zCFSmVvU" frameborder="0" allowfullscreen></iframe>
  </div>
  <a class="close-reveal-modal">&#215;</a>
</div>
