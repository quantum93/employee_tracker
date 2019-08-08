# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* _In order to delete one of division row, you need to add
"dependent: :destroy" in division.rb under app/models. It looks like

class Division < ApplicationRecord
  has_many :employees, dependent: :destroy
end
_

using google fonts from "google fonts"
