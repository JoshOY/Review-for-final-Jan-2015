#离散型随机变量及其分布

##离散型随机变量

一个随机变量的取值范围集合是**可数的（不一定是有限的）**，则称其为**（一维）离散型随机变量**。

离散型随机变量的概率分布可用表格表示：

| X     | a1     | a2     | a3     |...     |
| :-----: | :----:  | :----:  | :----:  |:----:  |
| Pr    | p1     | p2     | p3     |...     |

##几种常用的离散型随机变量

1. 二项分布（特殊情况为0-1分布，即n=1时的二项分布）
  
    <img src="http://latex.codecogs.com/gif.latex?X&space;\sim&space;B(n,p)\Leftrightarrow&space;\mathbb{P}(X=k)&space;=&space;C^{k}_{n}p^{k}(1-p)^{n-k}" title="X \sim B(n,p)\Leftrightarrow \mathbb{P}(X=k) = C^{k}_{n}p^{k}(1-p)^{n-k}" />

2. 超几何分布 （example：N件产品中有M件不合格，从中抽n件，n件中含X件不合格品）

    <img src="http://latex.codecogs.com/gif.latex?\mathbb{P}(X=k)&space;=&space;\frac{&space;C^{k}_{M}&space;C^{n&space;-&space;k}_{N&space;-&space;M}&space;}{C^{n}_{N}}" title="\mathbb{P}(X=k) = \frac{ C^{k}_{M} C^{n - k}_{N - M} }{C^{n}_{N}}" />

3. 泊松分布（二项分布中p很小n很大时，设λ=np，可近似求值）

    <img src="http://latex.codecogs.com/gif.latex?X&space;\sim&space;P(\lambda)&space;\Leftrightarrow&space;\mathbb{P}(X=k)&space;=&space;e^{-\lambda&space;}&space;\cdot&space;\frac{\lambda}{k!}&space;\;&space;(\lambda&space;=&space;np)" title="X \sim P(\lambda) \Leftrightarrow \mathbb{P}(X=k) = e^{-\lambda } \cdot \frac{\lambda}{k!} \; (\lambda = np)" />

4. 几何分布（example：罚球，踢进为止）
 
    <img src="http://latex.codecogs.com/gif.latex?\mathbb{P}(X=k)&space;=&space;p(1-p)^{k-1}&space;\;&space;(k&space;=&space;1,&space;2,&space;...)" title="\mathbb{P}(X=k) = p(1-p)^{k-1} \; (k = 1, 2, ...)" />

##分布的可加性

1. 当X ~ B(m, p)，Y ~ B(n, p)时， X + Y ~ B(m + n, p)
2. X ~ P(λ1)，Y ~ P(λ2)，则 X + Y ~ P(λ1 + λ2)

注意使用条件： **X，Y必须相互独立**。