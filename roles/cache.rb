name "cache"
description "Caching role for systems"

run_list(
    "role[base]",
    "recipe[memcached]"
)
