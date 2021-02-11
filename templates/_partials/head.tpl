{**
 * SPECIFIC BIKED
 * Custom meta title + meta description
 *}
{extends file='parent:_partials/head.tpl'}

{assign var='controllerName' value=$smarty.get.controller}

{if $controllerName == 'category'}
  {block name='head_seo_title'}{$page.meta.title} - Pièces et Equipement vélo d'occasion | Biked{/block}
  {if empty($page.meta.description)}
    {block name='head_seo_description'}{$page.meta.title} ➤ Les plus grandes Marques de Casques VTT d'occasion sur Biked ✅ Jusqu'à -70% du Prix du Neuf ✅ Paiement et Livraison Facile ✅ Conseils d'expert{/block}
  {/if}
{elseif $controllerName == 'product'}
  {block name='head_seo_title'}{$page.meta.title} d'occasion | Biked{/block}
  {block name='head_seo_description'}{$page.meta.title} au Meilleur Prix sur Biked  ✅ Achat et Vente de matos Vélo entre Passionnés ✅ Paiement et Livraison Facile ✅ Conseils d'expert{/block}
{elseif $controllerName == 'seller'}
  {block name='head_seo_title'}Pièces et Equipements Vélo d'occasion dans le Garage de {$seller->name} | Biked{/block}
  {block name='head_seo_description'}Les Meilleurs Pièces & Equipements Vélo d'Occasion sont dans le Garage de {$seller->name} et des autres passionnés qui vendent sur Biked ➤ Paiement et Livraison Facile ✅{/block}
{elseif $controllerName == 'manufacturer'}
  {block name='head_seo_title'}Équipements et Pièces {$page.meta.title} d'Occasion | Biked{/block}
  {block name='head_seo_description'}Découvrez les Articles {$page.meta.title} d'Occasion sur Biked ✅ Jusqu'à -70% du Prix du Neuf ✅ Achat/Vente de matos Vélo entre Passionnés ✅ Paiement & Livraison Facile{/block}
{/if}
