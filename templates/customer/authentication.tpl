{**
 * CUSTOM Origami C2C
 * OPTIONNAL
 *
 * Display message on login page when user try to access a page where connexion is needed
 *}

{extends file='parent:customer/authentication.tpl'}

{if !empty($smarty.get.back) && $smarty.get.back != 'my-account'}
    {block name='notifications'}
        {$smarty.block.parent}
        <div class="container">
            <div class="alert alert-info text-center">
                <b>Vous devez être connecté pour accéder à cette page</b>
            </div>
        </div>
    {/block}
{/if}