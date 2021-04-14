<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/header/header.jsp" %>

<script type="text/javascript">
$(document).ready(function () {
	
	// 포커스
	$("#userid").focus();
	// input 태그 초점 없을때
	$("input").blur(function () {
		console.log("blur!!!")
		
		var reg;
		var msg;
		var tag;
		
		// 정규식 검증
		if($(this).is($("#userid"))){
			reg = /^[A-Za-z0-9]{6,}$/
			msg = "영어 대소문자 숫자로 6글자 이상"
			tag = "#userid"
			
		} else if($(this).is($("#userpw"))){
			reg = /^[A-Za-z0-9]{8,}$/
			msg = "영어 대소문자 숫자로 8글자 이상"
			tag = "#userpw"
		} else if($(this).is($("#username"))) {
			reg = /^[가-힣]{2,}$/
			msg = "한글2글자 이상"
			tag = "#username"
		} else if($(this).is($("#phoneno"))) {
			reg = /^[0-9]+$/
			msg = "숫자만 입력하세요!"
			tag = "#phoneno"
		} 
		
		
		// 비밀번호 확인
		if($(this).is($("#userpwcheck")) && $("#userpw").val() != $("#userpwcheck").val()){
			$(this).next().html("비밀번호가 맞지 않습니다.")
		} else {
			$(this).next().html("")
		}
		
	
		if(!reg.test($(tag).val())){
			$(this).next().html(msg)
		} else {
			$(this).next().html("")
		}
		
		
		
		
		
		
	})
})
</script>


<style>
.totallogin {
margin-top: 250px;
margin-bottom: 250px;
margin-left: 355px;
}
h1,hr{
	margin-right: 355px;
}
.font-red{
	color: red;
	font-size: 5px;
}




</style>
<div class="totallogin">
<h1>회원가입</h1>
<hr>

<form class="form-horizontal" action="/member/join" method="post">
  <div class="form-group">
    <label for="userid" class="col-sm-2 control-label">아이디</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" id="userid" name="userid" placeholder="ID">
    	<span class="font-red"></span>

    </div>
  </div>
  <div class="form-group">
    <label for="userpwcheck" class="col-sm-2 control-label">비밀번호</label>
    <div class="col-sm-3 form-inline">
      <input type="password" class="form-control" id="userpw" name="userpw" placeholder="Password">
    	<span class="font-red"></span>
    </div>
     <label for="userpwcheck" class="col-sm-2 control-label">비밀번호 확인</label>
    <div class="col-sm-3 form-inline">
      <input type="password" class="form-control" id="userpwcheck" name="userpwcheck" placeholder="Password">
    	<span class="font-red"></span>
    </div>
  </div>
 
 
  <div class="form-group">
    <label for="email1" class="col-sm-2 control-label">이메일</label>
    <div class="col-sm-2 form-inline">
      <input type="text" class="form-control" id="email1" name="email1" placeholder="email">
    </div>
    <label for="email2" class="col-sm-2 control-label">@</label>
    <div class="col-sm-3 form-inline">
      <input type="text" class="form-control" id="email2" name="email2" placeholder="도메인/선택">
	</div>
  </div>
    <div class="form-group">
    <label for="username" class="col-sm-2 control-label">이름</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" id="username" name="username" placeholder="name">
   		<span class="font-red"></span>
    </div>
    
  </div>
  <div class="form-group">
    <label for="nick" class="col-sm-2 control-label">닉네임</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" id="nick" name="nick" placeholder="nick">
    </div>
   </div>
   <div class="form-group">
    <label for="phoneno" class="col-sm-2 control-label">전화번호</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" id="phoneno" name="phoneno" placeholder="phoneno">
   		<span class="font-red"></span>
    </div>
  </div>
  <div class="form-group">
    <label for="phoneno" class="col-sm-2 control-label">생년월일</label>
    <div class="col-sm-5 form-inline">
     <select class="form-control" id="year" name="year">
		  <option>2010</option>
		  <option>2009</option>
		  <option>2008</option>
		  <option>2007</option>
		  <option>2006</option>
		  <option>2005</option>
		  <option>2004</option>
		  <option>2003</option>
		  <option>2002</option>
		  <option>2001</option>
		  <option>2000</option>
		  <option>1999</option>
		  <option>1997</option>
		  <option>1996</option>
		  <option>1995</option>
		  <option>1994</option>
		  <option>1993</option>
		  <option>1992</option>
		  <option>1991</option>
		  <option>1990</option>
		  <option>1989</option>
		  <option>1988</option>
		  <option>1987</option>
		  <option>1986</option>
		  <option>1985</option>
		  <option>1984</option>
		  <option>1983</option>
		  <option>1982</option>
		  <option>1981</option>
		  <option>1980</option>
	 </select>
	 <select class="form-control" id="month" name="month">
		  <option>01</option>
		  <option>02</option>
		  <option>03</option>
		  <option>04</option>
		  <option>05</option>
		  <option>06</option>
		  <option>07</option>
		  <option>08</option>
		  <option>09</option>
		  <option>10</option>
		  <option>11</option>
		  <option>12</option>
	 </select>
	 <select class="form-control" id="day" name="day">
		  <option>01</option>
		  <option>02</option>
		  <option>03</option>
		  <option>04</option>
		  <option>05</option>
		  <option>06</option>
		  <option>07</option>
		  <option>08</option>
		  <option>09</option>
		  <option>10</option>
		  <option>11</option>
		  <option>12</option>
		  <option>13</option>
		  <option>14</option>
		  <option>15</option>
		  <option>16</option>
		  <option>17</option>
		  <option>18</option>
		  <option>19</option>
		  <option>20</option>
		  <option>21</option>
		  <option>22</option>
		  <option>23</option>
		  <option>24</option>
		  <option>25</option>
		  <option>26</option>
		  <option>27</option>
		  <option>28</option>
		  <option>29</option>
		  <option>30</option>
		  <option>31</option>
	 </select>
    </div>
  </div>
  
  <div class="form-group">
    <label for="phoneno" class="col-sm-2 control-label">성별</label>
    <div class="col-sm-5 form-inline">
     <select class="form-control" id="gender" name="gender">
		  <option>남</option>
		  <option>여</option>
	 </select>
 </div>
</div>
 
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-3 radio-inline">
      <button type="submit" class="btn btn-default">Sign in</button>
    </div>
  </div>
</form>
</div>





<%@include file="/WEB-INF/views/footer/footer.jsp" %>