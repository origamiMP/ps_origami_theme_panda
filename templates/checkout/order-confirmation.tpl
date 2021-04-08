{**
 * CORE ORIGAMI
 * REQUIRED
 *
 * This template remove the order detail on the order confirmation page.
 * This detail was removed because of the incompatibility with multi orders
 *
 * TODO improvement: display the order details with multi sellers
 *}

{extends file='page.tpl'}

{block name='page_content_container' prepend}
    <section id="content-hook_order_confirmation" class="card card_trans mb-5 text-center">
      <div class="card-block">
        <div class="row mb-4">
          <div class="col-md-12">
            {block name='order_confirmation_header'}
                <h5 class="page_heading alert alert-success">
                  <i class="fto-ok-1 done mar_r4"></i>{l s='Your order is confirmed' d='Shop.Theme.Checkout'}
                </h5>
            {/block}
            <div>
              {l s='An email has been sent to your mail address %email%.' d='Shop.Theme.Checkout' sprintf=['%email%' => $customer.email]}
            </div>
            {block name='hook_order_confirmation'}
              {$HOOK_ORDER_CONFIRMATION nofilter}
            {/block}
          </div>
        </div>

        <div class="row">
          <div class="col-md-12">
            <a class="btn btn-default mb-3" href="{$link->getPageLink('my-account', true)|escape:'html'}">{l s='Go to your account' d='Shop.Theme.Checkout'}</a> &nbsp;
            <a class="btn btn-default mb-3" href="{$link->getPageLink('index', true)|escape:'html'}">{l s='Continue shopping' d='Shop.Theme.Checkout'}</a>
          </div>
        </div>
      </div>
    </section>
{/block}

{block name='page_content_container'}

  {block name='hook_payment_return'}
  {if ! empty($HOOK_PAYMENT_RETURN)}
  <section id="content-hook_payment_return" class="card card_trans definition-list mb-3">
    <div class="card-block">
      <div class="row">
        <div class="col-md-12">
          {$HOOK_PAYMENT_RETURN nofilter}
        </div>
      </div>
    </div>
  </section>
  {/if}
  {/block}
  {block name='customer_registration_form'}
  {if $customer.is_guest}
    <div id="registration-form" class="card card_trans mb-3">
      <div class="card-block">
        <h4 class="h4">{l s='Save time on your next order, sign up now' d='Shop.Theme.Checkout'}</h4>
        {render file='customer/_partials/customer-form.tpl' ui=$register_form}
      </div>
    </div>
  {/if}
  {/block}

  {block name='hook_order_confirmation_1'}
    {hook h='displayOrderConfirmation1'}
  {/block}

  {block name='hook_order_confirmation_2'}
    <section id="content-hook-order-confirmation-footer mb-3">
      {hook h='displayOrderConfirmation2'}
    </section>
  {/block}
{/block}
