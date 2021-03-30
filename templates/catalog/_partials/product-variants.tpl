{**
 * CORE ORIGAMI THEME OVERRIDE
 * REQUIRED
 * base theme : panda 2.6.1
 *
 * add class with attribute group id on div product-variant-item
 * So we can hide the seller block
 *}

<div class="product-variants">{*important refresh*}
    {foreach from=$groups key=id_attribute_group item=group}
        {if !empty($group.attributes)}
            {assign var=selected_keys value=[]}
            {if is_array($product.attributes) && count($product.attributes)}
                {foreach $product.attributes as $av}
                    {$selected_keys[]=$av['id_attribute']}
                {/foreach}
            {/if}
            {* start origami modification *}
            <div class="clearfix product-variants-item product-variants-item-group_{$id_attribute_group}">
            {* end origami modification *}
                <span class="control-label">{$group.name}</span>
                {if $group.group_type == 'select'}
                    <select
                            class="form-control form-control-select"
                            id="group_{$id_attribute_group}"
                            data-product-attribute="{$id_attribute_group}"
                            name="group[{$id_attribute_group}]">
                        {foreach from=$group.attributes key=id_attribute item=group_attribute}
                            {assign var=is_available value=1}
                            {foreach $combinations as $bv}
                                {if count(array_intersect($selected_keys, $bv['attributes'])) > 0 && in_array($id_attribute, $bv['attributes']) && $bv['quantity']<=0}
                                    {$is_available=0}
                                {/if}
                            {/foreach}
                            {if !$is_available}
                                {continue}
                            {/if}
                            <option value="{$id_attribute}" title="{$group_attribute.name}"{if $group_attribute.selected} selected="selected"{/if}>{$group_attribute.name}</option>
                        {/foreach}
                    </select>
                {elseif $group.group_type == 'color'}
                    <ul id="group_{$id_attribute_group}" class="clearfix li_fl">
                        {foreach from=$group.attributes key=id_attribute item=group_attribute}
                            {assign var=is_available value=1}
                            {foreach $combinations as $bv}
                                {if count(array_intersect($selected_keys, $bv['attributes'])) > 0 && in_array($id_attribute, $bv['attributes']) && $bv['quantity']<=0}
                                    {$is_available=0}
                                {/if}
                            {/foreach}
                            <li class="input-container {if !$is_available} st_unavailable_combination {/if}" title="{$group_attribute.name}">
                                <input class="input-color" type="radio" data-product-attribute="{$id_attribute_group}" name="group[{$id_attribute_group}]" value="{$id_attribute}" title="{$group_attribute.name}" {if $group_attribute.selected} checked="checked"{/if}/>
                                {if isset($st_attr_img_as_texture) && isset($st_attr_img_as_texture[$id_attribute_group][$id_attribute])}{$group_attribute.texture=$st_attr_img_as_texture[$id_attribute_group][$id_attribute]}{$group_attribute.html_color_code=''}{/if}
                                <span class="color {if $group_attribute.texture}texture{/if}"
                {if $group_attribute.html_color_code && !$group_attribute.texture} style="background-color: {$group_attribute.html_color_code}" {/if}
                                        {if $group_attribute.texture} style="background-image: url({$group_attribute.texture})" {/if}
              ><span class="sr-only">{$group_attribute.name}</span></span>
                                <span class="st-input-loading"><i class="fto-spin5 animate-spin"></i></span>
                            </li>
                        {/foreach}
                    </ul>
                {elseif $group.group_type == 'radio'}
                    <ul id="group_{$id_attribute_group}" class="clearfix li_fl">
                        {foreach from=$group.attributes key=id_attribute item=group_attribute}
                            {assign var=is_available value=1}
                            {foreach $combinations as $bv}
                                {if count(array_intersect($selected_keys, $bv['attributes'])) > 0 && in_array($id_attribute, $bv['attributes']) && $bv['quantity']<=0}
                                    {$is_available=0}
                                {/if}
                            {/foreach}
                            <li class="input-container {if !$is_available} st_unavailable_combination {/if}" title="{$group_attribute.name}">
                                <input class="input-radio" type="radio" data-product-attribute="{$id_attribute_group}" name="group[{$id_attribute_group}]" value="{$id_attribute}" title="{$group_attribute.name}" {if $group_attribute.selected} checked="checked"{/if}/>
                                <span class="radio-label">{$group_attribute.name}</span>
                                <span class="st-input-loading"><i class="fto-spin5 animate-spin"></i></span>
                            </li>
                        {/foreach}
                    </ul>
                {/if}
            </div>
        {/if}
    {/foreach}
    {hook h='displayUnderProductVariants'}
</div>
