name "database"
description "Base database role for systems"

run_list(
    "role[base]",
    "recipe[postgresql::server]"
)
