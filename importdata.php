<?php

$db_host = '172.20.0.8';
$db_name = 'phpmyadmin';

$db_user = 'tech';
$db_pass = 'public';

$entries = 10000000;
$entry_words_min = 250;
$entry_words_max = 1000;

/*
  End configuration
*/

function get_rand_word( $len_min, $len_max ) {
    $word = '';
    for ( $i = 0; $i < ( rand( 0, $len_max - $len_min ) + $len_min ); $i++ ) {
        $word .= chr(rand(65, 90));
    }
    return $word;
}
function get_title() {
    $title = '';
    for ( $i = 0; $i < ( rand( 4, 10 ) ); $i++ ) {
        $title .= get_rand_word( 2, 9 ) . ' ';
    }
    return $title;
}
function get_fulltext() {
    $fulltext = '';
    for ( $i = 0; $i < ( rand( 250, 500 ) ); $i++ ) {
        $fulltext .= get_rand_word( 2, 9 ) . ' ';
    }
    return $fulltext;
}

$dsn = 'mysql:dbname=' . $db_name . ';host=' . $db_host;

try {
    $dbh = new PDO($dsn, $db_user, $db_pass);
} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
    die();
}

$dbh->query('CREATE TABLE IF NOT EXISTS `sphinx` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(150) collate utf8_bin NOT NULL,
  `fulltext` text collate utf8_bin NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin');

$sth = $dbh->prepare('INSERT INTO `sphinx` (`title`,`fulltext`) VALUES (:title, :fulltext)');

$counter = 0;
for ( $i = 0; $i < $entries; $i++ ) {
    $sth->execute(array(
        ':title' => get_title(),
        ':fulltext' => get_fulltext()
    ));
    $counter++;
}

echo $counter . ' rows inserted';

?>

