<div class="row">
	<h3>{$page.title}</h3>
	<div class="row">
	{if !isset($cache_catalog_elements)}{$cache_catalog_elements = cacheAdd("catalog_elements")}{/if}
	{$cache_catalog_elements = cacheGet("catalog_elements")}
	{foreach $cache_catalog_elements as $v}
			{if $v.filter_material == $page.id}
				<div class="span3 element">
					<img src="{$template}/img{$v.image}" height="180"><br />
					<a href="/catalog/{$v.catalog}/{$v.id}.html">{$v.title|truncate:25:"..."}</a><br />
					<button class="btn btn-small addcart" type="button" id="{$v.id}"><i class="icon-shopping-cart"></i>{$v.cost} рублей</button>
				</div>
			{/if}
	{/foreach}
	</div>
</div>