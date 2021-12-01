{**
 * ORIGAMI C2C
 * Core Origami Seller Account
 *
 * Use this template with origami_seller_account module
 *}
{extends file='parent:customer/page.tpl'}

{block name='breadcrumb'}{/block}

{block name='page_title'}
        <div class="my-account-title origami-my-account-title">
            {block name='my_account_back'}
                <a href="{$urls.pages.my_account}" title="{l s='Back to your account' d='Shop.Theme.Customeraccount'}" class="btn btn-secondary origami-btn-title-back">
                  <i class="fto-left"></i>
                </a>
            {/block}

            <span class="text">{$smarty.block.child}</span>
        </div>
{/block}

{block name='page_content_container'}
  <section id="content" class="page-content">
	{block name='page_content_top'}
    	{block name='customer_notifications'}
		    {include file='_partials/notifications.tpl'}
		 {/block}
    {/block}
    {block name='page_content'}
      <!-- Page content -->
    {/block}
    {block name='my_account_links'}
        {include file='customer/_partials/my-account-links.tpl'}
    {/block}
  </section>
{/block}

{block name='page_footer'}

{/block}
