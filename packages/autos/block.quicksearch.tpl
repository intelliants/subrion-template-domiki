{if isset($car_blocks_data.search)}
	<form action="{$smarty.const.IA_URL}search/cars/" method="get" id="as_form" class="b-search">
		<div class="container">
			<div class="b-search__controls">
				<div class="b-search__controls__item b-search__controls__item--selects">
					<div class="b-selects">
						<div class="b-selects__item">
							<select name="auto_type" id="as_condition">
								<option value="">{lang key='field_auto_type'}</option>
								<option value="new"{if isset($smarty.get.auto_type) && 'new' == $smarty.get.auto_type} selected{/if}>{lang key='domiki_new'}</option>
								<option value="used"{if isset($smarty.get.auto_type) && 'used' == $smarty.get.auto_type} selected{/if}>{lang key='domiki_used'}</option>
							</select>
						</div>
						<div class="b-selects__item">
							<select class="js-car-make">
								<option value="0">{lang key='make'}</option>
								{foreach $car_blocks_data.search.categories as $item}
									<option value="{$item.id}"{if isset($smarty.get.fmid) && $smarty.get.fmid == $item.id} selected{/if}>{$item.name}</option>
								{/foreach}
							</select>
						</div>
						<div class="b-selects__item">
							<div class="b-selects__item__loader"><div class="loader"></div></div>
							<select class="js-car-model" disabled>
								<option value="0">{lang key='model'}</option>
							</select>
						</div>
					</div>
				</div>
				<div class="b-search__controls__item b-search__controls__item--price">
					<label for="">{lang key='price'}</label>
					<input type="text" id="used-qs-car-price" 
						data-type="double" 
						data-min="0" 
						data-max="{if $max_auto_price}{$max_auto_price}{else}150000{/if}" 
						data-from="{if isset($smarty.get.price_from)}{$smarty.get.price_from}{else}5000{/if}" 
						data-to="{if isset($smarty.get.price_to)}{$smarty.get.price_to}{elseif $max_auto_price}{$max_auto_price}{else}40000{/if}"
						data-step="1000">

					<input type="hidden" id="used-price_from" name="price_from" value="{if isset($smarty.get.price_from)}{$smarty.get.price_from}{else}0{/if}">
					<input type="hidden" id="used-price_to" name="price_to" value="{if isset($smarty.get.price_to)}{$smarty.get.price_to}{elseif $max_auto_price}{$max_auto_price}{else}150000{/if}">
				</div>
				<div class="b-search__controls__item b-search__controls__item--actions">
					<button type="submit" class="btn btn-primary btn-block">{lang key='search'}</button>
				</div>
			</div>
		</div>

		<input type="hidden" name="fmid" value="{if isset($smarty.get.fmid)}{$smarty.get.fmid|intval}{else}0{/if}">
		<input type="hidden" name="mid" value="{if isset($smarty.get.mid)}{$smarty.get.mid|intval}{else}0{/if}">
	</form>
	{ia_add_media files='js:_IA_TPL_ion.rangeSlider.min'}
{/if}