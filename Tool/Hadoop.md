yarn logs -applicationId application_1560933104258_192361 -appOwner b_marketing_ep_infr > pyspark.log 2>&1

yarn application -kill application_1560933104258_176920

hadoop fs -du -s -h

1590be46-42c9-4422-a5eb-cd1efb57dd4b