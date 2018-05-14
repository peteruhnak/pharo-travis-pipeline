openssl aes-256-cbc -K $encrypted_586a89c8550f_key -iv $encrypted_586a89c8550f_iv -in .ssh/1.0.1.txt.enc -out .ssh/1.0.1.txt -d
cat .ssh/1.0.1.txt
openssl aes-256-cbc -K $encrypted_586a89c8550f_key -iv $encrypted_586a89c8550f_iv -in .ssh/id_travis_ptp.enc -out .ssh/id_travis_ptp -d
chmod 0400 .ssh/id_travis_ptp
eval $(ssh-agent -s)
ssh-add .ssh/id_travis_ptp
