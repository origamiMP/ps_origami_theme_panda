{**
 * CUSTOM Origami C2C
 * OPTIONNAL
 *
 * My account appearance
 *}
{extends file='customer/page.tpl'}

{block name='my_account_back'}{/block}
{block name='page_title'}
    {$customer.firstname}, {l s='Your account' d='Shop.Theme.Customeraccount'}
{/block}


{block name='page_content'}
  
  {hook h="displayMyAccountDashboard"}
  
  <div class="myacount_dashbord_list">
      {include file='customer/_partials/my-account-items.tpl'}
  </div>

    <div class="myaccount-bottom">
        <a href="{$logout_url}" class="btn btn-secondary myaccount-logout-btn-bottom">
            <i class="fto-logout-1 mar_r4 fs_lg"></i> <b>{l s='Sign out' d='Shop.Theme.Actions'}</b>
        </a>
    </div>
{/block}


{block name='page_footer'}{/block}
