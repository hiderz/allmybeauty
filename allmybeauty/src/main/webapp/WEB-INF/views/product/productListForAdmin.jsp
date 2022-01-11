<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/myheader.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		th {text-align: center;}
	</style>
</head>
<body>

  		<div class="aside col-sm-2 col-md-2" style="margin-top:6%" id="aside">
              <div class="widget">
                  <h5 class="widget-title font-alt">관리자메뉴</h5>
                  <ul class="icon-list">
	                	<li><a href="${contextPath }/admin/main">메인페이지</a></li>
	                  	<li><a href="${contextPath }/product/addproduct">상품등록</a></li>
	                    <li><a href="${contextPath }/product/productListForAdmin">상품리스트</a></li>
	                  	<li><a href="${contextPath }/admin/adminmemberlist">회원관리</a></li>
	                  	<li><a href="${contextPath }/QnABoard/adminNotice">고객센터관리</a></li>
                	</ul>
             </div>
        </div> 
             <div class="row" style="padding-top: 100px;">
             <div class="form-group">
               	<label for="sl1">피부 타입</label>
         	    <select class="form-control" id="skintypeid" name="skintypeid" style="max-width: 10%">
         	    	<option value="">전체</option>
	          	 	<option value="1">지성</option>
	          	 	<option value="2">건성</option>
	          	 	<option value="3">복합성</option>
            	</select> 
            	<label>카테고리:</label>
            	<select class="form-control" id="category" name="productCategory" onchange="selectCategory()" style="max-width: 10%">
             	 	<option value="">전체</option>
             	 	<option value="body">바디케어</option>
             	 	<option value="skin">스킨케어</option>
             	 	<option value="cleansing">클렌징</option>
             	 	<option value="hair">헤어케어</option>
             	 	<option value="sun">선케어</option>
               	</select> 
               	<label>서브 카테고리:</label> 
               		<select class="form-control subcategory" id="nocate" name="productSubCategory" style="max-width: 10%"> 
	                    <option value="">전체</option> 
                   </select>
                   <select class="form-control subcategory" id="catebody" name="productSubCategory" style="max-width: 10%; display:none;"> 
	                    <option value="bodywash">바디워시</option> 
	                    <option value="bodylotion">바디로션</option> 
	                    <option value="bodyoil">바디오일</option>
	                    <option value="handcream">핸드크림/풋크림</option>
                   </select>
                   <select class="form-control subcategory" id="cateskin" name="productSubCategory" style="display:none; max-width: 10%" > 
	                    <option value="toner">스킨/토너</option> 
	                    <option value="lotion">로션/에멀전</option> 
	                    <option value="serum">에센스/앰플/세럼</option>
	                    <option value="cream">크림</option>
                   </select>
                   <select class="form-control subcategory" id="catecleansing" name="productSubCategory" style="display:none; max-width: 10%"> 
	                    <option value="cleansingform">클렌징폼</option> 
	                    <option value="cleansinggel">클렌징젤</option> 
	                    <option value="cleansingwater">클렌징워터</option>
	                    <option value="cleansingoil">클렌징오일</option>
	                    <option value="cleansingtissue">클렌징티슈</option>
                   </select>
                   <select class="form-control subcategory" id="catehair" name="productSubCategory" style="display:none; max-width: 10%"> 
	                    <option value="shampoo">샴푸</option> 
	                    <option value="rinse">트리트먼트/린스</option> 
	                    <option value="hairessence">헤어에센스</option>
                   </select>
                   <select class="form-control subcategory" id="catesun" name="productSubCategory" style="display:none; max-width: 10%"> 
	                    <option value="suncream">선크림</option>
	                    <option value="sunstick">선스틱</option>
                   </select>
                   <button type="button" onclick="applySelected()">적용하기</button>
           	</div>
			<button type="button" name="deleteProduct" class="btnDelete" style="margin-left: 86%; margin-bottom: 1%">삭제</button>
             <table border="1" style="width:80%; text-align: center;  margin-left: 10%;">
		        <tr>
		        	<th>선택하기</th>
		            <th>상품ID</th>
		            <th>상품이미지</th>
		            <th>상품명</th>
		            <th>가격(단위 : 원)</th>
		            <th>카테고리</th>
		            <th>하위 카테고리</th>
		            <th>브랜드</th>
		            <th>재고</th>
		            <th>피부타입</th>
		            <th>답변</th>
		        </tr>
          			<c:forEach items="${productList }" var="prod">
          				<tr class="listForAdmin">
          					<td class="checkDeleteProduct">
          						<input type="checkbox" value="${prod.productVO.productId }"/>
          					</td>
				            <td class="productIdForShow">
				                ${prod.productVO.productId }
				            </td>
				            <td class="productImageForShow">
				                <input type="hidden" name="productImage" value="${prod.attachfilesVO.repoPath }/${prod.attachfilesVO.uploadpath }/${prod.attachfilesVO.uuid }_${prod.attachfilesVO.filename }"/>
				                <img src="" alt="No Image" style="width:120px; height: 110px;">
				            </td>
				            <td class="productNameForShow">
				                ${prod.productVO.productName}
				            </td>
				            <td class="productPriceForShow">
				                <fmt:formatNumber value="${prod.productVO.productPrice}" pattern="###,###,###"/>
				            </td>
				            <td class="productCategoryForShow">
				                ${prod.productVO.productCategory}
				            </td>
				            <td class="productSubCategoryForShow">
				                ${prod.productVO.productSubCategory}
				            </td>
				            <td class="productBrandForShow">
				                ${prod.productVO.productBrand}
				            </td>
				            <td class="productStockForShow">
				                ${prod.productVO.productStock}
				            </td>
				            <td class="skintypeidForShow">
				            	<c:choose>
				            		<c:when test="${prod.productVO.skintypeid == 1}">지성</c:when>
				            		<c:when test="${prod.productVO.skintypeid == 2}">건성</c:when>
				            		<c:when test="${prod.productVO.skintypeid == 3}">복합성</c:when>
				            	</c:choose>
				            </td>
				            <td class = "QnACheck">
				            	답변
				            </td>
				        </tr>
           			</c:forEach>
            	</table>
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
		            		<a href="${pagingCreator.startPagingNum-1 }">이전</a>
		            	</li>
		            </c:if>
		            <c:forEach var="pageNum" begin="${pagingCreator.startPagingNum}" end="${pagingCreator.endPagingNum}">
						<%-- 선택된 숫자의 경우, Bootstrap의 active 클래스 이름 추가 --%>
						<li class='paginate_button ${pagingCreator.productPaging.pageNum == pageNum ? "active":"" }'>
							<a href="${pageNum}">${pageNum}</a>
						</li>
					</c:forEach>
					<c:if test="${pagingCreator.next }">
						<li class='paginate_button'>
		            		<a href="${pagingCreator.endPagingNum+1 }">다음</a>
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
            <form id="frmSendValue">
            	<input type="hidden" name="pageNum" value="${pagingCreator.productPaging.pageNum }"/>
	            <input type="hidden" name="rowAmountPerPage" value="${pagingCreator.productPaging.rowAmountPerPage }"/>
	            <input type="hidden" name="lastPageNum" value="${pagingCreator.lastPageNum }"/>
				<input type="hidden" name="skintype" value="${pagingCreator.productPaging.skintype }"/>
	            <input type="hidden" name="category" value="${pagingCreator.productPaging.category }"/>
	            <input type="hidden" name="subCategory" value="${pagingCreator.productPaging.subCategory }"/>
            </form>
            
