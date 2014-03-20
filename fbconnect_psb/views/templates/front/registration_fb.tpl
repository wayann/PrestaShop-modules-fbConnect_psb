{*
* 2013 Ha!*!*y
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* It is available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
*
* DISCLAIMER
* This code is provided as is without any warranty.
* No promise of being safe or secure
*
*  @author      Ha!*!*y <ha99ys@gmail.com>
*  @copyright   2013 Ha!*!*y
*  @license     http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*}

{include file="$tpl_dir./errors.tpl"}
<script>
{literal}
function fb_validate(form) {
    
     errors = {};
     if (form.password.length < 8) {
        errors.password = "Password length must be greater than 8 characters.";
     }
     if (form.password_confirmation.length !== form.password.length) {
        errors.password_confirmation = "Password confirmation must be set.";
     }
     
     return errors;
  }
{/literal}
</script>
<div id="fb-root"></div><script src="{$protocol_content}connect.facebook.net/en_US/all.js#appId={$fb_connect_appid}&xfbml=1"></script>
<div class="clear">
{literal}
<fb:registration 
	fields='[
		{"name":"name"},
		{"name":"first_name"},
		{"name":"last_name"},
		{"name":"email"},
		{"name":"password"},
		{"name":"birthday"},
		{"name":"gender"}]'
		redirect-uri="{/literal}{$redirect_uri}{literal}" width="530" onvalidate='fb_validate()'></fb:registration>
{/literal}
</div>

