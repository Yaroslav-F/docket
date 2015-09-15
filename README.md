[![Build Status](https://travis-ci.org/amleaver/docket.svg?branch=master)](https://travis-ci.org/amleaver/docket) [![Coverage Status](https://coveralls.io/repos/amleaver/docket/badge.svg)](https://coveralls.io/r/amleaver/docket)
# Docket
## Overview

Adds a ```docket``` helper to a Rails project for rendering an AR model or iterable collection of models as an HTML table. 

## Usage

From your Rails view call ```docket``` with the following:

* ```model```: An AR model instance or collection of models to render in a table.
* ```ignore``` _(optional)_: An array of symbols which map to model attributes which won't be rendered in the table.
* ```calls``` _(optional)_: An array of strings which map to methods to call against the instance.
* ```table_class``` _(optional)_: Class attribute to use for the table.
* ```table_id``` _(optional)_: ID attribute to use for the table.
* ```table_style``` _(optional)_: Style attribute to use for the table.

## Example

    <%= docket @users, 
        ignore: [:updated_at, :created at],
        calls: [['fullname'], ['is_admin.humanize', 'Is Admin?']],
        table_class: 'tablesorter',
        table_id: 'user',
        table_style: 'background-color: white'
    %>

## License

MIT-LICENSE.
