gem install nokogiri -- --use-system-libraries \
  --with-iconv-dir="$(brew --prefix libiconv)" \
  --with-xml2-config="$(brew --prefix libxml2)/bin/xml2-config" \
  --with-xslt-config="$(brew --prefix libxslt)/bin/xslt-config"
