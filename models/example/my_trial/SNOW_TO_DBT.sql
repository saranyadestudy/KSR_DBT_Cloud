---helps to puase the parameter of db and schema name by using source 
SELECT EMP_ID,EMP_NAME,ADDRESS,COMPANY,JOINING,COUNTRY 
FROM {{source("my_trial_data",'emp')}}