<?php

class TableRows extends RecursiveIteratorIterator
{
    function __construct($it)
    {
        parent::__construct($it, self::LEAVES_ONLY);
    }

    public function current()
    {
        return "<td>" . parent::current() . "</td>";
    }

    public function beginChildren()
    {
        echo "<tr>";
    }

    public function endChildren()
    {
        echo "</tr>" . "\n";
    }
}

function generate_table($rows){

    echo "<table>" . PHP_EOL;
    echo "<tr><th>id</th><th>nom</th><th>region</th><th>altitude</th></tr>" . PHP_EOL;

    /* fetch associative array & display */
    foreach (new TableRows(new RecursiveArrayIterator($rows)) as $k => $v) {
        echo $v;
    }

    echo "</table>";
}

       

 