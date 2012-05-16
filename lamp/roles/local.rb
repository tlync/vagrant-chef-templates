name "local"
description "The base role for local development environment"
run_list  "recipe[misc]", "recipe[php]", "recipe[mysql]", "recipe[apache2]", "recipe[memcached]"
override_attributes "php" => { "version" =>  "5.4.2" , "install_method" => "source" }, "mysql"=> { "server_root_password" =>  "password" }
