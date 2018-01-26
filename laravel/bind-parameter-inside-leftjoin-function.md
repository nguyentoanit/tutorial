# How to Using a variable in join function in Laravel 5.5

```
$tableModel = new tableModel();
$tableModel->select('field1,field2');
$tableModel->from('table1');
$tableModel->leftJoin('table2', function ($join) use ($param1, $param2, $param3){
                $join->on('field1','=',$param1)
                    ->on('field2', '=', $param2)
                    ->on('field3', '=', 1);
$result = $tableModel->get();
});
```