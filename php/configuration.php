<?php
class JConfig {
	var $offline = '0';
	var $editor = 'tinymce';
	var $list_limit = '20';
	var $helpurl = 'http://help.joomla.org';
	var $debug = '0';
	var $debug_lang = '0';
	var $sef = '0';
	var $sef_rewrite = '0';
	var $sef_suffix = '0';
	var $feed_limit = '10';
	var $feed_email = 'author';
	var $secret = 'ms5CAoSHPXckrs0E';
	var $gzip = '0';
	var $error_reporting = '-1';
	var $xmlrpc_server = '0';
	var $log_path = '/home/miriagassi/domains/miri.d-webs.com/public_html/logs';
	var $tmp_path = '/home/miriagassi/domains/miri.d-webs.com/public_html/tmp';
	var $live_site = '';
	var $force_ssl = '0';
	var $offset = '0';
	var $caching = '0';
	var $cachetime = '15';
	var $cache_handler = 'file';
	var $memcache_settings = array ();
	var $ftp_enable = '0';
	var $ftp_host = '127.0.0.1';
	var $ftp_port = '21';
	var $ftp_user = '';
	var $ftp_pass = '';
	var $ftp_root = '';
	/* Database Settings */
	var $dbtype = 'mysql';					// Normally mysql
	var $host = '';				// This is normally set to localhost
	var $user = '';							// MySQL username
	var $db = '';							// MySQL database name
	var $dbprefix = 'jos_';					// Do not change unless you need to!
	
	var $mailer = 'mail';
	var $mailfrom = 'support@d-webs.com';
	var $fromname = 'Miri Agassi';
	var $sendmail = '/usr/sbin/sendmail';
	var $smtpauth = '0';
	var $smtpuser = '';
	var $smtppass = '';
	var $smtphost = 'localhost';
	var $MetaAuthor = '1';
	var $MetaTitle = '1';
	var $lifetime = '15';
	var $session_handler = 'database';
	var $password = '';
	var $sitename = 'מירי אגסי, המרכז לגרפולוגיה';
	var $MetaDesc = 'מירי אגסי, המרכז לגרפולוגיה';
	var $MetaKeys = '';
	var $offline_message = 'This site is down for maintenance. Please check back again soon.';
	var $legacy = '0';
	var $debug_db = '0';
	
	public function __construct() {
		$this->host = getenv("OPENSHIFT_DB_HOST").":".getenv("OPENSHIFT_DB_PORT");
		$this->user = getenv("OPENSHIFT_DB_USERNAME");
		$this->password = getenv("OPENSHIFT_DB_PASSWORD");
		$this->db = getenv("OPENSHIFT_APP_NAME");
		$this->log_path = getenv("OPENSHIFT_LOG_DIR");
		$this->tmp_path = getenv("OPENSHIFT_TMP_DIR");
	}
}
