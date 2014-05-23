{**
 * authorSubmit.tpl
 *
 * Copyright (c) 2003-2011 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * With contributions from:
 * 	- 2014 Instituto Nacional de Investigacion y Tecnologia Agraria y Alimentaria
 *
 * editors Emails author submission account information
 *
 * $Id$
 *}
<!-- editors Emails -->
<tr valign="top">
	<td class="label">
		{fieldLabel name="authors-$authorIndex-gs" key="plugins.generic.editorsEmails.authorAccount"}
	</td>
	<td class="value">
		<input type="text" name="authors[{$authorIndex|escape}][gs]" id="authors-{$authorIndex|escape}-gs" value="{$author.gs|escape}" size="30" maxlength="90" class="textField" /><br/>
		<span class="instruct">{translate key="plugins.generic.editorsEmails.authorAccount.description"}</span>
	</td>
</tr>
<!-- /editors Emails -->

