{**
 * CUSTOM BIKED
 * Hide short description
 *}
{extends file='parent:catalog/product/product-first.tpl'}

{block name='page_header' prepend}
    <div class="product-header-top">{hook h='origamiDisplayProductCategory'}</div>
{/block}

{block name='product_description_short'}
{/block}