  <div id="channels-slider-container" class="row">
	 			<div class="col-md-12 headline">
	 				<span> Channel Season 1 </span>
	 			</div>
	 			<div id="channel1" class="col-md-12"></div>
	 			
	 			<div class="col-md-12 headline">
	 				<span> Channel Season 2 </span>
	 			</div>
	 			<div id="channel2" class="col-md-12"></div>

	 			<div class="col-md-12 headline">
	 				<span> Channel Season 3 </span>
	 			</div>
	 			<div id="channel3" class="col-md-12"></div>
	 			
	 			<div class="col-md-12 headline">
	 				<span> Channel Season 4 </span>
	 			</div>
	 			<div id="channel4" class="col-md-12"></div>
 			</div>
		</div>

			<script type="text/javascript">
	 		$(window).load(function() {
	 	        $('#top-slider').nivoSlider();
	 	    });
	 		
	 		$(document).ready(function() {
	 			/**
	 			 * call webservice to get the videos for CHANNEL 1
	 			 */  
	 			$.ajax({
					method: "GET",
	 				url: "z_videoslider?channel=s1"
	 			})
	 			.done(function( data ) {
	 				if (data) {
	 					$('#channel1').html(data);
	 				}
	 			})
	 			.fail(function(msg) {
	 				$('#channel1').html('Fail to get videos');
	 			});
	 			
	 			/**
	 			 * call webservice to get the videos for CHANNEL 2
	 			 */  
	 			$.ajax({
					method: "GET",
	 				url: "z_videoslider?channel=s2"
	 			})
	 			.done(function( data ) {
	 				if (data) {
	 					$('#channel2').html(data);
	 				}
	 			})
	 			.fail(function(msg) {
	 				$('#channel2').html('Fail to get videos');
	 			});

	 			/**
	 			 * call webservice to get the videos for CHANNEL 3
	 			 */  
	 			$.ajax({
					method: "GET",
	 				url: "z_videoslider?channel=s3"
	 			})
	 			.done(function( data ) {
	 				if (data) {
	 					$('#channel3').html(data);
	 				}
	 			})
	 			.fail(function(msg) {
	 				$('#channel3').html('Fail to get videos');
	 			});

	 			/**
	 			 * call webservice to get the videos for CHANNEL 4
	 			 */  
	 			$.ajax({
					method: "GET",
	 				url: "z_videoslider?channel=s4"
	 			})
	 			.done(function( data ) {
	 				if (data) {
	 					$('#channel4').html(data);
	 				}
	 			})
	 			.fail(function(msg) {
	 				$('#channel4').html('Fail to get videos');
	 			});
	 			
	 			
	 			// SHOW NUMBER AS INSCREASING
	 			$('.spincrement').spincrement({
	 				from: 0.0,
	 				decimalPlaces: 0,
	 				duration: 20000,
	 			});
	 			
	 		});
 		</script>