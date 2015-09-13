# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150911082004) do

  create_table "bibtex_tags", :force => true do |t|
    t.string   "name"
    t.string   "content"
    t.integer  "evidence_source_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "bibtex_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "evidence_items", :force => true do |t|
    t.string   "result"
    t.string   "benefit"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "evidence_source_id"
  end

  create_table "evidence_items_software_engineering_methodologies", :id => false, :force => true do |t|
    t.integer "evidence_item_id"
    t.integer "software_engineering_methodology_id"
  end

  create_table "evidence_items_software_engineering_methods", :id => false, :force => true do |t|
    t.integer "evidence_item_id"
    t.integer "software_engineering_method_id"
  end

  create_table "evidence_sources", :force => true do |t|
    t.string   "research_level"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "research_question"
    t.integer  "bibtex_type_id"
  end

  create_table "evidence_sources_research_methods", :id => false, :force => true do |t|
    t.integer "evidence_source_id"
    t.integer "research_method_id"
  end

  create_table "research_methods", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "research_metrics", :force => true do |t|
    t.string   "description"
    t.integer  "evidence_source_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "software_engineering_methodologies", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "software_engineering_methodologies_software_engineering_methods", :id => false, :force => true do |t|
    t.integer "software_engineering_method_id"
    t.integer "software_engineering_methodology_id"
  end

  create_table "software_engineering_methods", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
