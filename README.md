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

#<Subject id: 1, name: "Initial Subject", position: 1, visible: true, created_at: "2019-12-29 13:50:04", updated_at: "2019-12-29 14:30:37">
#<Page id: 2, subject_id: 1, name: "First Page", permalink: "first", position: 1, visible: true, created_at: "2019-12-31 09:54:46", updated_at: "2020-01-05 11:35:23">
#<Section id: 1, page_id: 2, name: "Section One", position: 1, visible: true, content_type: nil, content: nil, created_at: "2019-12-31 17:11:41", updated_at: "2020-01-01 14:53:34">
#<AdminUser id: 1, first_name: "Bhushan", last_name: "Mhatre", email: "bhushan@mhatre.com", username: "bhushanmhatre", created_at: "2019-12-31 11:08:07", updated_at: "2020-01-04 18:57:40", password_digest: [FILTERED]>
#<SectionEdit id: 3, admin_user_id: 1, section_id: 1, summary: "Test edit", created_at: "2019-12-31 17:14:45", updated_at: "2019-12-31 17:14:45">
