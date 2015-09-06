/*globals  $: true, getUserMedia: true, alert:true, ccv:true */

/*! getUserMedia demo - v1.0
* for use with https://github.com/addyosmani/getUserMedia.js
* Copyright (c) 2012 addyosmani; Licensed MIT */
(function () {
	'use strict';

	var App = {
		init: function () {
			this.self = this;
			this.pos = 0;
			this.cam = null;
			this.filter_on = false;
			this.filter_id = 0;
			this.canvas = document.getElementById("canvas");
			this.ctx = this.canvas.getContext("2d");
			this.img = new Image();
			this.ctx.clearRect(0, 0, this.options.width, this.options.height);
			this.image = this.ctx.getImageData(0, 0, this.options.width, this.options.height);
				
			// Initialize getUserMedia with options
			getUserMedia(this.options, this.success, this.deviceError);

			// Initialize webcam options for fallback
			window.webcam = this.options;
			
			var date = new Date();
			$("#date").html(date.getFullYear()+"/"+(date.getMonth()+1)+"/"+date.getDate());
		},

		// options contains the configuration information for the shim
		// it allows us to specify the width and height of the video
		// output we're working with, the location of the fallback swf,
		// events that are triggered onCapture and onSave (for the fallback)
		// and so on.
		options: {
			"audio": false, //OTHERWISE FF nightlxy throws an NOT IMPLEMENTED error
			"video": true,
			el: "webcam",

			extern: null,
			append: true,

			// noFallback:true, use if you don't require a fallback

			width: 400, 
			height: 300, 

			mode: "callback",
			// callback | save | stream
			swffile: "../dist/fallback/jscam_canvas_only.swf",
			quality: 85,
			context: "",

			debug: function () {},
			onCapture: function () {},
			onTick: function () {},
			onSave: function () {},
			onLoad: function () {}
		},

		success: function (stream) {
			if (App.options.context === 'webrtc') {
				var video = App.options.videoEl;
				if ((typeof MediaStream !== "undefined" && MediaStream !== null) && stream instanceof MediaStream) {
					if (video.mozSrcObject !== undefined)	//FF18a
						video.mozSrcObject = stream;
					else	video.src = stream;  //FF16a, 17a
					setInterval(App.scanner, 300);
					return video.play();
				} else {
					var vendorURL = window.URL || window.webkitURL;
					video.src = vendorURL ? vendorURL.createObjectURL(stream) : stream;
				}
				video.onerror = function () {
					stream.stop();
					streamError();
				};
			} else{
				// flash context
			}
		},

		deviceError: function (error) {
			console.error('An error occurred: [CODE ' + error.code + ']');
		},

		changeFilter: function () {
			if (this.filter_on) {
				this.filter_id = (this.filter_id + 1) & 7;
			}
		},

		scanner: function () { 
			// from our HTML5 <video> element.
			if (App.options.context != 'webrtc') return;
			if (!App.video) App.video = document.getElementsByTagName('video')[0];
			if ((qrcode.width <= 0) || (qrcode.height <= 0))
			{	qrcode.width = App.canvas.width = (App.video.videoWidth - 100);
				qrcode.height = App.canvas.height = (App.video.videoHeight - 100);
			}
			App.canvas.getContext('2d').drawImage(App.video, 0, 0);
			qrcode.imagedata = App.ctx.getImageData(50, 50, App.canvas.width, App.canvas.height);
			var result = qrcode.process(App.ctx);
			if (!result || App.result == result) return;
			App.result = result;
			document.getElementById('result').innerHTML=result;
		},
	};

	App.init();

})();


