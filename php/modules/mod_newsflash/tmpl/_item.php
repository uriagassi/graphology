<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<?php if ($params->get('item_title')) : ?>
<div class="contentpaneopen<?php echo $params->get( 'moduleclass_sfx' ); ?>">
	<h2 class="contentheading<?php echo $params->get( 'moduleclass_sfx' ); ?>">
	<?php if ($params->get('link_titles') && $item->linkOn != '') : ?>
		<a href="<?php echo $item->linkOn;?>" class="contentpagetitle<?php echo $params->get( 'moduleclass_sfx' ); ?>">
			<?php echo $item->title;?></a>
	<?php else : ?>
		<?php echo $item->title; ?>
	<?php endif; ?>
	</h2>
<?php endif; ?>
<p class="date"><?php echo $item->created; ?></p>
<?php if (!$params->get('intro_only')) :
	echo $item->afterDisplayTitle;
endif; ?>

<?php echo $item->beforeDisplayContent; ?>

<div class="content"><?php echo $item->text; ?><span class="dots">...</span></div>
       <?php if (isset($item->linkOn) && $item->readmore && $params->get('readmore')) :
	      echo '<a class="readmore" href="'.$item->linkOn.'">להמשך המאמר</a>';
        endif; ?>
</div>