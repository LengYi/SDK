# SDK Framework  制作
1.创建工程
iOS->Framework & Library->Cocoa Touch Static Library

2.删除默认生成的 .m文件,.h留着暴露包含其它要公开的头文件

3.设置公开头文件

```
TARGETS->Build Phases->Editor->Add Build Phase->Add Headers Build Phase
```

修改默认生成的 .h头文件 至Public组

4.配置Build设置

```
Packaging->Public Headers Folder Path     值  include/$(PROJECT_NAME)

Dead Code Stripping   NO
Strip Debug Symbols During Copy    NO
Strip Style Non-Global Symbols
```

###Framework 文件结构
￼![](Pasted Graphic.png)
###编译Framework 

1.新建  Framework TARGETS 
File->New->Target…->Cross-platform->Aggregate    
选中 Framework 添加脚本  TARGETS->Build Phases->Editor->Add Build Phase->Add Run Script Build Phase
a.输入脚本  
b.Target Dependencles 依赖要被编译的当前库或者Bundle资源库

###开发动态联编
1.将RWUIControls.xcodeproj 拖到主工程UIControlDevApp主目录下

2.如果含有Bundle资源，也需要加入到主工程UIControlDevApp中