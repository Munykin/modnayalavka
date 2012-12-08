<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>{$config.title}</title>
	<link href="{$template}/css/bootstrap.min.css" rel="stylesheet">
	<link href="{$template}/css/style.css" rel="stylesheet">
	<script src="{$template}/js/jquery.js"></script>
	<script src="{$template}/js/bootstrap.js"></script>
</head>
<body>
	<script type="text/javascript">
	$(document).ready(function(){
		$(".carousel").carousel();
		$(".addcart").click(function(){
			var id = $(this).attr("id");
			$.post("/cart/",{ plugin:"cart", go:"add", id:id },function(data){
				if(data == 1) {
					$(".addcart[id="+id+"]").text("Добавлено в корзину");
					var cart = parseInt($("#cart").text())+1;
					$("#cart").text(cart);
				} else {
					alert('При добавлении возникла ошибка. Обратитесь к администратору.');
				}				
			});
			return false;
		});
	});
	</script>
	<div class="container main">
		<div class="row logo">
			<div class="span9"><a href="/"><img src="{$template}/img/logo.png" alt="" /></a></div>
			<div class="span3">
				{if isset($smarty.session.id)}{$cart = "cart"|docount:"user=`$smarty.session.id` and old=0"}{else}{$cart = "0"}{/if}
				<a href="/{$cache_pages[4].engname}/">{$cache_pages[4].title} (<span id="cart">{$cart}</span>)</a><br />
			{if isset($smarty.session.id)}
				<a href="/{$cache_pages[8].engname}/">{$cache_pages[8].title}</a><br />
				<a href="/?exit">Выход</a><br />
			{else}
				<a href="/{$cache_pages[5].engname}/">{$cache_pages[5].title}</a><br />
				<a href="/{$cache_pages[6].engname}/">{$cache_pages[6].title}</a><br />
				<a href="/{$cache_pages[7].engname}/">{$cache_pages[7].title}</a><br />
			{/if}
			</div>
		</div>
		<div class="row">
			<div class="span12">
				<div class="navbar">
				  <div class="navbar-inner">
					<div class="container">
					<ul class="nav topmenu">
						<li><a href="/">{$cache_pages[1].title}</a></li>
						<li><a href="/{$cache_pages[12].engname}/">{$cache_pages[12].title}</a></li>
						<li><a href="/{$cache_pages[13].engname}/">{$cache_pages[13].title}</a></li>
						<li><a href="/{$cache_pages[14].engname}/">{$cache_pages[14].title}</a></li>
						<li><a href="/{$cache_pages[27].engname}/">{$cache_pages[27].title}</a></li>
						<li><a href="/{$cache_pages[28].engname}/">{$cache_pages[28].title}</a></li>
						<li><a href="/{$cache_pages[29].engname}/">{$cache_pages[29].title}</a></li>
						<li><a href="/{$cache_pages[30].engname}/">{$cache_pages[30].title}</a></li>
						<li><a href="/{$cache_pages[31].engname}/">{$cache_pages[31].title}</a></li>
					</ul>
					</div>
				  </div>
				</div>
			</div>
		</div>
		
		{if !isset($nodes[0]) or $page.id == 1}
		<div id="myCarousel" class="carousel slide">
			<div class="carousel-inner">
				<div class="active item"><img src="{$template}/img/1.jpg" alt="" /></div>
				<div class="item"><img src="{$template}/img/2.jpg" alt="" /></div>
				<div class="item"><img src="{$template}/img/3.jpg" alt="" /></div>
			</div>
			<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
			<a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
		</div>
		{/if}
		
		<div class="row">
			<div class="span3">
				<ul class="nav nav-list">
					<li class="nav-header">Каталог мебели</li>
					<li><a href="/{$cache_pages[15].engname}/">{$cache_pages[15].title}</a></li>
					<li><a href="/{$cache_pages[16].engname}/">{$cache_pages[16].title}</a></li>
					<li><a href="/{$cache_pages[17].engname}/">{$cache_pages[17].title}</a></li>
					<li><a href="/{$cache_pages[18].engname}/">{$cache_pages[18].title}</a></li>
					<li><a href="/{$cache_pages[19].engname}/">{$cache_pages[19].title}</a></li>
					<li><a href="/{$cache_pages[20].engname}/">{$cache_pages[20].title}</a></li>
					<li><a href="/{$cache_pages[21].engname}/">{$cache_pages[21].title}</a></li>
					<li><a href="/{$cache_pages[22].engname}/">{$cache_pages[22].title}</a></li>
					<li><a href="/{$cache_pages[23].engname}/">{$cache_pages[23].title}</a></li>
					<li><a href="/{$cache_pages[24].engname}/">{$cache_pages[24].title}</a></li>
					<li><a href="/{$cache_pages[25].engname}/">{$cache_pages[25].title}</a></li>
					<li><a href="/{$cache_pages[26].engname}/">{$cache_pages[26].title}</a></li>
				</ul>
			</div>
			<div class="span9">