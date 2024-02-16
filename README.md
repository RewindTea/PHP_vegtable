《芋头蔬菜店》网站设计
一、项目意义
	蔬菜作为人们生活中必不可少的食物，必须有一个便捷的方式让人们快速地买到新鲜质量好的蔬菜，	而且有人会因为平时工作忙而没有时间去实体店买，所以就需要网购蔬菜店为他们节约时间；
这个项目准备用php语言实现，首先先画出产品设计图并设计数据库，然后进行一个个功能的代码	实现，最后测试一遍是否有bug。

二、总体设计
设计思路：总共设计9个页面以及它们各自的功能实现页面。
主要页面包括
index.php、header.php、foot.php、vegetables.php、login.php、register.php、search.php、shoppingCarShow.php、order.php
数据库结构：三个表
user：用户信息（`userid`, `username`, `password`, `phone`, `email`, `regdate`）
vegetable：存储蔬菜信息（`vegid`, `vegname`, `vegprice`, `norms`, `photo`, `introduction`）
vegIndent：存储订单信息（`orderid`, `userid`, `commodity`, `quantity`, `consignee`, `sex`,`address`, `postcode`, `telephone`, `email`, `express`, `orderdate`, `buyer`, `state`, `total`）
三、详细设计
主页（index.php）：介绍网站的功能，粗略显示可购买的蔬菜，介绍网页制作人
主要技术：findAllVegetables方法，查找数据库里全部蔬菜
![image](https://github.com/RewindTea/PHP_vegtable/assets/142219991/4aa5c943-d941-40ab-ad03-d119a8911ece)
header.php：头部导航页，显示主页，蔬菜，登录/注册，购物车等模块
![image](https://github.com/RewindTea/PHP_vegtable/assets/142219991/1f468172-c6dc-41d0-ae13-1f4502059cc6)
foot.php：尾部，显示网站制作人的联系方式
![image](https://github.com/RewindTea/PHP_vegtable/assets/142219991/2e0a69b4-79e7-4da3-a5d4-35b46ac96d18)
vegetables.php：显示所有蔬菜页，实现分页显示所有蔬菜功能，每个蔬菜配有加入购物车按钮
主要技术：分页显示功能：用currentPage和totalPage变量分别控制当前页面和总页面，再通过getSomeVeg方法将变量传递到SQL语句查询符合条件的蔬菜
![image](https://github.com/RewindTea/PHP_vegtable/assets/142219991/705e83ce-4873-43db-a8a5-0862f68273f1)
分页
login.php：登录页，实现登录功能
主要技术：全局变量session的设置与使用
register.php：注册页，用户名 登录密码 确认密码 联系电话 邮箱地址 验证码
shoppingCarShow.php：购物车页
主要技术：蔬菜信息存入session里的数组‘gwc’、从‘gwc’提取出蔬菜信息
![image](https://github.com/RewindTea/PHP_vegtable/assets/142219991/009088ee-9a66-461a-a512-32ebef67b16b)
order.php：订单页，将购物车里的蔬菜信息插入到数据库
数据库结构：
user：用户信息
vegetable：存储蔬菜信息
vegIndent：存储订单信息
四、结束语
该网站实现了首页展示效果、分页展示效果、搜索功能、登录和注册、购物车功能；前台功能已经大致完成，但后台功能有待进一步完善。

