-----------------------------------
:::::: Code
-----------------------------------
$js = <<<EOD
<script type="text/javascript"><!--
console.log("loging")
--></script>
EOD

## prevent atach xss
echo htmlspecialchars($string, ENT_QUOTES, 'UTF-8');