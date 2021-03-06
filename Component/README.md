# Component

## 组合模式

### 将对象组合成树形结构以表示部分与整体的层次结构关系,组合模式使得用户对于单个对象和组合对象的使用具有一致性

何时使用组合模式?

* 获得对象抽象的树形表示
* 客户端统一处理组合结构的所有对象

Cocoa Touch框架中的组合模式?

* Cocoa Touch框架中UIView被组织成组合结构
* 每一个UIView可以添加零个或者多个子视图(一个父节点有多个孩子节点)
* 每一个UIView对象都有且只有一个父视图(一个孩子节点只能有一个父节点)
* 这样视图层次就形成了统一的树形结构!客户端可以将UIView和UIView的组合统一对待

视图组合结构如何参与绘图事件的处理?

* 请求渲染根视图时会遍历整个树的所有视图由于都是UIView对象可以统一处理,渲染
* 视图的响应是沿着树的一条路径从根视图传递给子视图(响应者链是责任链模式的应用)

组合模式的目的?

* 让每一个节点都有相同的抽象接口,这样整个结构可作为一个统一的抽象结构使用而又不暴露内部表示
* 对于每一个节点的任何操作可以通过协议或者抽象基类定义
* 若要新增组合结构的操作,可使用访问者模式,让访问者对每一个节点进行进一步的处理,而不必改变现有的组合结构
* 若要访问组合结构,使用迭代器模式!

