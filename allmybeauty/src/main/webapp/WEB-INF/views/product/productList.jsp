<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/myheader.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    	 .SortBy ul li {
		    float: left;
		    font-size: 12px;
		    line-height: 16px;
		    position : relative;
		}
		ul {
		    list-style: none;
		}
		.Category {
		    margin: auto;
		    width: auto;
		    margin: 35px auto 0;
		    padding: 0;
		    background: #fff;
		}
		.Category ul {
		    overflow: hidden;
		    width: auto;
		    margin: auto;
		}
		.Category ul li {
		    float: left;
		    width: 188px;
		    height: 40px;
		    border: 0px solid #ddd;
		    font-size: 0;
		    line-height: 0;
		}
		.Category ul li button {
		    width: 188px;
		    height: 40px;
		    padding: 0 12px 3px;
		    background: none;
		    color: #888;
		    font-size: 14px;
		    text-align: left;
		    font-weight: 700;
		}
		.Category ul li.on button {
		    position: relative;
		    margin: -1px;
		    background: #22d3d6;
		    color: #fff;
		    font-weight: 700;
		}
		
		.SelectCategory .on button {
		    position: relative;
		    margin: -1px;
		    color: #86efef;
		    font-weight: 700;
		    border:0;
		}
		
		.subCategory {
		    margin: auto;
		    width: auto;
		    margin: 35px auto 0;
		    padding: 0;
		    background: #fff;
		}
		.subCategory ul {
		    overflow: hidden;
		    width: auto;
		    margin: auto;
		}
		.subCategory ul li {
		    float: left;
		    width: 188px;
		    height: 40px;
		    border: 0px solid #ddd;
		    font-size: 0;
		    line-height: 0;
		}
		.subCategory ul li button {
		    width: 188px;
		    height: 40px;
		    color: #888;
		    font-size: 14px;
		    text-align: left;
		    font-weight: 700;
			float:left; 
			margin:3px 0 3px -1px; 
			padding:0 12px 0 14px;
			no-repeat left 2px;
			white-space:nowrap;
		    background: none;
		   
		}
		.subCategory ul li.on button {
		    position: relative;
		    margin: -1px;
		    background: #22d3d6;
		    color: #fff;
		    font-weight: 700;
		}
		.SkinType {
		    margin: auto;
		    width: auto;
		    margin: 35px auto 0;
		    padding: 0;
		    background: #86efef;
		}
		.SkinType ul {
		    overflow: hidden;
		    width: auto;
		    margin: auto;
		}
		.SkinType ul li {
		    float: left;
		    border: 6px solid #86efef;
			width:105px;
			height:105px;
			border-radius:75px;
			text-align:center;
			margin-right:2%;
			line-height:110px;
			
		}
		.SkinType ul li button {
		   
		   background: none;
		   color: #555;
		   border-radius:75px;
		   text-align: center;
		   margin-top:1%;
		   font-weight: 700;
		   line-height:initial;
		   border:0;
		   outline: 0;
	   }
	   .SkinType ul li.on button {
		    position: relative;
		    margin: -1px;
		    color: #86efef;
		    font-weight: 700;
		    border:0;
		}
		
		.thumbActive, .thumbNonActive {
			background-color: white;
			border : 0;
			outline: 0;
		}
		
    </style>
