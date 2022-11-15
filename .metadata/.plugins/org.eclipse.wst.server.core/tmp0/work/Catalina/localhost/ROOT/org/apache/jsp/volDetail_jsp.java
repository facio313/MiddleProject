/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.83
 * Generated at: 2022-11-15 10:59:43 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import common.VolStatus;
import common.VolCategory;
import java.util.List;
import volunteer.vo.VolunteerVO;
import volunteer.vo.ReviewVO;

public final class volDetail_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("common.VolStatus");
    _jspx_imports_classes.add("common.VolCategory");
    _jspx_imports_classes.add("volunteer.vo.VolunteerVO");
    _jspx_imports_classes.add("volunteer.vo.ReviewVO");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");


	VolunteerVO vv = (VolunteerVO)request.getAttribute("vv");
	List<ReviewVO> reviewList = (List<ReviewVO>)request.getAttribute("reviewList");

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("<title>온(ON:溫)</title>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css\">\r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js\"></script>\r\n");
      out.write("<script	src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\r\n");
      out.write("  <style>\r\n");
      out.write("body {\r\n");
      out.write("	position: relative;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("ul.nav-pills {\r\n");
      out.write("	top: 20px;\r\n");
      out.write("	position: fixed;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("div.col-sm-9 div {\r\n");
      out.write("	height: 400px;\r\n");
      out.write("	font-size: 20px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#section1 {\r\n");
      out.write("	color: #fff;\r\n");
      out.write("	background-color: #1E88E5;\r\n");
      out.write("	border: 5px dotted pink;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#section2 {\r\n");
      out.write("	color: #fff;\r\n");
      out.write("	background-color: #673ab7;\r\n");
      out.write("	border: 5px dotted pink;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#section3 {\r\n");
      out.write("	color: #444;\r\n");
      out.write("	background-color: #ff9800;\r\n");
      out.write("	border: 5px dotted pink;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("@media screen and (max-width: 810px) {\r\n");
      out.write("	#section1, #section2, #section3, #section41, #section42 {\r\n");
      out.write("		margin-left: 150px;\r\n");
      out.write("	}\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#detailLeft {\r\n");
      out.write("	position: relative;\r\n");
      out.write("	z-index:1;\r\n");
      out.write("	float: left;\r\n");
      out.write("	width:35%\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#detailRight {\r\n");
      out.write("	position: relative;\r\n");
      out.write("	z-index:1;\r\n");
      out.write("	float: left;\r\n");
      out.write("	width:65%\r\n");
      out.write("	\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("img {\r\n");
      out.write("	display:block;\r\n");
      out.write("	position: absolute;\r\n");
      out.write("	top: 0;\r\n");
      out.write("	left: 0;\r\n");
      out.write("	width: 100%;\r\n");
      out.write("	height: 100%;\r\n");
      out.write("	z-index: 99;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body data-spy=\"scroll\" data-target=\"#myScrollspy\" data-offset=\"20\">\r\n");
      out.write("\r\n");
      out.write("<div class=\"col-sm-12 text-center\">\r\n");
      out.write("	<h1>봉사 프로그램 상세</h1>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("  <div class=\"row\">\r\n");
      out.write("    <nav class=\"col-sm-3\" id=\"myScrollspy\">\r\n");
      out.write("      <ul class=\"nav nav-pills nav-stacked\">\r\n");
      out.write("        <li class=\"active\"><a href=\"#section1\">프로그램 상세</a></li>\r\n");
      out.write("        <li><a href=\"#section2\">글 및 첨부파일</a></li>\r\n");
      out.write("        <li><a href=\"#section3\">후기</a></li>\r\n");
      out.write("      </ul>\r\n");
      out.write("    </nav>\r\n");
      out.write("    <div class=\"col-sm-9\" style='border: 2px solid black; padding: 10px; height:auto;'>\r\n");
      out.write("      <div id=\"section1\">\r\n");
      out.write("	    <div id=\"detailLeft\">\r\n");
      out.write("	      <img src=\"http://localhost:9999/");
      out.print((vv.getThumbnail()));
      out.write("\" />\r\n");
      out.write("	    </div>\r\n");
      out.write("	  	<div id=\"detailRight\">\r\n");
      out.write("	        [");
      out.print((vv.getVolCtId().getKorName()));
      out.write("]\r\n");
      out.write("	        <h1>");
      out.print((vv.getVolTitle()));
      out.write("</h1>\r\n");
      out.write("	        \r\n");
      out.write("			[모집 기간]   ");
      out.print((vv.getStartDate()));
      out.write(' ');
      out.write('~');
      out.write(' ');
      out.print((vv.getEndDate()));
      out.write(" <br>\r\n");
      out.write("			[모집 시간]   ");
      out.print((vv.getStartTime()));
      out.write(' ');
      out.write('~');
      out.write(' ');
      out.print((vv.getEndTime()));
      out.write(" <br>\r\n");
      out.write("			[신청 인원]   ");
      out.print((vv.getTotal()));
      out.write(' ');
      out.write('/');
      out.write(' ');
      out.print((vv.getPersonnel()));
      out.write(" <br> \r\n");
      out.write("			[봉사 장소]   ");
      out.print((vv.getLocation()));
      out.write(" <br>\r\n");
      out.write("			[모집 상태]   ");
      out.print((vv.getStatus().getKorName()));
      out.write(" <br>\r\n");
      out.write("			[봉사 대상]   ");
      out.print((vv.getTarget()));
      out.write(" <br>\r\n");
      out.write("			[자격 요건]   ");
      out.print((vv.getQualification()));
      out.write('\r');
      out.write('\n');

// 일반 : 예약 / 기관 : 삭제, 수정 / 관리자 : 삭제 수정
// 기관일 시, 작성자와 같냐

// if () {
	
// } else if () {
	
// } else {
	
// }

      out.write("\r\n");
      out.write("			<a href=\"volReservation.do?volId=");
      out.print( (vv.getVolId()) );
      out.write("\"><button>예약</button></a>\r\n");
      out.write("			<a href=\"volDelete.do?volId=");
      out.print( (vv.getVolId()) );
      out.write("\"><button>삭제</button></a>\r\n");
      out.write("      	</div> \r\n");
      out.write("      </div>\r\n");
      out.write("      \r\n");
      out.write("      <hr>\r\n");
      out.write("      \r\n");
      out.write("      <div id=\"section2\" style=\"border: 2px groove yellow; padding: 10px; height:auto;\"> \r\n");
      out.write("        <h1>상세내용</h1>\r\n");
      out.write("		");
      out.print((vv.getDetail()));
      out.write("\r\n");
      out.write("        \r\n");
      out.write("      </div>\r\n");
      out.write("      \r\n");
      out.write("      <hr>\r\n");
      out.write("      <div id=\"section3\">         \r\n");
      out.write("        <h1>후기</h1>\r\n");
      out.write("	        <button style=\"color: black;\" onclick=\"\">후기 작성하기</button>\r\n");
      out.write("        <form action=\"volReviewRegister.do\" method=\"post\">\r\n");
      out.write("			<input class=\"form-control\" type=\"text\" name=\"review\">\r\n");
      out.write("			<input type=\"submit\" value=\"등록\">\r\n");
      out.write("		</form>\r\n");

	int size = reviewList.size();
	String contentment = "☆☆☆☆☆";
	if (size > 0) {
		for (int i = 0; i < size; i++) {

      out.write("\r\n");
      out.write("        <div>\r\n");

			for (int k = 0; k < reviewList.get(i).getStar(); k++) {
				contentment = contentment.replaceFirst("☆", "★");
			}

      out.write("\r\n");
      out.write("	        <h2>");
      out.print( (contentment) );
      out.write("</h2>\r\n");
      out.write("	        ");
      out.print( (reviewList.get(i).getCorrectionDate()) );
      out.write(" <br>\r\n");
      out.write("	        ");
      out.print( (reviewList.get(i).getContent()) );
      out.write("\r\n");
      out.write("        </div>\r\n");

		}
	} else {

      out.write("\r\n");
      out.write("		조회된 데이터가 없습니다.\r\n");

	}

      out.write("\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
