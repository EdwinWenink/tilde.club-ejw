echo "Latest build @$(date +%s)" > ~/public_html/info.md 

/bin/bash ~/public_html/scripts/randomcowsay.sh

# Build website
pandoc -s --toc --metadata title="~ejw" --metadata author="Edwin Wenink" --number-sections --section-divs --css https://www.edwinwenink.xyz/css/twocolumn.css ~/public_html/**/*.md ~/public_html/fortunecookie.md ~/public_html/links.md ~/public_html/webring.md ~/public_html/info.md  -o ~/public_html/index.html
