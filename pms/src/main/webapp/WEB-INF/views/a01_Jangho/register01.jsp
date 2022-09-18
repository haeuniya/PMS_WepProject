<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Dashio - Bootstrap Admin Template</title>

  <!-- Favicons -->
  <link href="${path}/Dashio/img/favicon.png" rel="icon">
  <link href="${path}/Dashio/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="${path}/Dashio/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="${path}/Dashio/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="${path}/Dashio/css/style.css" rel="stylesheet">
  <link href="${path}/Dashio/css/style-responsive.css" rel="stylesheet">

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="${path}/loginPage.do" class="logo"><b>AEAP<span>PMS</span></b></a>
      <!--logo end-->
    </header>
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
      <section class="wrapper site-min-height">
      <br>
      <h3>　<i class="fa fa-angle-right"></i> 회원 가입 <i class="fa fa-angle-right"></i> 약관 동의</h3>
        <div class="row">
          <div class="col-lg-12">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
              <div class="custom-box">
                <div class="servicetitle">
                  <h4>홈페이지 이용약관</h4>
                  <hr>
                </div>
                <div class="icn-main-container">
                  <span class="icn-container">1</span>
                </div>
                <textarea rows="10" cols="10" class="form-control" id="clause01" name="" readonly>본 약관은 감탄사 홈페이지 서비스 이용과 관련하여 필요한 사항을 규정합니다. 제1장 총칙 제 1 조 목적 1. 감탄사를 운영하는 주식회사 에스씨케이컴퍼니(이하 '회사'라고 합니다)에서 운영하는 홈페이지 (https://www.gamtansa.co.kr/, 이하 “홈페이지”라고 합니다)는 아래와 같은 약관에 동의하는 이용자들에게 제공되는 인터넷서비스로, 본 약관은 이용자와 회사 사이에 본 홈페이지 이용에 관한 권리 및 의무를 규정하는 것을 목적으로 합니다. 2. 홈페이지의 모든 자료는 gamtansa Corporation 및 자회사, 계열사 혹은 gamtansa Corporation에 의해 자격을 취득한 기타 이해 관계자에 의한 저작권, 등록의장, 등록상표 또는 기타 지적소유권으로 보호되고 있습니다. 3. 본 홈페이지에 포함된 자료는 이용자에게 정보 제공을 위한 목적으로만 제공됩니다. 이용자는 본 홈페이지의 내용에 대하여 어떤 방법으로도 배포, 출판, 전송, 변경, 전시, 모방작품의 창조 혹은 개발할 수 없습니다. 이용자는 회사의 권한을 보호하여야 하고, 본 홈페이지의 자료를 허가 없이 유용할 수 없습니다. 허가 없이 본 홈페이지의 내용을 유용하는 경우에 회사와 Starbucks Corporation은 이용자에게 법적, 재정적으로 가능한 기타 추가적인 배상을 청구할 수 있습니다. 4. 이용자가 제출하는 자료의 내용에 대한 책임은 전적으로 이용자에게 있습니다. 이용자가 제출하는 자료에 불법, 중상모략, 비난 혹은 비도덕적인 내용이 포함되어서는 안됩니다. 이용자는 본 홈페이지에 저작권, 등록상표권, 사생활권 혹은 기타 사적 권리 혹은 소유권을 포함하는 제3자의 권리를 침해하는 어떤 자료도 게시하여서는 안됩니다. 5. 이용자의 개인정보 보호 및 보안, 개인정보에 대한 수집, 이용 및 저장과 관련한 관행 및 정책에 대하여는 회사의 개인정보취급방침에 의합니다. 개인정보취급방침은 홈페이지에 별도 게시하고 있습니다. 제 2 조 용어의 정의 본 약관에서 사용하는 용어는 다음과 같이 정의합니다. 1. “이용자”란 홈페이지에 접속하여 홈페이지를 이용하는 회원 및 비회원을 말합니다. 2. '회원”이란 홈페이지에 접속하여 본 약관에 따라 회사 인터넷 회원으로 가입하여 홈페이지가 제공하는 서비스를 받는 자를 말하고, “비회원”이란 회원이 아닌 자를 말합니다. 3. 회원이 소지한 gamtansa Card를 등록하면 “감탄사 리워드 회원”이 됩니다. 본 약관에서 별도로 정한 사항이 없다면, “스타벅스 리워드 회원”의 권한 및 이용과 관련한 규정은 “스타벅스 카드 이용약관”에 따릅니다. 4.”e-프리퀀시 바코드”란 회원 가입 시 회원의 계정에 자동으로 발급되는 온라인 적립 수단이며, e-프리퀀시 이벤트 진행 시, 등록된 e-프리퀀시 바코드에 e-스티커를 적립하여 관련 혜택을 받을 수 있습니다. 5. “스타벅스 모바일 애플리케이션”이란 회사가 모바일 및 휴대용 기기 등을 통하여 제공하는 앱을 말합니다. 6. '사이렌 오더 서비스'란 회사가 스타벅스 모바일 애플리케이션을 통해 회원이 주문할 매장을 선택하여 주문 가능 메뉴를 확인하고 다양한 결제수단으로 주문 및 예약할 수 있는 전자상거래 서비스를 말합니다. 7. “사이렌오더”란 회원이 사이렌 오더 서비스를 통하여 회사의 다양한 메뉴를 매장별 실시간 주문 가능 수량을 확인하여 선결제한 후, 나의 위치정보(GPS, 고주파 등 이용)를 기반으로 2km 내 매장에 주문을 전송을 하는 것을 말합니다. 8. “홀케이크 선물/예약”이란 회원이 사이렌 오더를 통해 홀케이크를 선결제 하고, 지정한 매장에서 지정한 날짜에 “홀케이크 모바일 교환권”으로 수령하는 주문 유형을 말합니다. “선물”이란 회원이 “예약”한 “홀케이크 모바일 교환권”을 휴대폰 MMS 전송 방법을 통해 선물할 수 있는 서비스를 말합니다. 9. “홀케이크 모바일 교환권”이라 함은 “홀케이크”가 화체된 모바일용 쿠폰으로서, “홀케이크 모바일 교환권” 내에 명시된 교환 조건에 따라 해당 상품으로 교환할 수 있으며, 현금 및 다른 상품으로 대체 수령은 불가합니다. “홀케이크 모바일 교환권”의 수신자라 함은 “홀케이크 모바일 교환권”을 회원으로부터 전송 받은 자를 말합니다. 10. “e-Gift Item 서비스”란 회원이 스타벅스 모바일 애플리케이션 및 기타 유무선 인터넷 플랫폼을 통해 e-Gift Item을 구매하고, 구매한 e-Gift Item을 모바일 단말기를 통해 타인 또는 본인에게 전송할 수 있도록 하며, e-Gift Item의 소지자에게 명시된 조건에 따라 회사의 상품으로의 교환을 허용하기 위해 회사가 제공하는 서비스를 말합니다. 11. “e-Gift Item”이란 회원이 휴대전화 등을 이용하여, 회사가 판매하는 일정 상품의 종류, 금액, 수량의 교환 권리를 전자적 증서 형태로 구매한 후 본인 또는 타인에게 전송하고, 본 증서의 소지자가 회사에게 제시하는 경우 그 증표에 명시된 조건에 따라 상품을 제공 받을 수 있는 교환권을 말합니다. 12. “구매자”란 스타벅스 모바일 애플리케이션 및 기타 유무선 인터넷 플랫폼을 이용하여 “e-Gift Item”을 결제 및 구매한 자를 말하며, “소지자”란 구매된 “e-Gift Item”을 소지하고 있거나 또는 스타벅스 모바일 애플리케이션 및 기타 유무선 인터넷 플랫폼에 등록하여 소지하고 있는 자를 말합니다. 13. “사용처”란 회사가 운영하는 매장 중 “e-Gift Item”을 사용할 수 있는 매장을 말합니다. 14. “Delivers 서비스”란 회원이 스타벅스 모바일 애플리케이션을 통해 회원이 지정한 주소로 주문 가능한 상품 등을 배달 받는 서비스를 말합니다. 15. “에코매장”이란 일회용컵 사용 절감을 목적으로 이용자가 음료 외부 반출을 희망하는 경우 보증금을 지불 시 기존 매장에서 제공되던 일회용컵 대신 리유저블컵으로 음료를 제공하며, 리유저블컵을 반납 시 보증금을 환급해주는 매장을 말합니다. 16. “e-Gift Card'란 회원이 휴대전화 등을 이용하여, 회사가 판매하는 일정 금액의 교환 권리를 전자적 증서 형태로 구매한 후 본인 또는 타인에게 전송하고, 본 증서의 소지자가 회사에게 제시하는 경우 그 증표에 명시된 조건에 따라 상품을 제공받을 수 있는 교환권을 말합니다. 'e-Gift Card'를 스타벅스 모바일 애플리케이션에 등록하는 경우 Starbucks Card로 사용할 수 있으며, 본 약관에서 별도로 정한 사항이 없다면 이용에 관한 규정은 '스타벅스 카드 이용약관'에 따릅니다. 17. “Gift 배송하기 서비스”란 스타벅스 모바일 애플리케이션을 통해 제공하는 전자상거래 서비스를 말하며, “배송상품”이란 스타벅스 모바일 애플리케이션을 통해 이용자의 구매에 따라 배송되는 상품 등을 말합니다. 18. “Gift 배송하기 서비스”의 “구매자”란 스타벅스 모바일 애플리케이션에서 판매하는 “배송상품” 등을 구매한 회원을 말하며, “수신자”란 “배송상품”을 구매한 회원으로부터 “배송상품”을 선물 받은 회원 또는 비회원을 말합니다.
                </textarea><br><br>
                <ul class="pricing">
                  <li>동의하시겠습니까? (필수)　<input type="checkbox" name="clause01_ok" value="1"/></li>
                </ul>
              </div>
              <!-- end custombox -->
            </div>
            <!-- end col-4 -->
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
              <div class="custom-box">
                <div class="servicetitle">
                  <h4>개인정보 수집 및 이용약관</h4>
                  <hr>
                </div>
                <div class="icn-main-container">
                  <span class="icn-container">2</span>
                </div>
                <textarea rows="10" cols="10" class="form-control" id="clause02" name="" readonly>본인은 감탄사를 운영하는 주식회사 에스씨케이컴퍼니(이하 '회사'라 합니다)가 제공하는 회원 서비스(이하 ‘서비스’라 합니다)를 이용하기 위해, 다음과 같이 ‘회사’가 본인의 개인정보를 수집/이용하는 것에 동의합니다. ※ 귀하께서는 개인정보 수집·이용에 대한 동의를 거부하실 수 있으나, 동의를 거부하실 경우 회원가입, 서비스 이용 등을 하실 수 없습니다. 1. 개인정보 항목·목적·보유기간 구분 필수 항목 성명, 생년월일, 성별, 아이디, 비밀번호, 휴대전화번호, E-Mail, DI (Duplication information) 목적 - 회원가입(홈페이지. 감탄사 리워드), 본인확인 - 서비스 제공 * 상품(제품), 서비스 결제, 환불, 배송 등 * 개인 맞춤형 서비스 제공 (감탄사 리워드 별 적립 등) - 회원관리, 부정이용 방지 - 서비스 관련 이벤트 및 행사정보 안내 (별도 마케팅정보 수신 동의 회원에 한함) 보유 및 이용기간 회원 탈퇴 후 30일간 보관 (반복 재가입 등의 방법을이용한 서비스 부정이용 방지) 또는 관계법령에 의한 별도 보존기간 (2. 관계법령에 의한 개인정보 보존기간참고) 2. 관계법령에 의한 개인정보 보존기간 - 서비스이용기록, 접속로그, 접속IP정보 (통신비밀보호법 : 3개월) - 표시/광고에 관한 기록 (전자상거래법 : 6개월) - 계약 또는 청약철회 등에 관한 기록 (전자상거래법 : 5년) - 대금결제 및 재화 등의 공급에 관한 기록 (전자상거래법 : 5년) - 소비자의 불만 또는 분쟁처리에 관한 기록 (전자상거래법 : 3년)
				</textarea><br><br>
                <ul class="pricing">
                  <li>동의하시겠습니까? (필수)　<input type="checkbox" name="clause02_ok" value="2"/></li>
                </ul>
              </div>
              <!-- end custombox -->
            </div>
            <!-- end col-4 -->
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
              <div class="custom-box">
                <div class="servicetitle">
                  <h4>E-mail 및 SMS 광고성 정보 수신동의</h4>
                  <hr>
                </div>
                <div class="icn-main-container">
                  <span class="icn-container">3</span>
                </div>
                <textarea rows="10" cols="10" class="form-control" id="clause03" name="" readonly>본인은 감탄사를 운영하는 주식회사 에스씨케이컴퍼니(이하 '회사'라 합니다)가 제공하는 회원 서비스(이하 ‘서비스’라 합니다)를 이용하기 위해, 다음과 같이 ‘회사’가 본인의 개인정보를 수집/이용하는 것에 동의합니다. ※ 귀하께서는 개인정보 수집·이용에 대한 동의를 거부하실 수 있으나, 동의를 거부하실 경우 회원가입, 서비스 이용 등을 하실 수 없습니다. 1. 개인정보 항목·목적·보유기간 구분 필수 항목 성명, 생년월일, 성별, 아이디, 비밀번호, 휴대전화번호, E-Mail, DI (Duplication information) 목적 - 회원가입(홈페이지. 감탄사 리워드), 본인확인 - 서비스 제공 * 상품(제품), 서비스 결제, 환불, 배송 등 * 개인 맞춤형 서비스 제공 (감탄사 리워드 별 적립 등) - 회원관리, 부정이용 방지 - 서비스 관련 이벤트 및 행사정보 안내 (별도 마케팅정보 수신 동의 회원에 한함) 보유 및 이용기간 회원 탈퇴 후 30일간 보관 (반복 재가입 등의 방법을이용한 서비스 부정이용 방지) 또는 관계법령에 의한 별도 보존기간 (2. 관계법령에 의한 개인정보 보존기간참고) 2. 관계법령에 의한 개인정보 보존기간 - 서비스이용기록, 접속로그, 접속IP정보 (통신비밀보호법 : 3개월) - 표시/광고에 관한 기록 (전자상거래법 : 6개월) - 계약 또는 청약철회 등에 관한 기록 (전자상거래법 : 5년) - 대금결제 및 재화 등의 공급에 관한 기록 (전자상거래법 : 5년) - 소비자의 불만 또는 분쟁처리에 관한 기록 (전자상거래법 : 3년)
				</textarea><br><br>
                <ul class="pricing">
                  <li>동의하시겠습니까? (선택)　<input type="checkbox" name="clause03_ok" value="3"/></li>
                </ul>
              </div>
              <!-- end custombox -->
            </div>
            <!-- end col-4 -->
          </div>
          <!--  /col-lg-12 -->
          <center><button type="button" class="btn btn-default"
          	onclick="check()">동의 완료</button></center>
        </div>
        <!--  /row -->
      </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights <strong>Dashio</strong>. All Rights Reserved
        </p>
        <div class="credits">
          <!--
            You are NOT allowed to delete the credit link to TemplateMag with free version.
            You can delete the credit link only if you bought the pro version.
            Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
            Licensing information: https://templatemag.com/license/
          -->
          Created with Dashio template by <a href="https://templatemag.com/">TemplateMag</a>
        </div>
        <a href="pricing_table.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="${path}/Dashio/lib/jquery/jquery.min.js"></script>
  <script src="${path}/Dashio/lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="${path}/Dashio/lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="${path}/Dashio/lib/jquery.scrollTo.min.js"></script>
  <script src="${path}/Dashio/lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="${path}/Dashio/lib/common-scripts.js"></script>
  <!--script for this page-->

<script type="text/javascript">
	function check() {
		if ($("input:checkbox[name='clause01_ok']:checked").length == 0) {
			alert("홈페이지 이용약관에 동의해주세요.");
			return;
		}
		if ($("input:checkbox[name='clause02_ok']:checked").length == 0) {
			alert("개인정보 수집 및 이용약관에 동의해주세요.");
			return;
		}
		location.href="${path}/register02.do"
	}
</script>

</body>

</html>