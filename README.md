# UIScrollViewImage
##版本1.0
### UIScrollView的封装:ScrollImageView继承UIView
>>  实现了scrollview自定义,点击事件的响应.可自定制scrollView的位置,pageControl的位置在底层修改.
>>  将数据源用数组接收.要遵循代理,实现代理方法就可实现点击事件.

##版本2.0
###增加了协议ScrollViewProtocol.h,提供了一个方法接口.
>>  ScrollImageView的数据换成了特定的数据源;
>>  增加了两个测试model,要遵循协议,并实现协议的方法,返回图片地址字符串;
>>  传入的数据源,不关心来自于那个model里面.
>>  需要设置![图片加载网络设置.png](/图片加载网络设置.png)

##版本3.0
###增加了一个CustomImageView,提供了两个接口,用于其他子类继承此父类,用于自定义scrollView界面
>>  滚动视图界面的定制,都在继承于它的子类中进行.
