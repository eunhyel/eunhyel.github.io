---
layout: post
title:  "슬롯 머신 게임"
subtitle: "Slot Machine Game"
date:   2019-05-16 23:56:45
categories: [tool]
---

**미니 슬롯 머신 게임**

___

## 초기 화면
###  1. 기본 UI
서버에서 보상 아이템 코드 받아와 보상 아이콘 및 아이템 이름 뿌려줌


![기본 UI](https://media.tenor.com/images/d0ec290f42262ac7e3425e22ef769350/tenor.png)


Example code:

{% highlight javascript %}
var light = new Light();
var switchUp = new FlipUpCommand(light);
var switchDown = new FlipDownCommand(light);
var s = new Switch();

s.storeAndExecute(switchUp);
s.storeAndExecute(switchDown);
{% endhighlight %}


## 게임 시작
### 2. 시작 전
루비 및 인벤 체크 후 게임 시작
루비가 없거나 인벤자리가 없으면 팝업.


Example code:

{% highlight javascript %}
var light = new Light();
var switchUp = new FlipUpCommand(light);
var switchDown = new FlipDownCommand(light);
var s = new Switch();

s.storeAndExecute(switchUp);
s.storeAndExecute(switchDown);
{% endhighlight %}


## 게임 결과
### 3. 시작 후
서버에서 당첨 아이템 코드 받고
아이콘 램덤으로 돌리고 마지막에 당첨
아이콘 뿌려주고 팝업 띄우기.


Example code:

{% highlight javascript %}
var light = new Light();
var switchUp = new FlipUpCommand(light);
var switchDown = new FlipDownCommand(light);
var s = new Switch();

s.storeAndExecute(switchUp);
s.storeAndExecute(switchDown);
{% endhighlight %}