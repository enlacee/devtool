<?php
/**
* open files of directoryes PHP
**/
$exerciseHandle = opendir($baseWorkDir);

// parse every subdirectory to search xml question files
while (false !== ($file = readdir($exerciseHandle))) {
    if (is_dir($baseWorkDir.'/'.$file) && $file != "." && $file != "..") { // VERIFID IF DIRECTORIO OR SUBDIRECTORY
        //FIND ONE FILE
        $questionHandle = opendir($baseWorkDir.'/'.$file);
        while (false !== ($questionFile = readdir($questionHandle))) {
            if (preg_match('/.xml$/i', $questionFile)) {
                $result = parse_file($baseWorkDir, $file, $questionFile);
                $file_found = true;
            }
        }
    } elseif (preg_match('/.xml$/i', $file)) {
        $result = parse_file($baseWorkDir, '', $file);
        $file_found = true;
    } // else ignore file
}