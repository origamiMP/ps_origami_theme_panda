{**
 * CUSTOM Origami C2C
 * OPTIONNAL
 *
 * Delete useless item in customer account
 *}

  {* <div class="list-group-item">
  <a class=" landing-link" href="{$urls.pages.my_account}" title="{l s='Dashboard' d='Shop.Theme.Panda'}">
	  <i class="fto-cog mar_r4 fs_lg"></i>{l s='Dashboard' d='Shop.Theme.Panda'}
  </a>
  </div> *}

  <div class="list-group-item">
	  <a class=" identity-link" href="{$urls.pages.identity}" title="{l s='Information' d='Shop.Theme.Customeraccount'}">
		  <i class="fto-vcard-1 mar_r4 fs_lg"></i>{l s='Information' d='Shop.Theme.Customeraccount'}
	  </a>
  </div>

  {* if $customer.addresses|count}
	<div class="list-group-item">
	<a class=" addresses-link" href="{$urls.pages.addresses}" title="{l s='Addresses' d='Shop.Theme.Customeraccount'}">
		<i class="fto-location-2 mar_r4 fs_lg"></i>{l s='Addresses' d='Shop.Theme.Customeraccount'}
	</a>
	</div>
  {else}
	<div class="list-group-item">
	<a class=" address-link" href="{$urls.pages.address}" title="{l s='Add first address' d='Shop.Theme.Customeraccount'}">
		<i class="fto-location-2 mar_r4 fs_lg"></i>{l s='Add first address' d='Shop.Theme.Customeraccount'}
	</a>
	</div>
  {/if *}

  {if !$configuration.is_catalog}
	<div class="list-group-item">
	<a class=" history-link" href="{$link->getModuleLink('origami_seller_account', 'origami_admin', ["p" => "orders", "environment" => 'customer'], true)}" title="{l s='Order history and details' d='Shop.Theme.Customeraccount'}">
		<i class="fto-basket-3 mar_r4 fs_lg"></i>{l s='Order history and details' d='Shop.Theme.Customeraccount'}
	</a>
	</div>
  {/if}

  {* if !$configuration.is_catalog}
	<div class="list-group-item">
	<a class=" order-slips-link" href="{$urls.pages.order_slip}" title="{l s='Credit slips' d='Shop.Theme.Customeraccount'}">
		<i class="fto-dot-circled mar_r4 fs_lg"></i>{l s='Credit slips' d='Shop.Theme.Customeraccount'}
	</a>
	</div>
  {/if *}

  {* if $configuration.voucher_enabled && !$configuration.is_catalog}
	<div class="list-group-item">
	<a class=" discounts-link" href="{$urls.pages.discount}" title="{l s='Vouchers' d='Shop.Theme.Customeraccount'}">
		<i class="fto-tag-2 mar_r4 fs_lg"></i>{l s='Vouchers' d='Shop.Theme.Customeraccount'}
	</a>
	</div>
  {/if *}

  {if $configuration.return_enabled && !$configuration.is_catalog}
	<div class="list-group-item">
		<a class=" returns-link" href="{$urls.pages.order_follow}" title="{l s='Merchandise returns' d='Shop.Theme.Customeraccount'}">
			<i class="fto-paper-plane mar_r4 fs_lg"></i>{l s='Merchandise returns' d='Shop.Theme.Customeraccount'}
		</a>
	</div>
  {/if}

  {block name='display_customer_account'}
	{hook h='displayCustomeraccount'}
  {/block}