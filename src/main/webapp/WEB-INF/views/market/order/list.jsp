<%@page import="com.kurly.marketkurly.domain.OrderSummary"%>
<%@page import="com.kurly.marketkurly.domain.Product"%>
<%@page import="com.kurly.marketkurly.domain.Member"%>
<%@page import="com.kurly.marketkurly.util.Pager"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!-- Header Section Begin -->
<%@ include file="../inc/header.jsp"%>
<%
	List<OrderSummary> orderSummaryList = (List)request.getAttribute("orderSummaryList");
	Pager pager = (Pager)request.getAttribute("pager");
%>
  <style>
    .pageStyle {
        font-weight:bold;
        font-size:15px;
    }
  </style>
<!-- Header End -->
    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <a href="#"><i class="fa fa-home"></i> Home</a>
                        <span>Contact</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->

    <!-- Contact Section Begin -->
    <section class="contact-section spad">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                      <h3>Categories</h3>
                      <div class="blog-catagory">
                            <ul>
                                <li><a href="/orderList">주문 내역</a></li>
                                <li><a href="/orderForm">선물 내역(임시적 주문하기)</a></li>
                                <li><a href="#">개인 정보 수정</a></li>
                            </ul>
                        </div>
                </div>
                <div class="col-md-9">
      				<div class="contact-title">
                        <h4>주문 내역</h4>
                    </div>
                    <div class="contact-widget">
                    	<%int curPos=pager.getCurPos(); %>
				        <%int num=pager.getNum(); %>
				        <%if(pager.getPageSize()==0){%><div align="center">주문 내역이 없습니다.</div><%}%>
				        <%for(int i =0; i<=pager.getPageSize();i++) {%>
				        <%if(num<1)break; %>
				        <%OrderSummary orderSummary=orderSummaryList.get(curPos++); %>
				        <input type="hidden" value="<%=num--%>">
				        <%if((orderSummary.getMember().getUser_id()).equals(member.getUser_id())){%>
                        <div class="cw-item">
	                   		<div class="name">
								<strong><a href="/orderDetail?order_summary_id=<%=orderSummary.getOrder_summary_id()%>">
									<%=orderSummary.getOrderDetailList().get(0).getProduct().getTitle() %>
									<%if(orderSummary.getOrderDetailList().size() -1 != 0){ %>
									 외 <%=orderSummary.getOrderDetailList().size() -1 %>건
									 <%} %>
								</a></strong>
							</div>
							<hr>
                            <div class="ci-icon col-sm-3">
                               <img src="/resources/productImg/<%=orderSummary.getOrderDetailList().get(0).getProduct().getProduct_img()%>" alt=" " width="140" height="80">
                            </div>
                            <div class="ci-text col-sm-6">
                            	<dl>
                            		<dt>주문번호</dt>
                            		<dd><%=orderSummary.getOrder_number() %></dd>
                            		<dt>결재금액</dt>
                            		<dd><%=orderSummary.getPrice() %> 원</dd>
                            	</dl>
                            	<dl>
                            	</dl>
                            </div>
                        </div>
                        <%} %>
                        <%} %>
                    </div>
                     <div class="col-sm-12" align="center">
		                    <%if(pager.getFirstPage()-1 > 0){ %> <%-- 이전페이지가 있다면..  --%>
		                        <a href="/orderList?currentPage=<%=pager.getFirstPage()-1%>">이전페이지</a>
		                    <%}else{}%>
		                    <%for(int i=pager.getFirstPage(); i <= pager.getLastPage(); i++){%>
		                        <%if(i>pager.getTotalPage()) break;%> <%--페이지 번호가 내가 가진 총 페이지를 넘어서면 반복문 중단--%>
		                        <a href="/orderList?currentPage=<%=i%>" <%if(i == pager.getCurrentPage()){%>class="pageStyle"<%}%>>[<%=i%>] </a>
		                    <%}%>
		
		                    <%if(pager.getLastPage()+1 < pager.getTotalPage()){%> 
		                        <a href="/orderList?currentPage=<%=pager.getLastPage()+1%>">다음페이지</a>
		                    <%}else{}%>
		        	</div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->

<!-- Footer Section Begin -->
<%@ include file="../inc/footer.jsp"%>
<!-- Footer Section End -->