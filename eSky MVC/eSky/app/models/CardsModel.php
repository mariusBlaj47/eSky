<?php


class CardsModel extends Model
{
    public function test()
    {
        $query = 'begin test1 (:bind1); end;';
        $s = oci_parse($this->database, $query);
        oci_bind_by_name($s, ':bind1', $result,40);
        oci_execute($s);
        return $result;
    }
}



