{**
 * CUSTOM Origami C2C
 * OPTIONNAL
 *
 * Add my addresses buttons on "my informations" page
 *}
{extends 'parent:customer/identity.tpl'}

{block name='page_content'}
  {$smarty.block.parent}

  <div class="row mt-4">
    <div class="col-lg-6">
      {if $customer.addresses|count}
          <a class="btn btn-secondary address-btn addresses-link" href="{$urls.pages.addresses}" title="{l s='Addresses' d='Shop.Theme.Customeraccount'}">
            <i class="fto-location-2 mar_r4 fs_lg"></i>{l s='Addresses' d='Shop.Theme.Customeraccount'}
          </a>
      {else}
          <a class="btn btn-secondary address-btn address-link" href="{$urls.pages.address}" title="{l s='Add first address' d='Shop.Theme.Customeraccount'}">
            <i class="fto-location-2 mar_r4 fs_lg"></i>{l s='Add first address' d='Shop.Theme.Customeraccount'}
          </a>
      {/if}
    </div>
  </div>


{/block}