</head>
<body>
	<div class="main">
        <section class="module-small">
          <div class="container">
            <form class="row" id="frmSendValue" action="${contextPath }/product/productList" method="get">
	            <div class="SkinType">
					<ul style="width: 520px; margin-bottom:3%; float: left;">
						   <li class="selectSkinType" data-skintype="">
								<button type="button" class="selectButton" style="font-size: 30px;"><strong>??????</strong></button>
							</li>
							<li class="selectSkinType" data-skintype="1">
								<button type="button" class="selectButton" style="font-size: 30px;"><strong>??????</strong></button>
							</li>
						 <li class='selectSkinType' data-skintype="2">
								<button type="button" class="selectButton" style="font-size: 30px;"><strong>??????</strong></button>
							</li>
							<li class='selectSkinType' data-skintype="3">
								<button type="button" class="selectButton" style="font-size: 26px;"><strong>?????????</strong></button>
							</li>
					</ul>
						<div class="reset" style="float: left;margin-top: 8%; ">
						  <button type="button" class="btn btn-default btn-sm" onclick="allReset()">???????????? ?????????</button>
						   </div>
				   </div>

              <div class="btn-group btn-group-justified Category" role="group" aria-label="..." >
		 		  <div class="btn-group selectCategory" role="group" >
				    <button id="noticeBtn" type="button" class="btn btn-default btn-lg" style="color:#2f4f4e; font-size: 15px;"data-category=""><strong>??????</strong></button>   
				  </div>
				  <div class="btn-group selectCategory"  role="group">
				    <button  id="customerBtn" type="button" class="btn btn-default btn-lg" style="color:#2f4f4e; font-size: 15px;" data-category="cleansing"><strong>?????????</strong></button> 
				  </div>
				  <div class="btn-group selectCategory" role="group">
				    <button  id="customerBtn" type="button" class="btn btn-default btn-lg" style="color:#2f4f4e; font-size: 15px;" data-category="skin"><strong>????????????</strong></button> 
				  </div>
				  <div class="btn-group selectCategory" role="group">
				    <button  id="customerBtn" type="button" class="btn btn-default btn-lg" style="color:#2f4f4e; font-size: 15px;" data-category="hair"><strong>????????????</strong></button> 
				  </div>
				  <div class="btn-group selectCategory" role="group">
				    <button  id="customerBtn" type="button" class="btn btn-default btn-lg" style="color:#2f4f4e; font-size: 15px;" data-category="body"><strong>????????????</strong></button> 
				  </div>
				  <div class="btn-group selectCategory" role="group">
				    <button  id="customerBtn" type="button" class="btn btn-default btn-lg" style="color:#2f4f4e; font-size: 15px;" data-category="sun"><strong>?????????</strong></button> 
				  </div>
				  
				</div>

				
   				 <div class=" btn-group-justified Category " style="float: left;">
	              <ul id="SubCateCleansing" style="display:none;  width:100%; padding-inline-start:0px">
	              	   <li class="selectSubCategory">
	                  		<button type="button" class="btn btn-default " data-subcategory="cleansingform" style="border: 0; outline: 0;" ><strong>????????????</strong></button>
	               	   </li>
	               	   <li class="selectSubCategory" >
	                  		<button type="button" class="btn btn-default " data-subcategory="cleansinggel" style="border: 0; outline: 0;"><strong>????????????</strong></button>
	               	   </li>
	                   <li class='selectSubCategory'>
	                  		<button type="button" class="btn btn-default " data-subcategory="cleansingwater" style="border: 0; outline: 0;"><strong>???????????????</strong></button>
	               	   </li>
	               	   <li class='selectSubCategory'>
	                  		<button type="button" class="btn btn-default" data-subcategory="cleansingoil" style="border: 0; outline: 0;"><strong>???????????????</strong></button>
	               	   </li>
	               	   <li class='selectSubCategory' >
	                  		<button type="button" class="btn btn-default" data-subcategory="cleansingtissue" style="border: 0; outline: 0;"><strong>???????????????</strong></button>
	               	   </li>
	              </ul>
	              
	              <ul id="SubCateSkin" style="display:none;  width:100%; padding-inline-start:0px">
	              	   <li class="selectSubCategory">
	                  		<button type="button" class="btn btn-default " data-subcategory="toner" style="border: 0; outline: 0;" ><strong>??????/??????</strong></button>
	               	   </li>
	               	   <li class="selectSubCategory" >
	                  		<button type="button" class="btn btn-default "data-subcategory="lotion" style="border: 0; outline: 0;"><strong>??????/?????????</strong></button>
	               	   </li>
	                   <li class='selectSubCategory'>
	                  		<button type="button" class="btn btn-default " data-subcategory="serum" style="border: 0; outline: 0;"><strong>?????????/??????/??????</strong></button>
	               	   </li>
	               	   <li class='selectSubCategory'>
	                  		<button type="button" class="btn btn-default" data-subcategory="cream" style="border: 0; outline: 0;"><strong>??????</strong></button>
	               	   </li>
	              </ul>
	              
	               <ul id="SubCateHair" style="display:none;  width:100%; padding-inline-start:0px">
	              	   <li class="selectSubCategory">
	                  		<button type="button" class="btn btn-default " data-subcategory="shampoo" style="border: 0; outline: 0;" ><strong>??????</strong></button>
	               	   </li>
	               	   <li class="selectSubCategory" >
	                  		<button type="button" class="btn btn-default " data-subcategory="rinse" style="border: 0; outline: 0;"><strong>??????/???????????????</strong></button>
	               	   </li>
	                   <li class='selectSubCategory'>
	                  		<button type="button" class="btn btn-default " data-subcategory="hairessence" style="border: 0; outline: 0;"><strong>???????????????</strong></button>
	               	   </li>
	              </ul>
	             
	              <ul id="SubCatebody" style="display:none;  width:100%; padding-inline-start:0px">
	              	   <li class="selectSubCategory">
	                  		<button type="button" class="btn btn-default " data-subcategory="bodywash" style="border: 0; outline: 0;" ><strong>????????????</strong></button>
	               	   </li>
	               	   <li class="selectSubCategory" >
	                  		<button type="button" class="btn btn-default "data-subcategory="bodylotion" style="border: 0; outline: 0;"><strong>????????????</strong></button>
	               	   </li>
	                   <li class='selectSubCategory'>
	                  		<button type="button" class="btn btn-default " data-subcategory="bodyoil" style="border: 0; outline: 0;"><strong>????????????</strong></button>
	               	   </li>
	               	   <li class='selectSubCategory'>
	                  		<button type="button" class="btn btn-default" data-subcategory="handcream" style="border: 0; outline: 0;"><strong>????????????/?????????</strong></button>
	               	   </li>
	              </ul>
	              
                 <ul id="SubCateSun" style="display:none;  width:100%; padding-inline-start:0px">
	              	   <li class="selectSubCategory">
	                  		<button type="button" class="btn btn-default " data-subcategory="suncream" style="border: 0; outline: 0;" ><strong>?????????</strong></button>
	               	   </li>
	               	   <li class="selectSubCategory" >
	                  		<button type="button" class="btn btn-default " data-subcategory="sunstick" style="border: 0; outline: 0;"><strong>?????????</strong></button>
	               	   </li>
	              </ul>
	             </div>


              <input type="hidden" name="pageNum" value="${pagingCreator.productPaging.pageNum }"/>
              <input type="hidden" name="rowAmountPerPage" value="${pagingCreator.productPaging.rowAmountPerPage }"/>
              <input type="hidden" name="lastPageNum" value="${pagingCreator.lastPageNum }"/>
			  <input type="hidden" name="skintype" value="${pagingCreator.productPaging.skintype }"/>
              <input type="hidden" name="sortBy" value="${pagingCreator.productPaging.sortBy }"/>
              <input type="hidden" name="category" value="${pagingCreator.productPaging.category }"/>
              <input type="hidden" name="subCategory" value="${pagingCreator.productPaging.subCategory }"/>
              <input type="hidden" name="mid" value="${principal.username}"/>
            </form>
          </div>
        </section>
        <hr class="divider-w">
        <div class="SortBy" style="margin-left: 350px;">
             <ul>
           	   <li class="selectSortTab" data-selecttab="sortthumb">
              		<button type="button" class="selectButton"><i class="fa fa-check" style="display:none"></i>?????????</button>
           	   </li>
               <li class='selectSortTab' data-selecttab="sortprice">
              		<button type="button" class="selectButton"><i class="fa fa-check" style="display:none"></i>?????? ?????????</button>
           	   </li>
           	   <li class='selectSortTab' data-selecttab="sortlowprice">
              		<button type="button" class="selectButton"><i class="fa fa-check" style="display:none"></i>?????? ?????????</button>
           	   </li>
             </ul>
		</div>
        <section class="module-small">
          <div class="container">
            <div class="row multi-columns-row">
            <c:forEach items="${productList }" var="prod">
              <div class="col-sm-6 col-md-4 col-lg-4">
                <div class="shop-item">
                	<div class="shop-item-image">
                		<input type="hidden" name="productImage" value="${prod.attachfilesVO.repoPath }/${prod.attachfilesVO.uploadpath }/${prod.attachfilesVO.uuid }_${prod.attachfilesVO.filename }"/>
                		<img src='' alt="No Image" style="height: 450px; width: 400px;"/>
                  	</div>
	                <h4 class="shop-item-title font-alt">
	                  <a class="proDetail" data-productid="${prod.productVO.productId }" href="#me">${prod.productVO.productName }</a>&nbsp;
	                 <c:choose>
            			<c:when test="${prod.productVO.thumbflag==1 }">
          					<button type="button" value="${prod.productVO.productId }" class="thumbActive">
                				<span><i class="fa fa-thumbs-up"></i>&nbsp;${prod.productVO.productThumb}</span>
                  			</button>
                  			<button type="button" value="${prod.productVO.productId }" class="thumbNonActive" style="display:none">
                  				<span><i class="fa fa-thumbs-o-up"></i>&nbsp;${prod.productVO.productThumb-1}</span>
                  			</button>
            			</c:when>
              			<c:otherwise>
              				<button type="button" value="${prod.productVO.productId }" class="thumbNonActive">
	                  			<span><i class="fa fa-thumbs-o-up"></i>&nbsp;${prod.productVO.productThumb}</span>
	                  		</button>
	                  		<button type="button" value="${prod.productVO.productId }" class="thumbActive" style="display:none">
	                  			<span><i class="fa fa-thumbs-up"></i>&nbsp;${prod.productVO.productThumb+1}</span>
	                  		</button>
	          			</c:otherwise>
		          	 </c:choose>  
		          	 
	                </h4>
	                <fmt:formatNumber value="${prod.productVO.productPrice}" pattern="###,###,###"/>???
                 	
                 	
                </div>
              </div>
            </c:forEach>
            </div>
            <div class="row">
              <div class="col-sm-12 text-center">
                <div class="pagination font-alt">
	                <c:if test="${pagingCreator.prev }">
	                	<li class='paginate_button'>
		                	<a href="1"><i class="fa fa-angle-left"></i></a>
		                </li>
		            </c:if>
		            <c:if test="${pagingCreator.prev }">
		            	<li class='paginate_button'>
		            		<a href="${pagingCreator.startPagingNum-1 }">??????</a>
		            	</li>
		            </c:if>
		            <c:forEach var="pageNum" begin="${pagingCreator.startPagingNum}" end="${pagingCreator.endPagingNum}">
						<%-- ????????? ????????? ??????, Bootstrap??? active ????????? ?????? ?????? --%>
						<li class='paginate_button ${pagingCreator.productPaging.pageNum == pageNum ? "active":"" }'>
							<a href="${pageNum}">${pageNum}</a>
						</li>
					</c:forEach>
					<c:if test="${pagingCreator.next }">
						<li class='paginate_button'>
		            		<a href="${pagingCreator.endPagingNum+1 }">??????</a>
		            	</li>
		            </c:if>
		            <c:if test="${pagingCreator.next }">
		            	<li class='paginate_button'>
		            		<a href="${pagingCreator.lastPageNum }"><i class="fa fa-angle-right"></i></a>
		            	</li>
		            </c:if>
                </div>
              </div>
            </div>
          </div>
        </section>
        
		
      </div>
      <div class="scroll-up"><a href="#totop"><i class="fa fa-angle-double-up"></i></a></div>
      <script>
      	var frmSendValue=$("#frmSendValue");

      	
      	
      	var loginUser= "";
    	
    	<sec:authorize access="isAuthenticated()">
    		loginUser='<sec:authentication property="principal.username"/>';
    	</sec:authorize>
    	
      	//????????? ?????? ?????????
    	$(".thumbNonActive").on("click", function(e){
     		if(loginUser==null || loginUser==""){
     			alert("????????? ??? ??????????????????.");
    			return false;
    		} else {
    			var productId=$(this).val();
        		var btnThumbNonActive=$(this);
        		var btnThumbActive = $(this).siblings(".thumbActive");
        		
       			$.ajax({
             		url:'${contextPath}/product/plusThumb',
           			data:{productId : productId,
           				   mid : loginUser},
           			type:'get',
           			dataType:'json',
           			success:function(result, status){
           				btnThumbNonActive.attr("style", "display:none");
           				btnThumbActive.attr("style", "display:in-block");
           			}
             	});
    		}
    	});
      	
      	//????????? ?????? ??????
    	$(".thumbActive").on("click", function(e){
    		if(loginUser==null || loginUser==""){
    			alert("????????? ??? ??????????????????.");
    			return false;
    		} else {
    			var productId=$(this).val();
        		var btnThumbActive=$(this);
        		var btnThumbNonActive = $(this).siblings(".thumbNonActive");

       			$.ajax({
             			url:'${contextPath}/product/minusThumb',
           			data:{productId : productId,
           				  mid : loginUser },
           			type:'get',
           			dataType:'json',
           			success:function(result, status){
           				btnThumbActive.attr("style", "display:none");
           				btnThumbNonActive.attr("style", "display:in-block");
           				
           			}
             	});
    		}
    		
    	});
      	
    	
      	//????????? ??????
    	$(".paginate_button a").on("click", function(e){
    		e.preventDefault();
    		
    		frmSendValue.find("input[name='pageNum']").val($(this).attr("href"));
    		frmSendValue.attr("action", "${contextPath}/product/productList");
    		frmSendValue.attr("method", "get");
    		frmSendValue.submit();
    	});
      	
      	//?????? ?????? ?????????
    	$(".selectSortTab").on("click", function(e){
            var selectSort=$(this).data("selecttab");
            
            if($(this).hasClass("on")){
            	selectSort="";
            	$(this).removeClass("on");
            }

            frmSendValue.find("input[name='sortBy']").val(selectSort);
            frmSendValue.find("input[name='pageNum']").val(1);
            frmSendValue.submit();
         });
    	
    	//???????????? ?????? ?????????
    	$(".selectSkinType").on("click", function(e){
            var selectSkintype=$(this).data("skintype");
            
            frmSendValue.find("input[name='skintype']").val(selectSkintype);
            frmSendValue.find("input[name='pageNum']").val(1);
            frmSendValue.submit();
         });
      	
    	//???????????? ?????? ?????????
    	$(".selectCategory").on("click", function(e){
            var selectCategory=$(this).children("button").data("category");
            
            frmSendValue.find("input[name='subCategory']").val("");
            frmSendValue.find("input[name='category']").val(selectCategory);
            frmSendValue.find("input[name='pageNum']").val(1);
            frmSendValue.submit();
         });
    	
    	//?????? ???????????? ?????? ?????????
    	$(".selectSubCategory").on("click", function(e){
            var subCategory=$(this).children("button").data("subcategory");
            
            frmSendValue.find("input[name='subCategory']").val(subCategory);
            frmSendValue.find("input[name='pageNum']").val(1);
            frmSendValue.submit();
         });
      	
      	//?????? ????????? ?????????
     	$("#searchInput").keydown(function(key) {
    		if (key.keyCode == 13) {
    			if ((frmSendValue.find("input[name='keyword']").val()=="")) {
					alert("???????????? ???????????????.");
   				 	return false;
   				}
       		
       		frmSendValue.find("input[name='pageNum']").val(1);
       		frmSendValue.submit();
    		}
      	});
      	
      	//?????? ?????? ?????????
      	$(".search-btn").on("click", function(e){
      		if ((frmSendValue.find("input[name='keyword']").val()=="")) {
      			alert("???????????? ???????????????.");
				return false;
  			}
     
      		frmSendValue.find("input[name='pageNum']").val(1);
      		frmSendValue.submit();
      	});
      	
      	//???????????? ?????????
      	function allReset(){
      		frmSendValue.find("input[name='sortBy']").val("");
      		frmSendValue.find("input[name='skintype']").val("");
      		frmSendValue.find("input[name='keyword']").val("");
      		frmSendValue.find("input[name='category']").val("");
      		frmSendValue.find("input[name='subCategory']").val("");
      		frmSendValue.find("input[name='pageNum']").val(1);
      		frmSendValue.submit();
      	}
      	
      	 <%-- ???????????? ????????? ?????? --%>
         $(".proDetail").on("click", function(){
            var productid = $(this).data("productid");
            //var thumbflag = $(this).siblings("button").attr("class");
            /* location.href = "${contextPath}/product/detail?productid=" + productid + "&thumbflag=" + thumbflag; */
            location.href = "${contextPath}/product/detail?productid=" + productid;
         });  
      	
      	$(document).ready(function(){
      		var params = new URLSearchParams(location.search);
      		var activeSort= params.get('sortBy');
      		var activeCategory= params.get('category');
      		var activeSubCategory= params.get('subCategory');
      		var activeSkinType= params.get('skintype');

   			switch(activeSort){
   				case "sortthumb" :
					$('.selectSortTab').eq(0).addClass("on");
					break;
   				case "sortprice" :
   					$('.selectSortTab').eq(1).addClass("on");
   					break;
   				case "sortlowprice" :
   					$('.selectSortTab').eq(2).addClass("on");
   					break;
   			}
   			
   			switch(activeSkinType){
				case "1" :
					$('.selectSkinType').eq(1).addClass("on");
					break;
				case "2" :
					$('.selectSkinType').eq(2).addClass("on");
					break;
				case "3" :
					$('.selectSkinType').eq(3).addClass("on");
					break;
				default :
					$('.selectSkinType').eq(0).addClass("on");
			}
   			
   			switch(activeCategory){
   				case "cleansing" :
   					$('.selectCategory').eq(1).addClass("on");
   					$("#SubCateCleansing").css("display", "inline-block");
   					break;
   				case "skin" :
   					$('.selectCategory').eq(2).addClass("on");
   					$("#SubCateSkin").css("display", "inline-block");
   					break;
   				case "hair" :
   					$('.selectCategory').eq(3).addClass("on");
   					$("#SubCateHair").css("display", "inline-block");
   					break;
   				case "body" :
   					$('.selectCategory').eq(4).addClass("on");
   					$("#SubCatebody").css("display", "inline-block");
   					break;
   				case "sun" :
   					$('.selectCategory').eq(5).addClass("on");
   					$("#SubCateSun").css("display", "inline-block");
   					break;
   				default :
   					$('.selectCategory').eq(0).addClass("on");
   			}
   			
   			switch(activeSubCategory){
				case "toner" :
					$('#SubCateSkin .selectSubCategory').eq(0).addClass("on");
					break;
				case "lotion" :
					$('#SubCateSkin .selectSubCategory').eq(1).addClass("on");
					break;
				case "serum" :
					$('#SubCateSkin .selectSubCategory').eq(2).addClass("on");
					break;
				case "cream" :
					$('#SubCateSkin .selectSubCategory').eq(3).addClass("on");
					break;
				case "cleansingform" :
					$('#SubCateCleansing .selectSubCategory').eq(0).addClass("on");
					break;
				case "cleansinggel" :
					$('#SubCateCleansing .selectSubCategory').eq(1).addClass("on");
					break;
				case "cleansingwater" :
					$('#SubCateCleansing .selectSubCategory').eq(2).addClass("on");
					break;
				case "cleansingoil" :
					$('#SubCateCleansing .selectSubCategory').eq(3).addClass("on");
					break;
				case "cleansingtissue" :
					$('#SubCateCleansing .selectSubCategory').eq(4).addClass("on");
					break;
				case "shampoo" :
					$('#SubCateHair .selectSubCategory').eq(0).addClass("on");
					break;
				case "rinse" :
					$('#SubCateHair .selectSubCategory').eq(1).addClass("on");
					break;
				case "hairessence" :
					$('#SubCateHair .selectSubCategory').eq(2).addClass("on");
					break;
				case "bodywash" :
					$('#SubCatebody .selectSubCategory').eq(0).addClass("on");
					break;
				case "bodylotion" :
					$('#SubCatebody .selectSubCategory').eq(1).addClass("on");
					break;
				case "bodyoil" :
					$('#SubCatebody .selectSubCategory').eq(2).addClass("on");
					break;
				case "handcream" :
					$('#SubCatebody .selectSubCategory').eq(3).addClass("on");
					break;
				case "suncream" :
					$('#SubCateSun .selectSubCategory').eq(0).addClass("on");
					break;
				case "sunstick" :
					$('#SubCateSun .selectSubCategory').eq(1).addClass("on");
					break;
			}
     		 
   			var thumbnailFilePath;
   			
   			$("input[name='productImage']").each(function(i) {
   				thumbnailFilePath=encodeURIComponent($(this).val());
   					
   	     		console.log(thumbnailFilePath);
   	     		$("img").eq(i).attr("src", "${contextPath}/displayThumbnailFile?fileName=" + thumbnailFilePath);
   			});
      	});

      </script>
<%@ include file="../include/myfooter.jsp" %>