<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="Path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<%@ include file="include/head.jsp"%>
<body id="top">
	<div class="bgded overlay"
		style="background-image:url('${Path}/resources/images/parcel.gif');">
		<!-- ################################################################################################ -->
		<div class="wrapper row1">
			<header id="header" class="hoc clear">
				<!-- ################################################################################################ -->
				<div id="logo" class="fl_left">
					<h1>
						<a href="index.html">WIMP</a>
					</h1>
				</div>
				<!-- ################################################################################################ -->
				<nav id="mainav" class="fl_right">
					<ul class="clear">
						<li class="active"><a href="index.html">Home</a></li>
						<li><a href="#map" class="goMap">Map</a></li>
						<li><a href="#board" class="goBoard">Board</a></li>
						<li><a href="#">other</a></li>
						<li><a href="#">the other</a></li>
					</ul>
				</nav>
				<!-- ################################################################################################ -->
			</header>
		</div>
		<div id="pageintro" class="hoc clear">
			<!-- ################################################################################################ -->
			<article>
				<h3 class="heading">Where is my parcel?</h3>
				<p>Insert Tracking Number</p>
				<footer>
					<form class="group" method="post" action="#">
						<select id="tekbeCompnayList">
						</select>
						<fieldset>
							<legend>Sign-Up:</legend>

							<input id="trackingNumber" type="text" value=""
								placeholder="Tracking number Here&hellip;">
							<button id="searchParcel" class="fas fa-sign-in-alt"
								type="submit" title="Submit">
								<em>Submit</em>
							</button>
						</fieldset>
					</form>
				</footer>
			</article>
			<!-- ################################################################################################ -->
		</div>
		<!-- ################################################################################################ -->
	</div>
	<!-- End Top Background Image Wrapper -->
	<div class="wrapper row3" id="result" style="display: none">
		<main class="hoc clear"> <!-- main body --> <!-- ################################################################################################ -->
		<section id="introblocks">
			<div id="myParcelWhereisResult" style="display: none"></div>
			<div id="myParcelWhereis" style="width: 100%"></div>
		</section>
		<!-- ################################################################################################ -->
		<!-- / main body -->
		<div class="clear"></div>
		</main>
	</div>
	<div class="wrapper row3" id="map">
		<main class="hoc container clear"> <!-- main body --> <!-- ################################################################################################ -->
		<section id="introblocks">
			<div id="map" style="width: 500px; height: 400px;"></div>
		</section>
		<!-- ################################################################################################ -->
		<!-- / main body -->
		<div class="clear"></div>
		</main>
	</div>
	<div class="wrapper row2" id="board">
		<section id="references" class="hoc container clear">
			<!-- ################################################################################################ -->
			<div class="sectiontitle">
				<h6 class="heading">Aliquet vestibulum</h6>
				<p>Eget magna eget sem imperdiet tincidunt vestibulum fringilla
					nulla</p>
			</div>
			<nav class="ref-sort">
				<ul>
					<li class="current"><a href="#">Ultricies</a></li>
					<li><a href="#">Curabitur</a></li>
					<li><a href="#">Porttitor</a></li>
					<li><a href="#">Pulvinar</a></li>
				</ul>
			</nav>
			<ul class="nospace group ref-img">
				<li class="one_third"><a class="imgover" href="#"><img
						src="${Path}/resources/images/cj.jpg" alt=""></a></li>
				<li class="one_third"><a class="imgover" href="#"><img
						src="${Path}/resources/images/lotte.jpg" alt=""></a></li>
				<li class="one_third"><a class="imgover" href="#"><img
						src="${Path}/resources/images/logen.gif" alt=""></a></li>
				<li class="one_third"><a class="imgover" href="#"><img
						src="${Path}/resources/images/post.png" alt=""></a></li>
				<li class="one_third"><a class="imgover" href="#"><img
						src="${Path}/resources/images/cu.png" alt=""></a></li>
				<li class="one_third"><a class="imgover" href="#"><img
						src="${Path}/resources/images/hanjin.png" alt=""></a></li>
			</ul>
			<footer class="block center">
				<a class="btn" href="#">View more here</a>
			</footer>
			<!-- ################################################################################################ -->
		</section>
	</div>
	<div class="wrapper row4">
		<footer id="footer" class="hoc clear">
			<div class="group btmspace-80">
				<div class="one_third first">
					<h6 class="heading">Non erat varius lacinia</h6>
					<p>Morbi tincidunt in hac habitasse platea dictumst praesent
						pretium donec tincidunt laoreet diam nullam augue.</p>
					<p class="btmspace-30">
						Tortor rhoncus sed dictum vitae viverra posuere lorem pellentesque
						suscipit eros vel ante curabitur pretium [<a href="#"><i
							class="fas fa-arrow-right"></i></a>]
					</p>
					<ul class="faico clear">
						<li><a class="faicon-dribble" href="#"><i
								class="fab fa-dribbble"></i></a></li>
						<li><a class="faicon-facebook" href="#"><i
								class="fab fa-facebook"></i></a></li>
						<li><a class="faicon-google-plus" href="#"><i
								class="fab fa-google-plus-g"></i></a></li>
						<li><a class="faicon-linkedin" href="#"><i
								class="fab fa-linkedin"></i></a></li>
						<li><a class="faicon-twitter" href="#"><i
								class="fab fa-twitter"></i></a></li>
						<li><a class="faicon-vk" href="#"><i class="fab fa-vk"></i></a></li>
					</ul>
				</div>
				<div class="one_third">
					<h6 class="heading">Enim et mauris quisque vitae</h6>
					<p class="nospace btmspace-15">Libero class aptent taciti
						sociosqu ad litora torquent per conubia nostra.</p>
					<form method="post" action="#">
						<fieldset>
							<legend>Newsletter:</legend>
							<input class="btmspace-15" type="text" value=""
								placeholder="Name"> <input class="btmspace-15"
								type="text" value="" placeholder="Email">
							<button type="submit" value="submit">Submit</button>
						</fieldset>
					</form>
				</div>
				<%-- 				<div class="one_third">
					<h6 class="heading">Per inceptos himenaeos</h6>
					<ul class="nospace clear latestimg">
						<li><a class="imgover" href="#"><img
								src="${Path}/resources/images/cj.jpg" alt=""></a></li>
						<li><a class="imgover" href="#"><img
								src="${Path}/resources/images/logen.gif" alt=""></a></li>
						<li><a class="imgover" href="#"><img
								src="${Path}/resources/images/hanjin.png" alt=""></a></li>
						<li><a class="imgover" href="#"><img
								src="${Path}/resources/images/post.png" alt=""></a></li>
						<li><a class="imgover" href="#"><img
								src="${Path}/resources/images/lotte.jpg" alt=""></a></li>
						<li><a class="imgover" href="#"><img
								src="${Path}/resources/images/cu.png" alt=""></a></li>
					</ul>
				</div> --%>
			</div>
			<div id="ctdetails" class="clear">
				<ul class="nospace clear">
					<li class="one_quarter first">
						<div class="block clear">
							<a href="#"><i class="fas fa-phone"></i></a> <span><strong>Give
									us a call:</strong> +00 (123) 456 7890</span>
						</div>
					</li>
					<li class="one_quarter">
						<div class="block clear">
							<a href="#"><i class="fas fa-envelope"></i></a> <span><strong>Send
									us a mail:</strong> support@domain.com</span>
						</div>
					</li>
					<li class="one_quarter">
						<div class="block clear">
							<a href="#"><i class="fas fa-clock"></i></a> <span><strong>
									Monday - Saturday:</strong> 08.00am - 18.00pm</span>
						</div>
					</li>
					<li class="one_quarter">
						<div class="block clear">
							<a href="#"><i class="fas fa-map-marker-alt"></i></a> <span><strong>Come
									visit us:</strong> Directions to <a href="#">our location</a></span>
						</div>
					</li>
				</ul>
			</div>
		</footer>
	</div>
	<div class="wrapper row5">
		<div id="copyright" class="hoc clear">
			<!-- ################################################################################################ -->
			<p class="fl_left">
				Copyright &copy; 2019 - All Rights Reserved - <a href="#">WIMP</a>
			</p>
			<!-- ################################################################################################ -->
		</div>
	</div>
	<!-- loading -->
	<div id="loading">
		<img id="loading-image" src="${Path}/resources/images/loading.gif"
			alt="Loading..." />
	</div>
	<!--위로가기 버튼 -->
	<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
	<%@ include file="include/jsInclude.jsp"%>
</body>
</html>