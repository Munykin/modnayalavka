<h3>{$page.title}</h3>

{if isset($result) and $result != ""}
	<div class="alert alert-{if $result==1}success{else}error{/if}">
		<button type="button" class="close" data-dismiss="alert">×</button>
		{if $result==1}
			Новый пароль был выслан вам на email.
		{else}
			{$result}
		{/if}
	</div>
{/if}

{if !isset($smarty.session.id)}
	<form action="#" method="post" class="form-horizontal">
		<div class="control-group">
			<label class="control-label" for="lostpass">Логин</label>
			<div class="controls">
				<input type="text" id="lostpass" name="lostpass" placeholder="логин или email" value="{if isset($smarty.post.lostpass)}{$smarty.post.lostpass}{/if}">
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
				<input type="text" id="captcha" name="captcha" value="">
				<input type="text" id="antibot" name="antibot" placeholder="код с картинки">
			</div>
		</div>
		<div class="control-group">
			<div class="controls">
				<button type="submit" class="btn">Восстановить</button>
				<input type="hidden" name="plugin_register" value="lostpass">
			</div>
		</div>
	</form>
{/if}