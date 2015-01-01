# 随机事件与概率
第一章的内容，没太多可说的，都是概念性东西。

## 事件与事件的关系
- 包含
- 相等
- 并事件
- 交事件
- 差事件
- 互不相容（互斥）
- 对立事件（逆事件or余事件）

## 定律

(1) 交换律

<img src="http://latex.codecogs.com/gif.latex?A&space;\bigcup&space;B&space;=&space;B&space;\bigcup&space;A;&space;A\bigcap&space;B&space;=&space;B\bigcap&space;A" title="A \bigcup B = B \bigcup A; A\bigcap B = B\bigcap A" />

(2) 结合律

<img src="http://latex.codecogs.com/gif.latex?A\bigcup&space;\left&space;(&space;B\bigcup&space;C&space;\right&space;)&space;=&space;\left&space;(&space;A\bigcup&space;B&space;\right&space;)&space;\bigcup&space;C" title="A\bigcup \left ( B\bigcup C \right ) = \left ( A\bigcup B \right ) \bigcup C" />

<img src="http://latex.codecogs.com/gif.latex?A\bigcap&space;\left&space;(&space;B\bigcap&space;C&space;\right&space;)&space;=&space;\left&space;(&space;A\bigcap&space;B&space;\right&space;)&space;\bigcap&space;C" title="A\bigcap \left ( B\bigcap C \right ) = \left ( A\bigcap B \right ) \bigcap C" />

(3) 分配律

<img src="http://latex.codecogs.com/gif.latex?A\bigcup&space;\left&space;(&space;B\bigcap&space;C&space;\right&space;)&space;=&space;\left&space;(&space;A\bigcup&space;B&space;\right&space;)&space;\bigcap&space;\left&space;(&space;A\bigcup&space;C&space;\right&space;)" title="A\bigcup \left ( B\bigcap C \right ) = \left ( A\bigcup B \right ) \bigcap \left ( A\bigcup C \right )" />

<img src="http://latex.codecogs.com/gif.latex?A\bigcap&space;\left&space;(&space;B\bigcup&space;C&space;\right&space;)&space;=&space;\left&space;(&space;A\bigcap&space;B&space;\right&space;)&space;\bigcup&space;\left&space;(&space;A\bigcap&space;C&space;\right&space;)" title="A\bigcap \left ( B\bigcup C \right ) = \left ( A\bigcap B \right ) \bigcup \left ( A\bigcap C \right )" />

(4)德·摩根律

<img src="http://latex.codecogs.com/gif.latex?\overline{A&space;\bigcup&space;B}&space;=&space;\overline{A}&space;\bigcap&space;\overline{B}" title="\overline{A \bigcup B} = \overline{A} \bigcap \overline{B}" />

<img src="http://latex.codecogs.com/gif.latex?\overline{A&space;\bigcap&space;B}&space;=&space;\overline{A}&space;\bigcup&space;\overline{B}" title="\overline{A \bigcap B} = \overline{A} \bigcup \overline{B}" />

## 等可能概型

随机事件发生的可能性的大小用区间 [0, 1] 中的一个数来刻画。这个数称为**概率**。

规定必然事件 **Ω** 与不可能事件 **Ø** 的概率为：

<img src="http://latex.codecogs.com/gif.latex?\mathbb{P}\left&space;(&space;\Omega&space;\right&space;)&space;=&space;1;&space;\mathbb{P}\left&space;(&space;\phi&space;\right&space;)&space;=&space;0" title="\mathbb{P}\left ( \Omega \right ) = 1; \mathbb{P}\left ( \phi \right ) = 0" />

**古典型概率**：具有以下两个特征的随机试验的数学模型：

1. 样本空间 **Ω** = {ω1, ω2, ω3, ω4, ..., ωn}为有限集。
2. P({ω1}) = P({ω2}) = P({ω3}) = ... = P({ωn})

**几何型概率**：假定样本空间**Ω**是某个区域（可以是一维的、二维的、三维的……），每个样本点等可能地出现。

###注意点
**概率为 0 的事件不一定是不可能事件，概率为 1 的事件不一定是必然事件。【选择题神坑】**

## 概率的一些性质
三条公理：非负性、规范性、可列可加性（对无限个事件，且两两互不相容时）。

若干性质：

(1)  <img src="http://latex.codecogs.com/gif.latex?\mathbb{P}\left&space;(&space;\phi&space;\right&space;)&space;=&space;0" title="\mathbb{P}\left ( \phi \right ) = 0" />

(2) 有限可加性（可列可加性的有限化）

<img src="http://latex.codecogs.com/gif.latex?\mathbb{P}\left&space;(&space;A_{1}&space;\bigcup&space;...&space;\bigcup&space;A_{n}&space;\right&space;)&space;=&space;\mathbb{P}\left&space;(&space;A_{1}&space;\right&space;)&space;&plus;&space;...&space;&plus;&space;\mathbb{P}\left&space;(&space;A_{n}&space;\right&space;)" title="\mathbb{P}\left ( A_{1} \bigcup ... \bigcup A_{n} \right ) = \mathbb{P}\left ( A_{1} \right ) + ... + \mathbb{P}\left ( A_{n} \right )" /> [A1, ..., An 两两不相容时]

(3) 对任意事件A，

<img src="http://latex.codecogs.com/gif.latex?\mathbb{P}\left&space;(&space;\overline{A}&space;\right&space;)&space;=&space;1&space;-&space;\mathbb{P}\left&space;(&space;A&space;\right&space;)" title="\mathbb{P}\left ( \overline{A} \right ) = 1 - \mathbb{P}\left ( A \right )" />

