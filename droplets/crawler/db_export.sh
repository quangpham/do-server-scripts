mysqldump -uroot -proot rails | gzip -9 > crawling-current.sql.gz
mv crawling-current.sql.gz /home/rails/public

~/dropbox_uploader.sh upload /home/rails/public/crawling-current.sql.gz /Public/crunchbase/crawling-current.sql.gz


# mysql -e "select * from companies where (raw is null)" -uroot -proot rails > company.txt

# mysqldump -uroot -proot rails | gzip -9 > crawling-current.sql.gz
# mv crawling-current.sql.gz /home/rails/public


# mysql -uroot -proot -h localhost rails < crawling-current.sql



# mysqldump -uroot -proot rails companies --where="raw is null" > null-companies.sql.gz
# mysqldump -uroot -proot rails people --where="raw is null" > null-people.sql.gz
# mysqldump -uroot -proot rails financial_organizations --where="raw is null" > null-financial_organizations.sql.gz
