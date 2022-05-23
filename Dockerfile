FROM sphinxdoc/sphinx

WORKDIR /docs

RUN pip install --upgrade \
    sphinx-rtd-theme
