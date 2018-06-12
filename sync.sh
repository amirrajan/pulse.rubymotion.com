set -x
aws s3 sync . s3://pulse.rubymotion.com
aws s3 cp pulse.txt s3://pulse.rubymotion.com/pulse.txt --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers
aws s3api put-bucket-website --bucket pulse.rubymotion.com --website-configuration file://website.json
