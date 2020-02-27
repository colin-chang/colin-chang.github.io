---
#
# Use the widgets beneath and the content will be
# inserted automagically in the webpage. To make
# this work, you have to use › layout: frontpage
#
layout: frontpage
header:
  image_fullwidth: 27/EZe8w5ad4vIOopT.jpg
widget1:
  title: "Blogs"
  url: '/blog/'
  image: 27/YwS1zH7EOFtAuRq.jpg
  text: 'Blogs about daily life such as some random thoughts and activities.We also share some good ideas and solutions here.'
widget2:
  title: "Books"
  url: '/book/'
  image: 27/YNXySb8OUPxEMp3.jpg
  text: 'Here are some personal books wrote when I learn something new.most of them are about IT and other useful skills.'

widget3:
  title: "Theme"
  url: 'https://github.com/Phlow/feeling-responsive/'
  text: '1. Optimized for speed and it&#39;s responsive.<br/>2. Built on <a href="http://foundation.zurb.com/">Foundation Framework</a>.<br/>3. Customizable navigation, footer,...'
  video: '<a href="#" data-reveal-id="videoModal"><img src="https://i.loli.net/2020/02/27/yeiIEB9FzfVwlW2.jpg" width="302" height="182" alt=""/></a>'

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
