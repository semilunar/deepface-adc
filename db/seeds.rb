# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

drop_db
seed_data


steps: [
  {
    opening: true,
    replicas: [
      {
        position: 0,
        phrase: 'Привет Реплика 1'
      },
      {
        position: 1,
        phrase: 'Как дела Реплика 2'
      },
      {
        position: 2,
        phrase: 'Что делаешь Реплика 3'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'ДА Ответ 1'
      },
      {
        position: 1,
        phrase: 'НЕТ Ответ 2'
      }
    ]
  }
]


def drop_db
 Rake::Task['db:drop'].invoke
 Rake::Task['db:create'].invoke
 Rake::Task['db:migrate'].invoke
end

def seed_data
 create_conversations
 create_steps
 create_replicas
 create_answers
end

def create_conversations
end

def create_steps
end

def  create_replicas
end

def  create_answers
end
