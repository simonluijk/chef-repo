name "web"
description "Web role for systems"

run_list(
    "role[base]",
    "recipe[nginx]"
)
