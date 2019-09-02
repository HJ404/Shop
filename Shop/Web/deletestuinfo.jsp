<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>

<body>
    <!--表格由table标签创建，tr表示行，td表示列 -->
    <table border="10px" cellspacing="10" cellpadding="20">
      <!--cellpadding表示的是内部距离，cellspacng是格子间距-->
      <tr>
        <th>订单编号</th>
        <th>图书名称</th>
        <th>图书简介</th>
        <th>数量</th>
        <th>价格</th>
        <th>操作</th>
      </tr>
      <tr>
        <td>1</td>
        <td>时空穿行</td>
        <td>《时空穿行(中国乡村人类学世纪回访)》对20世纪80年代以来中国云南大理西镇、广东潮州凤凰村、华南茶山等八个代表性乡村田野进行调查，探讨了中国乡村文化的多样性、宗族制度、农民社会等课题。</td>
        <td>1</td>
        <td>24.5</td>
        <th><a href="modifystuinfo.jsp">删除订单</a></th>
      </tr>
      <tr>
        <td>2</td>
        <td>感悟</td>
        <td>当你以宁静的心灵去细细品味的时候，它也许能震动你的心弦，引起你心中美丽的共鸣，也许还能开启你灵魂深处最关键的东西，那是你曾经为之...</td>
        <td>2</td>
        <td>66</td>
        <th><a href="modifystuinfo.jsp">删除订单</a></th>
      </tr>
      <tr>
        <td>3</td>
        <td>赢在影响力</td>
        <td>人生就像一个电瓶，需要常常自我充电，否则电力不停地消耗，就会越来越黯淡无光。如果你经常在使用自己的电瓶，记得要常常补充电力</td>
        <td>1</td>
        <td>26</td>
        <th><a href="modifystuinfo.jsp">删除订单</a></th>
      </tr>
      <tr>
        <td>4</td>
        <td>我的奶酪</td>
        <td>生动的阐述了“变是唯一的不变”这一生活真谛，据说已经成为全世界最畅销的书。或许每一个人看完的感受都不一样，但千万不要说这个道理我懂，如果那样就说明你依然惧怕改变自己</td>
        <td>3</td>
        <td>99</td>
        <th><a href="modifystuinfo.jsp">删除订单</a></th>
      </tr>
      <tr>
       <td>5</td>
        <td>秘密花园</td>
        <td>它被一代代孩子们不断重复阅读，是很多人童年时代记忆最深刻的一本书，并在中国有多个图书版本。 故事主要讲述了一个在霍乱一个失去父母的印度小女孩，搬到英国后，重新获得幸福的故事</td>
        <td>2</td>
        <td>40</td>
        <th><a href="modifystuinfo.jsp">删除订单</a></th>
      </tr>
    </table>
  </body>
</html>