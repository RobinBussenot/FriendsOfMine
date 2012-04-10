<%@ page import="fom.Membre" %>

<div id="status" role="complementary">
  Login : <input type="text" name="login" value="${fieldValue(bean:membreInstance,field:'login')}"/>
  email : <input type="text" name="email" value="${fieldValue(bean:membreInstance,field:'email')}"/>
  name : <input type="text"  name="name"  value="${fieldValue(bean:membreInstance,field:'nom')}"/>
  firstname :<input type="text"  name="prenom" value="${fieldValue(bean:membreInstance,field:'prenom')}"/>
  password : <input type="password"  name="password" value="${fieldValue(bean:membreInstance,field:'login')}"/>

</div>



