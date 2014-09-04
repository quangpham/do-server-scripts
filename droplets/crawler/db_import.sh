wget https://dl.dropboxusercontent.com/u/14181582/crunchbase/crawling-current.sql.gz
gunzip crawling-current.sql.gz
mysql -uroot -proot -h localhost rails < crawling-current.sql