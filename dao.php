<?php
// TODO: Transfer constant to env files
// TODO: separate code into a functions.php and make a simple call for each methods instead of inserting all the code here
define("DB_HOST", "localhost");
define("DB_USER", "root");
define("DB_PSW", "");
define("DB_NAME", "sommets");
define("DB_DSN", "mysql:host=" . DB_HOST . ";dbname=" . DB_NAME);
define("LOG_FILE", "C:/xampp/htdocs/WebProjects/TP05/errors.log");

function fetch_records_pdo($query, array $params, $sort)
{
    try {
        /************************* PDO CONNECTION *******************************/

        $pdo = new PDO(DB_DSN, DB_USER, DB_PSW);
        // set the PDO error mode to exception
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        //No Exceptions were thrown, we connected successfully, yay!
        echo "Success, we connected without failure! " . PHP_EOL . "</br>";
        echo "Connection Info: " . $pdo->getAttribute(constant("PDO::ATTR_SERVER_INFO"))  . PHP_EOL . "</br>";


        /************************* PDO QUERY *******************************/

        // prepare sql and bind parameters
        foreach($params as $v){
            $query .= $v[1];
        }
        $query .= $sort;
        $stmt = $pdo->prepare($query);

        foreach($params as $k => $v){
            $stmt->bindParam($k, $v[0]);
        }

        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);

    } catch (PDOException $e) {
        echo "SQL Exceptions";
        error_log($e->__toString(), 3, LOG_FILE);
    } finally {
        $pdo = null;
    }
}
