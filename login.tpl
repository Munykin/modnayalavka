<h3>{$page.title}</h3>

{if isset($result) and $result != ""}
	<div class="alert alert-{if $result==1}success{else}error{/if}">
		<button type="button" class="close" data-dismiss="alert">×</button>
		{if $result==1}
			Вы успешно авторизовались на сайте.
		{else}
			{$result}
		{/if}
	</div>
{/if}

{if !isset($smarty.session.id)}
	<form action="#" method="post" class="form-horizontal">
		<div class="control-group">
			<label class="control-label" for="login">Логин</label>
			<div class="controls">
				<input type="text" id="login" name="login" placeholder="логин">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="passw">Пароль</label>
			<div class="controls">
				<input type="password" id="passw" name="passw" placeholder="пароль">
			</div>
		</div>
		<div class="control-group">
			<div class="controls">
				<label class="checkbox">
					<input type="checkbox"> Запомнить меня
				</label>
				<button type="submit" class="btn">Войти на сайт</button>
				<input type="hidden" name="plugin_register" value="login">
			</div>
		</div>
	</form>
{/if}