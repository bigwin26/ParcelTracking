	//택배사 목록 가져오기
	$(document).ready(
			function() {
				// 택배사 목록 조회 company-api
				$.ajax({
					type : "GET",
					dataType : "json",
					url : "https://apis.tracker.delivery/carriers",
					success : function(data) {
	
						// 방법 1. JSON.parse 이용하기
						var parseData = JSON.parse(JSON.stringify(data));
						console.log(parseData.Company); // 그중 Json Array에 접근하기 위해 Array명 Company 입력
	
						// 방법 2. Json으로 가져온 데이터에 Array로 바로 접근하기
						var CompanyArray = data; // Json Array에 접근하기 위해 Array명 Company 입력
						console.log(CompanyArray);
	
						var myData = "";
						$.each(CompanyArray, function(key, value) {
							myData += ('<option value='+value.id+'>'
									+ value.name + '</option>');
						});
						$("#tekbeCompnayList").html(myData);
					}
				});
			});
	
	//택배 진행상황 가져오기
	$("#searchParcel").click(function(event) {
		event.preventDefault();
		var carrier_id = $('#tekbeCompnayList option:selected').val();
		var track_id = $('#trackingNumber').val();
		$('#result').css('display','block');
		$('#loading').css('display','block'); //loading화면 보여주기
		$.ajax({
			type : "GET",
			dataType : "json",
			url : "https://apis.tracker.delivery/carriers/"+carrier_id+"/tracks/"+track_id,
			success : function(data) {
				var parseData = JSON.parse(JSON.stringify(data));
				var from = parseData.from;
				var to = parseData.to;
				var state = parseData.state;
				var myInvoiceData = "";
				if(data.status == false){
					myInvoiceData += ('<p>'+parseData.msg+'<p>');
				}else{
					myInvoiceData += ('<tr>');                
					myInvoiceData += ('<th>'+"보내는사람"+'</td>');                     
					myInvoiceData += ('<th>'+from.name+'</td>');                     
					myInvoiceData += ('</tr>');     
					myInvoiceData += ('<tr>');                
					myInvoiceData += ('<th>'+"받는사람"+'</td>');                     
					myInvoiceData += ('<th>'+to.name+'</td>');                     
					myInvoiceData += ('</tr>');   
					myInvoiceData += ('<tr>');                
					myInvoiceData += ('<th>'+"상태"+'</td>');                     
					myInvoiceData += ('<th>'+state.text+'</td>');                     
					myInvoiceData += ('</tr>');                                       
				}
	
	
				$("#myParcelWhereisResult").html(myInvoiceData)
	
				var trackingDetails = data.progresses;
	
	
				var myTracking="";
				var header ="";
				header += ('<tr>');                
				header += ('<th>'+"시간"+'</th>');
				header += ('<th>'+"장소"+'</th>');
				header += ('<th>'+"위치"+'</th>');
				header += ('<th>'+"진행상황"+'</th>');                     
				header += ('</tr>');     
	
				$.each(trackingDetails,function(key,value) {
					myTracking += ('<tr>');                
					myTracking += ('<td>'+value.time+'</td>');
					myTracking += ('<td>'+value.location.name+'</td>');
					myTracking += ('<td>'+value.status.text+'</td>');
					myTracking += ('<td>'+value.description+'</td>');                     
					myTracking += ('</tr>');                                    
				});
	
				$("#myParcelWhereis").html(header+myTracking);
				$('#loading').css('display','none'); //조회가 끝난 후 loading화면 감추기
			}
		});
	});
	
	
	
	//클릭시 해당 섹션으로 스크롤이동
	$(document).ready(function() {
		$(".goBoard").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 500);
		});
		$(".goMap").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 500);
		});
	});