<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
@font-face {
   font-family: 'GmarketSansMedium';
   src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
   font-weight: normal;
   font-style: normal;
}
body{
	 overflow: hidden;
}
h1{
   	font-family:'GmarketSansMedium', sans-serif ;
   	margin:auto;
   	text-align: center;
   	margin-top: 250px;
}
.container{
	display: flex;
	align-content: flex-start;
    margin: 2% 20%;
}

.row {
	margin:8% auto 0 auto;
	display: inline-block;
 	height: 200px; 
    padding:1%;
    border:1px solid #f1f1f1; 
    border-radius:10px;
    box-shadow : 0px 0px 20px #f1f1f1
}
.btn{
	font-family:'GmarketSansMedium', sans-serif ;
   	text-align: center;
    display: flex;
    justify-content: center;
    align-content: flex-end;
    flex-wrap: wrap;
	background-image: url(/images/default/ins.png);
  	background-repeat: no-repeat; 
  	background-position-x: center;
  	background-position-y: 23px;
    background-size: 50%;
	color: #fff;
    background-color: #f1f1f1;
    border: 1px solid transparent;
    padding: 20px 12px;
    border-radius: 4px;
    height: 200px;
    font-size: xx-large;
    width: 200px;
    font-weight: bolder
    }
.btn:hover {
	background-color:#444;
	color:#fff
}
  
</style>
</head>
<body>
	<h1>온(溫:ON)</h1>
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<input type="button" value="일반" class="btn" onclick="f_gen()">
			</div>
			</div>
		<div class="row">
			<div class="col-xs-12">
				<input type="button" value="기관" class="btn" onclick="f_ins()">
			</div>
		</div>
	</div>

	<script>
		function f_gen(){
					location.replace("/member/join_gen.jsp");
		}
			
		function f_ins(){
					location.replace("/member/join_ins.jsp");
		}
			
	</script>
</body>
</html>