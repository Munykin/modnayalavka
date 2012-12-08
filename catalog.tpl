<script type="text/javascript">
$(document).ready(function(){
	$("a.addcart").click(function(){
		var id = $(this).attr("id");
		$.post("/cart/",{ plugin:"cart", go:"add", id:id },function(data){
			$("a.addcart").text("Добавлено в корзину");
		});
		return false;
	});
});
</script>

<h3>
	{$page.title}
	{if isset($content.title)}&#8594; <a href="/{$page.engname}/{$content.id}/">{$content.title}</a>{/if}
	{if isset($content.elements.title)}&#8594; {$content.elements.title}{/if}
</h3>

{*<!-- Тут список каталогов первого уровня -->*}
{if !isset($nodes[1])}
	<ul>
	{foreach $content as $v}
		{if $v.menu == 1 and $v.parent == 0}
			<li><a href="/{$page.engname}/{$v.id}/">{$v.title}</a></li>
		{/if}
	{/foreach}
	</ul>
{/if}

{*
<!-- Тут список каталогов первого уровня -->
*}
{if isset($content.id) and isset($content.catalog_elements) and !isset($content.elements.id)}
	<ul>
	{foreach $content.catalog_elements as $v}
		<li><a href="/{$page.engname}/{$content.id}/{$v.id}.html">{$v.title}</a></li>
	{/foreach}
	</ul>
{/if}

{*
<!-- Тут Просмотр конкретного элемента -->
*}
{if isset($content.id) and isset($content.catalog_elements) and isset($content.elements.id)}
	{$image = "{$smarty.const.ROOT_DIR}/uploads{$content.elements.image}"}
	{if $image|file_exists}
		<img src="/uploads{$content.elements.image}" style="float: left; margin: 0 15px 15px 0; max-width: 150px;"></a>
	{/if}
	Наименование товара: {$content.elements.title} <br />
	Артикул: {$content.elements.articul} <br />
	Размеры: {$content.elements.size} <br />
	Материал: {$content.elements.material} <br />
	Стоимость: {$content.elements.cost} рублей <br />
	<a href="#" class="addcart" id="{$content.elements.id}">Положить в корзину</a>
	<br />
	<br style="clear:both;">
	{$content.elements.text}
{/if}