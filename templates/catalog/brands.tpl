{**
 * CUSTOM Origami
 * OPTIONNAL
 *
 * Change the layout of the brands page to have a grid display
 * and an index
 *}

{extends file='parent:catalog/brands.tpl'}

{* Remove left column *}
{block name="left_column"}{/block}

{block name='content'}
  <section id="main">

    {block name='brand_header'}
        <h1 class="page_heading mb-3">{l s='Brands' d='Shop.Theme.Catalog'}</h1>

        <div class="index-brands">
            {assign var="letter" value=""}
            {foreach from=$brands item=brand}
                {assign var="brand_letter" value=strtoupper($brand.name[0])}
                {if $brand_letter < 'A'}
                    {assign var="brand_letter" value='#'}
                {/if}
                {if !$letter || $letter < $brand_letter}
                    {assign var="letter" value=$brand_letter}
                    <a href="#{$letter}" class="index-brand">{$letter}</a>
                {/if}
            {/foreach}
        </div>
    {/block}

    {block name='brand_miniature'}
      <ul class="base_list_line large_list row">
        {assign var="letter" value=""}
        {foreach from=$brands item=brand}
            {assign var="brand_letter" value=strtoupper($brand.name[0])}
            {if $brand_letter < 'A'}
                {assign var="brand_letter" value='#'}
            {/if}
            {if !$letter || $letter < $brand_letter}
                {assign var="letter" value=$brand_letter}
                <li class="col-12 brand-title-letter" id="{$letter}"><h2>{$letter}</h2></li>
            {/if}
          
          {include file='catalog/_partials/miniatures/brand.tpl' brand=$brand}
        {/foreach}
      </ul>
    {/block}

  </section>

{/block}
