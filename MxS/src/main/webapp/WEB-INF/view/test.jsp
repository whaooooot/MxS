<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="./css/mypage.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="mycgv-info-wrap">
        <div class="sect-person-info">
           <div class="box-contents newtype">
              <div class="person-info">
                 <strong>�������</strong>
                 <em>0912pch</em>
                 <span>�г��� : <i>�г����� �������ּ���.</i> </span>
                 <button id="go_edit_page" type="button" title="��â����">����</button>
              </div>
           </div>
        </div>
        <hr/>
        <div class="cols-benefit-info">
           <div class="col-my-coupon">
              <h3>MY COUPON</h3>
              <ul>
                 
                 <li>
                    <strong>MxS ��������</strong>
                    <span><em>0</em> ��</span>
                 </li>
                 <li>
                    <strong>��ȭ������</strong>
                    <span><em>0</em> ��</span>
                 </li>
              </ul>
           </div>
           
                
                <div class="col-one-point">
                  <h3>CJ ONE POINT</h3>
              <ul>
                 <li>
                    <strong>CJ ONE ��밡�� ����Ʈ</strong>
                    <span><em class="txt-maroon">6,620</em> ��</span>
                 </li>
                
              </ul>
                
           </div>
         
                <div class="cols-point-wrap">
                
                </div>
            
        </div>
    </div>
    <div class="cols-content" id="menu">
    <div class="col-aside">
       <h2>MY MxS ����޴�</h2>
       <div class="snb">
           <ul>
               <li class="on">
                    <a href="/user/mycgv/?g=1" title="���� ����">MY MxS HOME <i></i></a>
                </li>
               <li>
                    <a href="/user/mycgv/reserve/?g=1">���� ���ų��� <i></i></a>
                    <ul>
                       <li>
                            <a href="/user/mycgv/reserve/receipt.aspx?g=1">������ ���</a>
                        </li>
                    </ul>
                </li>
               <li>
                   <a href="/user/mycgv/coupon/movie-ticket/list.aspx?g=1">������/�������� ���� <i></i></a>
                   <ul>                      
                     
                       <li>
                            <a href="/user/mycgv/coupon/movie-ticket/list.aspx?g=1">MxS ��ȭ������</a>
                        </li>
                       <li>
                            <a href="/user/mycgv/coupon/discount/list.aspx?g=1">MxS��������</a>
                        </li>
                         
                   </ul>
               </li>
               <li>
                    <a href="/user/mycgv/myinfo/?g=1">ȸ������<i></i></a>
                   <ul>

                         <li>
                            <a href="/user/mycgv/myinfo/edit-myinfo-cjone.aspx?g=1">�������� ����</a>
                        </li>

                       <li>
                            <a href="/user/mycgv/myinfo/?g=1">�̿뵿�� ����</a>
                        </li>
                  
                       <li>
                            <a href="/user/mycgv/myinfo/edit-myinfo-Email-Sms.aspx?g=1">���ż���</a>
                        </li>
                       <li>
                            <a href="/user/mycgv/myinfo/leave-cjone.aspx?g=1">ȸ��Ż��</a>
                        </li>
                        
                   </ul>
               </li>
                 <li>
                    <a href="/user/mycgv/myinfo/edit-myinfo-myprofile.aspx?g=1">������ ����<i></i></a>
                </li>
               <li>
                    <a href="/user/mycgv/inquiry/qna/list.aspx?g=1">���� ���ǳ��� <i></i></a>
                   <ul>
                       <li>
                            <a href="/user/mycgv/inquiry/qna/list.aspx?g=1">1:1 ����</a>
                        </li>


                        <li>
                            <a href="/user/mycgv/inquiry/lost/list.aspx?g=1">�нǹ� ����</a>
                        </li>
                   </ul>
               </li>
                        <li class="my-event"><a href="/user/movielog/watched.aspx">���� �� ��ȭ</a></li> 
              <!-- <li class="my-event"><a href="/user/mycgv/event/?g=1">���� ���� �̺�Ʈ</a></li> -->
           </ul>
       </div>
    </div>
   <div class="col-detail" id="mycgv_contents">

