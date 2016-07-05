class test {
  $mysql = {
      "jdbc_nodes_read" => [
         "mysql101.x.com"
      ],
      "jdbc_nodes_write" => [
         "mysql-clusterdb101.x.com",
         "mysql-clusterdb102.x.com",
         "mysql-clusterdb103.x.com"
      ],
  }
  $content = template('test/mytemplate.erb')
  notify { $content: }
}
