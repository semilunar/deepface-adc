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

hash = {
  a: '123',
  :b => '321',
}

def drop_db
 Rake::Task['db:drop'].invoke
 Rake::Task['db:create'].invoke
 Rake::Task['db:migrate'].invoke
end

def seed_data
  create_steps
  # create_replicas
  # create_answers
end

def create_steps

  @steps.each do |step|
    s = Step.create!(opening: step[:opening])
    puts "Step with opening #{ s[:opening] } just created"

    create_replicas(s, step[:replicas])
    create_answers(s, step[:answers])
  end

end

def create_replicas(step, replicas)

  replicas.each do |replica|
    r = step.replicas.create!(replica)
    puts "Replica with phrase '#{ r.phrase }' for step with id #{ r.step.id } just created"
  end

end

def create_answers(step, answers)

  answers.each do |answer|
    a = step.answers.create!(answer)
    puts "Answer with phrase '#{ a.phrase }' for step with id #{ a.step.id } just created"
  end

end


drop_db
seed_data
