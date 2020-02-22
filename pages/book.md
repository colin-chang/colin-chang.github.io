---
layout: default
format: blog-index
noindex: true
title: "Book & Notebook"
header:
   image: "21/1Ff10I.png"
   background-color:  "#000"
permalink: "/book/"
books:
  - name: ".Net Core"
    url: "netcore"
    categories: "Development"
    thumb: "21/1FT641.jpg"
    intro: ".NET Core 是开放源代码通用开发平台，由 Microsoft 和 .NET 社区在 GitHub 上共同维护。 它跨平台（支持 Windows、macOS 和 Linux），并且可用于生成设备、云和 IoT 应用程序。"
    date: "2018-12-08"
  - name: "Python"
    url: "python"
    categories: "Development"
    thumb: "21/1FTBB4.jpg"
    intro: "Python是人工智能（AI）和数据分析常用语言。TensorFlow等机器学习框架使用Python开发， Python还含有优质的文档、丰富的AI库、机器学习库、自然语言和文本处理库。尤其是Python中的机器学习，实现了人工智能领域中大量的需求。"
    date: "2018-12-08"
  - name: "Linux"
    url: "linux"
    categories: "Operation"
    thumb: "21/1FfD7q.jpg"
    intro: "Linux是一套免费使用和自由传播的类Unix操作系统，是一个基于POSIX和UNIX的多用户、多任务、支持多线程和多CPU的操作系统。Linux能运行主要的UNIX工具软件、应用程序和网络协议。它支持32位和64位硬件。Linux继承了Unix以网络为核心的设计思想，是一个性能稳定的多用户网络操作系统。"
    date: "2018-12-08"
  - name: "系统架构设计"
    url: "architecture"
    categories: "Structure"
    thumb: "21/1FfMXd.jpg"
    intro: "关于大型系统的分布式架构在网上存在着大量的相关资料，在不同的技术栈中又存在这些许的差异，但究其根本整体的思路是大同小异的。我们就此以.net平台为例，对分布式架构的演化过程做一个简单的梳理。"
    date: "2018-12-08"
---

<div class="row">
	<div class="medium-8 columns t30">
      {% for book in page.books %}
      <div class="row">
         <div class="small-12 columns b60">
            <p class="subheadline">
               {{ book.categories | join: ' &middot; ' | prepend: '<span class="subheader">' | append: '</span>' }}
            </p>
            <h2 style="margin-top:0">
               <a href="https://ccstudio.org/{{ book.url }}" target="_blank">
                  {{ book.name }}
               </a>
            </h2>
            <p>
               {% if book.thumb %}
               <a href="https://ccstudio.org/{{ book.url }}" title="{{ book.name | escape_once }}"  target="_blank">
                  <img src="{{ site.urlimg }}{{ book.thumb }}" class="alignleft"/>
               </a>
               {% endif %}
               {% if book.intro %}
                  {{ book.intro | strip_html | escape }}
               {% endif %}
            </p>
            <p>
               <a href="https://ccstudio.org/{{ book.url }}" title="{{ site.data.language.read }} {{ book.name | escape_once }}"  target="_blank">
                  <strong>{{ site.data.language.read_more }}</strong>
               </a>
               <span style="float:right;margin-right:15px;">{{book.date}}</span>
            </p>
         </div>
      </div>
      {% endfor %}
	</div>

	<div class="medium-4 columns t30">
		{% include _sidebar.html %}
	</div>
</div>