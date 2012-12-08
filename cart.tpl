<script type="text/javascript">
$(document).ready(function(){
	//Подсчет итоговой суммы
	function allcount() {
		$.post("/cart/",{ plugin:"cart", go:"allcost", id:"1" },function(data){
			$('span.allcost').text(data);
		});
	}
	allcount();
	// Увеличение на единицу
	$(".up").click(function(){
		var rel = $(this).attr("rel");
		var count = parseInt($(".count[rel="+rel+"]").text());
		$.post("/cart/",{ plugin:"cart", go:"add", id:rel },function(data){
			if(data == 1) {
				$(".count[rel="+rel+"]").text(count+1);
				allcount();
			}
		});
		return false;
	});
	// Уменьшение на единицу
	$(".dn").click(function(){
		var rel = $(this).attr("rel");
		var count = parseInt($(".count[rel="+rel+"]").text());
		if(count > 1) {
			$.post("/cart/",{ plugin:"cart", go:"unadd", id:rel },function(data){
				if(data == 1) {
					$(".count[rel="+rel+"]").text(count-1);
					allcount();
				}
			});
		}
		return false;
	});
	// Удаление элемента
	$(".delete").click(function(){
		var rel = $(this).attr("rel");
		$.post("/cart/",{ plugin:"cart", go:"delete", id:rel },function(data){
			if(data == 1) {
				$("tr[rel="+rel+"]").remove();
				allcount();
			}
		});
		return false;
	});
});
</script>

<h3>{$page.title}</h3>

<table class="table table-striped">
	<tr>
		<th>Наименование</th>
		<th style="width: 100px;">Кол-во</th>
		<th style="width: 150px;">Стоимость</th>
		<th style="width: 25px;"></th>
	</tr>
{if count($content) > 0}
	{foreach $content as $v}
		<tr rel="{$v.id_element}">
			<td>
				<a href="/catalog/{$v.catalog}/{$v.id_element}.html" rel="{$v.id_element}">{$v.title}</a>
			</td>
			<td>
				<img src="/system/template/img/up.png" class="up" rel="{$v.id_element}">
				<span class="count" rel="{$v.id_element}">{$v.count}</span>
				<img src="/system/template/img/down.png" class="dn" rel="{$v.id_element}">
			</td>
			<td>
				<span class="cost" rel="{$v.id_element}">{$v.cost}</span> руб.
			</td>
			<td>
				<img src="/system/template/img/delete.png" class="delete" rel="{$v.id_element}">
			</td>
		</tr>
	{/foreach}
		<tr>
			<th></th>
			<th>Итого:</th>
			<th><span class="allcost">0</span> руб.</th>
			<th></th>
		</tr>
	</table>
{else}
	<tr>
		<td colspan="4">нет товаров</td>
	</tr>
</table>
{/if}