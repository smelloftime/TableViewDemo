# TableViewDemo 
用于讨论tableview相关问题的demo</br>
讨论问题:</br>
tableview中一次性只能显示n个cell</br>
理论上应该只初始化 n+1 个cell，然后table会复用这n+1个cell</br>
但实际上，table初始化了更多的cell</br>
⚠️:xib创建的tableviewController 表现是和预期一致</br>
</br>
需求:</br>
记录被用户滚动cell到屏幕内的数据id</br>
但是现在情况：</br>
1、cell初始化之后就调用了willdisplay，导致该方法内获取到的内容并非用户实际滚动到屏幕内的内容