<div class="sect-mycgv-reserve movielog col4">
    <div class="box-polaroid">
        <div class="box-inner wishlist">
            <a href="http://www.cgv.co.kr/user/movielog/" title="���ø���Ʈ">
                <h3>���ø���Ʈ</h3>
                <span>���� ���� ��ȭ���� �̸� <br>��Ƶΰ� �ʹٸ�?</span>
            </a>
        </div>
        <div class="box-inner watched">
            <a href="http://www.cgv.co.kr/user/movielog/watched.aspx" title="���� �� ��ȭ">
                <h3>���� �� ��ȭ</h3>
                <span>������ ��ȭ���� �ѹ��� <br>��� ���� �ʹٸ�?</span>
            </a>
        </div>
        <div class="box-inner mvdiary">
            <a href="http://www.cgv.co.kr/user/movielog/diary.aspx" title="������̾">
                <h3>������̾</h3>
                <span>���� �� �� �������� ���� <br>�߾��ϰ� �ʹٸ�?</span>
            </a>
        </div>
        <div class="box-inner photi">
            <a href="http://phototicket.cgv.co.kr" target="_blank">
                <h3>����Ƽ��</h3>
                <span>�� �ϳ����� ������<br>Ƽ���� �����ϰ� �ʹٸ�?</span>
            </a>
        </div>
    </div>
</div>
<div class="tit-mycgv">
   <h3>MY ���ų���</h3>
   <p><em>0��</em> <a href="/user/mycgv/reserve/">���ų��� ������</a></p>
   <span>���Ź�ȣ�θ� Ƽ���� ã�� �� ������ �ݵ�� Ȯ�� ��Ź�帳�ϴ�.</span>
</div>

<form name="aspnetForm" method="post" action="./" id="aspnetForm" novalidate="novalidate">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="">
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMjAzNjI1MTIzN2Rkb61/wKC2wl92h7iknOS3c2nC6AQ=">
</div>

<div>

   <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="F268F2D4">
   <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAANEBwag/p6Cyp7NqgHffiIrAAaiyC+ogOIlg3pscMtiP2lKUwCIH8TI/sjrTPJzW34iVv8t0sMzGIw9AmgL9DZ3cbnRDQ==">
</div>
    <!-- MY ���ų��� -->
    <input type="hidden" id="hidCancelReserveNo" name="hidCancelReserveNo">
    <div class="sect-base-booking">
       <div class="box-polaroid">
           <div class="box-inner">
                
                
                    
                    <div class="lst-item">
                     ������ �ֱ� ���ų����� �������� �ʽ��ϴ�.
                  </div>
                    
           </div>
       </div>
    </div>
</form>
<!-- //MY ���ų��� -->

<!-- MY �����̷� -->
<div class="sect-mycgv-part">
    <div class="box-polaroid type1">
      <!--  <div class="box-inner">
            <div class="tit-mycgv">
            <h3>MY �����̺�Ʈ</h3>
            <p><em>0��</em> <a href="/user/mycgv/event/">MY �����̺�Ʈ ������</a></p>
         </div>
         <div class="col-myevt">
                
                    <ol><li>������ �̺�Ʈ ���������� �������� �ʽ��ϴ�.</li></ol>
                
         </div>
        </div>-->
        <div class="box-inner">
            <div class="tit-mycgv">
            <h3>MY Q&amp;A</h3>
            <p><em>0��</em> <a href="/user/mycgv/inquiry/qna/list.aspx">MY Q&amp;A ������</a></p>
         </div>
         <div class="col-myqna">
                
                    <ul><li>������ 1:1 ���ǳ����� �������� �ʽ��ϴ�.</li></ul>
                
         </div>
        </div>
    </div>
</div>
<!-- //MY �����̷� -->
<form name="targetform" id="targetform" method="post" novalidate="novalidate">
   <input type="hidden" name="reverse_no" id="reverse_no">
</form>

   </div>
</div>
</body>
</html>