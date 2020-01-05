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

* ...


Simple CMS Application:

Subject -> Many Pages -> Many Sections

Database and their columns
#<Subject id, name, position, visible, created_at, updated_at>
#<Page id, subject_id, name, permalink, position, visible, created_at, updated_at>
#<Section id, page_id, name, position, visible, content_type, content, created_at, updated_at>
#<AdminUser id, first_name, last_name, email, username, created_at, updated_at, password_digest: [FILTERED]>
#<SectionEdit id, admin_user_id, section_id, summary, created_at, updated_at>
