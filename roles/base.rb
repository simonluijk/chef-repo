name "base"
description "Base configuration for all systems."

run_list(
  "recipe[ohai]",
  "recipe[ubuntu]",
  "recipe[sudo]",
  "recipe[ntp]"
)

default_attributes(
"authorization" => {
    "sudo" => {
      "groups" => ["admin", "wheel"],
      "passwordless" => true
    }
  },
  "ntp" => {
    "servers" => ["0.pool.ntp.org", "1.pool.ntp.org", "2.pool.ntp.org", "3.pool.ntp.org"]
  }
)
