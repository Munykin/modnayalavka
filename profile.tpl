<h3>{$page.title}</h3>

{if isset($smarty.session.id)}
	<form action="#" method="post" class="form-horizontal">
		<div class="control-group">
			<label class="control-label" for="fio">ФИО</label>
			<div class="controls">
				<input type="text" id="fio" name="fio" placeholder="ваше фио" value="{if !empty($smarty.session.fio)}{$smarty.session.fio}{/if}">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="telf">Телефон</label>
			<div class="controls">
				<input type="text" id="telf" name="telf" placeholder="мобильный телефон" value="{if !empty($smarty.session.telf)}{$smarty.session.telf}{/if}">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="city">Город</label>
			<div class="controls">
				<input type="text" id="city" name="city" placeholder="город проживания" value="{if !empty($smarty.session.city)}{$smarty.session.city}{/if}">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="adress">Адрес</label>
			<div class="controls">
				<textarea rows="3" id="adress" name="adress" placeholder="улица, дом, квартира">{if !empty($smarty.session.adress)}{$smarty.session.adress}{/if}</textarea>
			</div>
		</div>
		<div class="control-group">
			<div class="controls">
				<button type="submit" class="btn">Изменить данные</button>
				<input type="hidden" name="plugin_register" value="lk">
			</div>
		</div>
	</form>
{/if}