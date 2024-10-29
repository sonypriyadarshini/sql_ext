from sony_dbt_sql_airflow_sql_1.utils import *

def Model_0():
    from airflow.operators.python import PythonOperator
    from datetime import timedelta
    import os
    import zipfile
    import tempfile

    return PythonOperator(
        task_id = "Model_0",
        python_callable = invoke_dbt_runner,
        op_kwargs = {
          "is_adhoc_run_from_same_project": False,
          "is_prophecy_managed": False,
          "run_deps": False,
          "run_seeds": True,
          "run_parents": False,
          "run_children": False,
          "run_tests": True,
          "run_mode": "project",
          "entity_kind": None,
          "entity_name": None,
          "project_id": "35638",
          "git_entity": "tag",
          "git_entity_value": "__PROJECT_FULL_RELEASE_TAG_PLACEHOLDER__",
          "git_ssh_url": "https://github.com/sonypriyadarshini/sql_ext",
          "git_sub_path": "sql/dbt_sql",
          "select": "",
          "threads": "",
          "exclude": "",
          "run_props": " --profile run_profile",
          "envs": {"DBT_DATABRICKS_INVOCATION_ENV" : "prophecy", "DBT_PROFILES_DIR" : "/home/airflow/gcs/data"}
        },
    )
