{**
 * CUSTOM Origami C2C
 * If short description empty, use long instead
 *}
{extends file='parent:catalog/product/product-first.tpl'}

{block name='product_description_short'}
  <div id="product-description-short-{$product.id}" class="product-description-short mb-3 " {if $sttheme.google_rich_snippets} itemprop="description" {/if}>
      {if !empty($product.description_short)}
        {$product.description_short|truncate:500:'...' nofilter}
      {else}
        {$product.description|truncate:500:'...' nofilter}
      {/if}
  </div>
{/block}