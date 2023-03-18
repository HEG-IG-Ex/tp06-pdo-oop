<?php
class Sommet{
    private $base_query = "SELECT som_id, som_nom, som_region, som_altitude FROM sommets WHERE som_id IS NOT NULL ";
    private $filters = array();
    private $sorting = "";
    private $nb_page = 0;
    private $elem_per_pages = 20;
    private $resultat;

    function __construct() {
    }

    function filter($field, $value, $operator){
        array_push($this->filters, "AND $field $operator $value ");
    }
    function sort($field, $sens){
       $this->sorting = "ORDER BY som_$field $sens";
    }
    function get_total_results(){
        return count($this->resultat);
    }
    function get_nb_page(){
        return $this->get_total_results() / $this->elem_per_pages;
    }

    function set_pagination($elem_per_pages){
        $this->elem_per_pages = $elem_per_pages;
    }
    function get_paginate_result($clicked_page){
        $this->get_result();
        
        //==== pagination =============
        $totalResults = $this->get_total_results();
        
        //num page clicked
        $page = ! empty($clicked_page) ? (int) $clicked_page : 1;
        //total items in array     
        $totalResults = count( $this->resultat ); 
        //calculate total pages
        $totalPages = ceil( $totalResults / $this->elem_per_pages ); 
        //get 1 page when $_GET['page'] <= 0
        $page = max($page, 1); 
        //get last page when $_GET['page'] > $totalPages
        $page = min($page, $totalPages); 
        // offset calculated to set the start of the slice at the correct records
        $offset = ($page - 1) * NOMBRE_PAR_PAGE;
        if( $offset < 0 ) $offset = 0;
        return array_slice( $this->resultat, $offset, NOMBRE_PAR_PAGE );
    }

    function get_result($debug = null){
        try {
            /************************* PDO CONNECTION *******************************/
    
            $pdo = new PDO(DB_DSN, DB_USER, DB_PSW);
            // set the PDO error mode to exception
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
            //No Exceptions were thrown, we connected successfully, yay!
            //echo "Success, we connected without failure! " . PHP_EOL . "</br>";
            //echo "Connection Info: " . $pdo->getAttribute(constant("PDO::ATTR_SERVER_INFO"))  . PHP_EOL . "</br>";
    
    
            /************************* PDO QUERY *******************************/
    
            // prepare sql and bind parameters
            foreach($this->filters as $f){
                $this->base_query .= $f;
            }
            $this->base_query .= $this->sorting;
            //print($this->base_query);
            $stmt = $pdo->prepare($this->base_query);    

            $stmt->execute();
    
            $this->resultat =  $stmt->fetchAll(PDO::FETCH_ASSOC);
    
        } catch (PDOException $e) {
            echo "SQL Exceptions";
            error_log($e->__toString(), 3, LOG_FILE);
        } finally {
            $pdo = null;
        }
    }


}

?>