openssl aes-256-cbc -K 366DD95C358FE696E1A90BE42BEEE7C7A692E5584EBDC4D6074F1D3BF5744A73 -iv E2BEAE306D5232981C56AB3531012529 -in 1.0.1.txt.enc -out 1.0.1.txt -d
cat 1.0.1.txt
openssl aes-256-cbc -K 366DD95C358FE696E1A90BE42BEEE7C7A692E5584EBDC4D6074F1D3BF5744A73 -iv E2BEAE306D5232981C56AB3531012529 -in 1.0.2.txt.enc -out 1.0.2.txt -d
cat 1.0.2.txt
openssl aes-256-cbc -K $encrypted_586a89c8550f_key -iv $encrypted_586a89c8550f_iv -in .ssh/id_travis_ptp.enc -out .ssh/id_travis_ptp -d
chmod 0400 .ssh/id_travis_ptp
eval $(ssh-agent -s)
ssh-add .ssh/id_travis_ptp
