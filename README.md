https://circleci.com/gh/yebo-ecommerce/ember-yebo-lists/tree/:branch.svg?style=shield&circle-token=16e7094b5c52e1fdbd584969bffa76688c0f0b0d

# ember-yebo-lists

This README outlines the details of collaborating on this Ember addon.

## Installation

* `git clone git@github.com:yebo-ecommerce/ember-yebo-lists.git` this repository
* `cd ember-yebo-lists`
* `docker-compose run --rm web yarn`
* `docker-compose run --rm web bower install --allow-root`

## Running

* `docker-compose up`
* Visit your app at [http://127.0.0.1:4200](http://127.0.0.1:4200).
* Visit your app's test at [http://127.0.0.1:4200/tests](http://127.0.0.1:4200/tests).

## Running Tests

* Give it a read https://guides.emberjs.com/v2.11.0/testing/
* `docker-compose run --rm web yarn test`
* `docker-compose -f docker-compose.try.yml up` (Runs `ember try:each` to test your addon against multiple Ember versions)

## Building

* `ember build`

For more information on using ember-cli, visit [https://ember-cli.com/](https://ember-cli.com/).
