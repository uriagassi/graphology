<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="he" dir="rtl" lang="he">
<script type="text/javascript">

var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");

document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));

</script>

<script type="text/javascript">

try {

var pageTracker = _gat._getTracker("UA-1940057-13");

pageTracker._trackPageview();

} catch(err) {}</script>
  <head>
<?php
$document =& JFactory::getDocument();
$mytitle = $document->getTitle();
$document->setTitle($mainframe->getCfg('sitename') . "  -  " . $document->title);
?>

    <jdoc:include type="head" />
    <link rel="stylesheet" href="templates/<?php echo $this->template ?>/css/template.css" type="text/css" />
  </head>
  <body <?php if($this->countModules('left')) : ?>id="hp"<?php endif; ?>>
 
    <div id="container">
      
      <div id="header">
      
        <a href="<?php echo $this->baseurl ?>"><img id="logo" src="<?php echo $this->baseurl ?>/templates/miri_agasi/images/logo.jpg" alt="מירי אגסי, המרכז לגרפולוגיה" /></a>
        
        <jdoc:include type="modules" name="top" />
        
      </div>
    
      <div id="content">

        <span id="systemMessage"><jdoc:include type="message" /></span>

        <img id="redCircle" src="<?php echo $this->baseurl ?>/templates/miri_agasi/images/red-circle.png" alt="" />
        
        <?php if(!$this->countModules('left')) : ?>
        
        <div id="sideMenu">
        
          <jdoc:include type="modules" name="right" />
        
        </div>
        
        <?php endif; ?>
        
        <div id="contentInner">
        <div id="innerScrollDiv">
          <img id="banner" src="<?php echo $this->baseurl ?>/templates/miri_agasi/images/banner.jpg" alt="" />
          <?php if($mytitle=='מאמרים דף הבית'): ?>
          <img src="/images/website_pics/articles.jpg" alt="מאמרים" />
          <?php endif; ?>
          <jdoc:include type="component" />
        </div>
        </div>
        
        <?php if(!$this->countModules('left')) : ?><div id="bgLeft"></div><?php endif; ?>
        
      </div>
      
      <?php if($this->countModules('left')) : ?>
      
      <div id="sideBar">
        
        <h3><img src="<?php echo $this->baseurl ?>/templates/miri_agasi/images/head-articles.jpg" alt="מאמרים" /></h3>

        <img id="sideBg" src="<?php echo $this->baseurl ?>/templates/miri_agasi/images/bg-sidebar.png" alt="" />

        <img id="circle" src="<?php echo $this->baseurl ?>/templates/miri_agasi/images/circle.png" alt="" />
        
        <jdoc:include type="modules" name="left" style="rounded" />
        
      </div>
      
      <?php endif; ?>
      <div id="bottomStripe"></div>
      <div id="footer">
        
        <p id="details">
          מירי אגסי המרכז לגרפולוגיה | טלפקס: 03-6482083 | ענתות 13, גני צהלה, תל אביב 69080
        </p>
        
        <p id="credits">
          Designed by&nbsp;&nbsp;<a href="http://planb.co.il/" target="_blank"><img src="<?php echo $this->baseurl ?>/templates/miri_agasi/images/plan-b.jpg" alt="plan_b" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        
      </div>
    
    </div>
    
    <jdoc:include type="modules" name="debug" />
    
  </body>
</html>