{**
 * pageTagGa.tpl
 *
 * Copyright (c) 2003-2011 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Google Analytics ga.js page tag.
 *
 * $Id$
 *}
{assign var="bcc"  value=$bccontact}

<select  name="cc[]" id="cc"  class="selectMenu">
<option value="  ">Select Chief Editor</option>

{foreach from=$chiefEditorAddresses item=chiefEditor key=email}

{assign var="selected" value=false} 
  {foreach from=$cc  item=i key=val}
  "email=".{$email}
  "iemail=" {$i.email}
          {if $email == $i.email}
          {assign var="selected" value=true}
               {remove_elm arr=$cc key=$val name="cc"} 
              count in chief {$cc|@count}
           {/if}
          {break}
          {/foreach}
         { if $selected }
<option selected value="{if  $chiefEditor !=''}{$chiefEditor}&lt;{$email|escape}&gt;{else}{$email|escape}{/if}"> {$chiefEditor}&lt;{$email|escape}&gt;</option>
         {else}
<option  value="{if  $chiefEditor !=''}{$chiefEditor}&lt;{$email|escape}&gt;{else}{$email|escape}{/if}"> {$chiefEditor}&lt;{$email|escape}&gt;</option>
{/if}
{/foreach}
</select>
<br>
<select  name="cc[]" id="cc"  class="selectMenu">
<option value="  ">Select Section Editor</option>
{foreach from=$sectionEditorAddresses item=sectionEditor key=email}
{assign var="selected" value=false} 
  {foreach from=$cc  item=i key=val}
          {if $email == $i.email}
          {assign var="selected" value=true} 
 val section= {$val}
      {remove_elm arr=$cc key=$val name="cc"} 
    count in section {$cc|@count}
          {break}
          {/if}
          {/foreach}
         { if $selected }
          
 <option selected value="{if  $sectionEditor !=''}{$sectionEditor} &lt;{$email|escape}&gt;{else}{$email|escape}{/if}" > {$sectionEditor}&lt;{$email|escape}&gt;</option>
      {else}
 <option  value="{if  $sectionEditor !=''}{$sectionEditor} &lt;{$email|escape}&gt;{else}{$email|escape}{/if}" > {$sectionEditor}&lt;{$email|escape}&gt;</option>
{/if}
{/foreach}
</select>
{assign var=array_count value=$cc|@count}
          {if $array_count==0 }{assign var=blankCc value=false}
          {/if}
<br>
<!-- /EditorsEmails-->