<script>
	var frmSendValue=$("#frmSendValue");
	var ImageID;
	var category=$("#category option:selected").val();
	var subCategory;
	selectCategory();
	
	
	//이미지 불러오는 코드
	$("input[name='productImage']").each(function(i) {
		thumbnailFilePath=encodeURIComponent($(this).val());
			
		console.log(thumbnailFilePath);
		$("img").eq(i).attr("src", "${contextPath}/displayThumbnailFile?fileName=" + thumbnailFilePath);
	});
	
	//페이징 코드
	$(".paginate_button a").on("click", function(e){
		e.preventDefault();
		
		frmSendValue.find("input[name='pageNum']").val($(this).attr("href"));
		frmSendValue.attr("action", "${contextPath}/product/productListForAdmin");
		frmSendValue.attr("method", "get");
		frmSendValue.submit();
	});
	
	//상품 수정 페이지 호출
	$(".productImageForShow").on("click", function(e){
		productId=$(this).siblings(".productIdForShow").text().trim();
		console.log(productId);
		
		location.href="${contextPath}/product/modifyProduct?productId=" + parseInt(productId);
	});
	
	
	//카테고리 선택 이벤트
	function selectCategory(){
    	category=$("#category option:selected").val();

    	switch(category){
	    	case "body":
				$(".subcategory").css("display", "none");
				$("#catebody").css("display", "block");
				subCategory=$("#catebody");
				break;
    		case "skin":
    			$(".subcategory").css("display", "none");
    			$("#cateskin").css("display", "block");
    			subCategory=$("#cateskin");
    			break;
    		case "cleansing":
    			$(".subcategory").css("display", "none");
    			$("#catecleansing").css("display", "block");
    			subCategory=$("#catecleansing");
    			break;
    		case "hair":
    			$(".subcategory").css("display", "none");
    			$("#catehair").css("display", "block");
    			subCategory=$("#catehair");
    			break;
    		case "sun":
    			$(".subcategory").css("display", "none");
    			$("#catesun").css("display", "block");
    			subCategory=$("#catesun");
    			break;
    		default:
    			$(".subcategory").css("display", "none");
    			$("#nocate").css("display", "block");
    			subCategory=$("#nocate");
    			break;
    	}
    }
	
	function applySelected(){
    	var frmSendValue=$("#frmSendValue");
    	var productSubCategory=$(subCategory, "option:selected").val();
    	var skintypeid=$("#skintypeid option:selected").val();
    	
    	frmSendValue.find("input[name='productCategory']").val(category);
    	frmSendValue.find("input[name='productSubCategory']").val(productSubCategory);
    	frmSendValue.find("input[name='skintype']").val(skintypeid);
    	frmSendValue.find("input[name='pageNum']").val(1);

    	frmSendValue.attr("method", "get");
    	frmSendValue.attr("action", "${contextPath}/product/productListForAdmin");
    	frmSendValue.submit();
    }
	
	$(".btnDelete").on("click", function(e){
		var productIdList=[];
		
		$("input[type='checkbox']").each(function(i){
			if($(this).is(":checked")){
				productIdList.push($(this).val());
			}
		});
		
		console.log(productIdList);
		
		$.ajax({
	    	 type: 'post',
	    	 url: '${contextPath}/product/deleteProduct',
	    	 data: {"productIdList" : productIdList}, 
	    	 dataType: 'json',
	    	 success: function(result, status){
	    		 console.log(result);
	    	 	 alert("성공!");
	    	 	
	    	 }
   	 	}); //ajax end
		
	});
	
	$(".QnACheck").on("click", function(){
		var productid = $(this).siblings(".productIdForShow").text();
		productid = $.trim(productid);
		location.href = '/allmybeauty/product/Q&Admin?productid=' + productid;
	});
	
	
</script>
</body>
</html>