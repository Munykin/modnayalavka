<h3>{$page.title}</h3>

{if isset($result) and $result != ""}
	<div class="alert alert-{if $result==1}success{else}error{/if}">
		<button type="button" class="close" data-dismiss="alert">×</button>
		{if $result==1}
			Вы успешно зарегистрировались на сайте на сайте.
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
				<input type="text" id="login" name="login" placeholder="логин" value="{if isset($smarty.post.login)}{$smarty.post.login}{/if}">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="passw">Пароль</label>
			<div class="controls">
				<input type="password" id="passw" name="passw" placeholder="ваш пароль">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="passw_confirm">Повторите</label>
			<div class="controls">
				<input type="password" id="passw_confirm" name="passw_confirm" placeholder="повторите пароль">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="email">Email</label>
			<div class="controls">
				<input type="text" id="email" name="email" placeholder="Email" value="{if isset($smarty.post.email)}{$smarty.post.email}{/if}">
			</div>
		</div>
		<div class="control-group">
			<div class="controls">
				<img src="/antibot.png">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="antibot">Повторите код</label>
			<div class="controls">
				<!--<input type="text" id="captcha" name="captcha" value="">-->
				<input type="text" id="antibot" name="antibot" placeholder="код с картинки">
			</div>
		</div>
		<div class="control-group">
			<div class="controls">
				<button type="submit" class="btn">Зарегистрироваться</button>
				<input type="hidden" name="plugin_register" value="register">
			</div>
		</div>
	</form>
{/if}