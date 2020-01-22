@steps = [
  {
    opening: true,
    replicas: [
      {
        position: 0,
        phrase: 'Шаг 1 Привет Реплика 1'
      },
      {
        position: 1,
        phrase: 'Шаг 1 Как дела Реплика 2'
      },
      {
        position: 2,
        phrase: 'Шаг 1 Что делаешь Реплика 3'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Шаг 1 ДА Ответ 1'
      },
      {
        position: 1,
        phrase: 'Шаг 1 НЕТ Ответ 2'
      }
    ]
  },
  {
    opening: true,
    replicas: [
      {
        position: 0,
        phrase: 'Шаг 2 Реплика 1'
      },
      {
        position: 1,
        phrase: 'Шаг 2 Реплика 2'
      },
      {
        position: 2,
        phrase: 'Шаг 2 Реплика 3'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Шаг 2 ДА Ответ 1'
      },
      {
        position: 1,
        phrase: 'Шаг 2 НЕТ Ответ 2'
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
 create_steps
 create_replicas
 create_answers
end

def create_steps
  @steps.each do |step|
    s = Step.create!(opening: step[:opening])
    puts "Step with opening #{ s[:opening] } just created"
  end
end

def create_replicas
  @steps.each do |step|
    replicas = step[:replicas]
    replicas.each do |replica|
      r = Replica.create!(position: replica[:position], phrase: replica[:phrase])
      puts "Replica with position and phrase #{ r } was just created"
    end
  end
end


def create_answers
  @steps.each do |step|
    answers = step[:replicas]
    answers.each do |answer|
      a = Answer.create!(position: answer[:position], phrase: answer[:phrase])
      puts "Answer with position and phrase #{ a } was just created"
    end
  end
end

drop_db
seed_data
