{if isset($car_blocks_data.featured)}
	<div class="ia-items featured-cars">
		{foreach $car_blocks_data.featured as $item}
			<div class="ia-item">
				{if $item.auto_pictures}
					<a href="{$item.link}" class="ia-item__image">{printImage imgfile=$item.auto_pictures[0]['path'] title=$item.model width=80}</a>
				{/if}

				<div class="ia-item__content">
					<h4 class="ia-item__title">
						<a href="{$item.link}">{$item.model}, {$item.release_year}</a>
					</h4>
					<p><span class="label label-info">{$item.price}</span></p>
					<p class="text-fade-50">
						<a href="{$packages.autos.url}body-style/{$item.body_type}/">{lang key="field_body_type_{$item.body_type}"}</a>, 
						{lang key="field_exterior_color_{$item.exterior_color}"}, 
						{lang key="field_transmission_{$item.transmission}"}, 
						{if $item.engine}
							{lang key='field_engine'}: 
							{lang key="field_engine_{$item.engine}"}, 
							{if $item.engine_type}{lang key="field_engine_type_{$item.engine_type}"}, {/if}
							{if $item.engine_size}{$item.engine_size}{/if}
						{/if}
					</p>
				</div>
			</div>
		{/foreach}
	</div>
{/if}