(4) 事件A, B满足 A ⊂ B 时，

<img src="http://latex.codecogs.com/gif.latex?\mathbb{P}\left&space;(&space;B&space;-&space;A&space;\right&space;)&space;=&space;\mathbb{P}\left&space;(&space;B&space;\right&space;)&space;-&space;\mathbb{P}\left&space;(&space;A&space;\right&space;),&space;\mathbb{P}\left&space;(&space;B&space;\right&space;)&space;\geq&space;\mathbb{P}\left&space;(&space;A&space;\right&space;)" title="\mathbb{P}\left ( B - A \right ) = \mathbb{P}\left ( B \right ) - \mathbb{P}\left ( A \right ), \mathbb{P}\left ( B \right ) \geq \mathbb{P}\left ( A \right )" />

(5) 任意事件A满足

<img src="http://latex.codecogs.com/gif.latex?\mathbb{P}\left&space;(&space;A&space;\right&space;)&space;\leq&space;1" title="\mathbb{P}\left ( A \right ) \leq 1" />

(6) 对任意两个事件A，B有

<img src="http://latex.codecogs.com/gif.latex?\mathbb{P}\left&space;(&space;B&space;-&space;A&space;\right&space;)&space;=&space;\mathbb{P}\left&space;(&space;B&space;\right&space;)&space;-&space;\mathbb{P}\left&space;(&space;AB&space;\right&space;)" title="\mathbb{P}\left ( B - A \right ) = \mathbb{P}\left ( B \right ) - \mathbb{P}\left ( AB \right )" />

(7) 加法公式

<img src="http://latex.codecogs.com/gif.latex?\mathbb{P}\left&space;(&space;A&space;\bigcup&space;B&space;\right&space;)&space;=&space;\mathbb{P}\left&space;(&space;A&space;\right&space;)&space;&plus;&space;\mathbb{P}\left&space;(&space;B&space;\right&space;)&space;-&space;\mathbb{P}\left&space;(&space;AB&space;\right&space;)" title="\mathbb{P}\left ( A \bigcup B \right ) = \mathbb{P}\left ( A \right ) + \mathbb{P}\left ( B \right ) - \mathbb{P}\left ( AB \right )" />

## 条件概率

对于任意两个事件A，B，其中 P(B) > 0，则称

<img src="http://latex.codecogs.com/gif.latex?\mathbb{P}\left&space;(&space;A&space;|&space;B&space;\right&space;)&space;\;&space;\widehat{=}&space;\;&space;\frac{\mathbb{P}\left&space;(&space;AB&space;\right&space;)&space;}{\mathbb{P}\left&space;(&space;B&space;\right&space;)&space;}" title="\mathbb{P}\left ( A | B \right ) \; \widehat{=} \; \frac{\mathbb{P}\left ( AB \right ) }{\mathbb{P}\left ( B \right ) }" />

为 在已知事件 B 发生下，事件 A 的**条件概率**。

## 事件的独立性

对于任意两个事件 A，B如果满足

<img src="http://latex.codecogs.com/gif.latex?\mathbb{P}\left&space;(&space;A&space;B&space;\right&space;)&space;=&space;\mathbb{P}\left&space;(&space;A&space;\right&space;)&space;\mathbb{P}\left&space;(&space;B&space;\right&space;)" title="\mathbb{P}\left ( A B \right ) = \mathbb{P}\left ( A \right ) \mathbb{P}\left ( B \right )" />

则称**事件A与事件B相互独立**。

若任意三个事件A，B, C，其中AB、AC、BC相互独立，要判断A、B、C相互独立还需要下式成立：

<img src="http://latex.codecogs.com/gif.latex?\mathbb{P}\left&space;(&space;A&space;B&space;C&space;\right&space;)&space;=&space;\mathbb{P}\left&space;(&space;A&space;\right&space;)&space;\mathbb{P}\left&space;(&space;B&space;\right&space;)&space;\mathbb{P}\left&space;(&space;C&space;\right&space;)" title="\mathbb{P}\left ( A B C \right ) = \mathbb{P}\left ( A \right ) \mathbb{P}\left ( B \right ) \mathbb{P}\left ( C \right )" />

即四个条件（AB、AC、BC相互独立以及上式成立）都成立才行。

其他情况可以类似推知。

## 贝努利概型与二项概率

1次试验中，只关心某个事件A是否发生，称这个实验为**贝努利试验**，相应的数学模型称为**贝努利概型**。n个独立试验合在一起称为**n重贝努利试验**。
设事件Bk表示“n重贝努利试验中事件A恰好发生了k次”，则

<img src="http://latex.codecogs.com/gif.latex?\mathbb{P}\left&space;(&space;B_{k}&space;\right&space;)&space;=&space;\mathbb{P}_{n}&space;\left&space;(&space;B&space;\right&space;)&space;=&space;C_{n}^{k}&space;\;&space;p^{k}&space;\;&space;(1-p)^{n-k}&space;\;&space;\;&space;(0&space;<&space;k&space;<&space;n&space;;&space;k&space;\;&space;\epsilon&space;\;&space;N)" title="\mathbb{P}\left ( B_{k} \right ) = \mathbb{P}_{n} \left ( B \right ) = C_{n}^{k} \; p^{k} \; (1-p)^{n-k} \; \; (0 < k < n ; k \; \epsilon \; N)" />

称为**二项概率**。
