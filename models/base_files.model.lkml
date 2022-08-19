connection: "@{connection}"

# include all the views
include: "/views/**/*.view"

# include all the explores
include: "/explores/*.explore.lkml"

datagroup: base_files_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: base_files_default_datagroup
