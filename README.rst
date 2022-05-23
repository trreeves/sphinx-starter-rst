Sphinx Starter (reStructuredText)
=================================

This repository contains some initial content to bootstrap a new Sphinx_ documentation project, reStructuredText to define the content, and the `Read-The-Docs theme`_.

.. _Sphinx: http://www.sphinx-doc.org
.. _Read-The-Docs theme: https://github.com/readthedocs/sphinx_rtd_theme

Docker is a pre-requisit.

Creating this starter content
--------------------------------

The content in this repo was created by following these steps:

Build a custom container image
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: shell

    docker build -t sphinx-starter-rst:local .


Scaffold the basic structure using the `sphinx-starter` command
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: shell

    docker run --rm -it -v "$(pwd):/docs" sphinx-starter-rst:local sphinx-quickstart


Update the Sphinx configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update `conf.py`, to ensure the following values:

.. code-block:: python

    html_theme = 'sphinx_rtd_theme'


Update content in  `index.rst`
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Generate HTML content
---------------------

.. code-block:: shell
    
    docker run --rm -v "$(pwd):/docs" sphinx-starter-rst:local make html