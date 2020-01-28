@steps = [
  {
    stage: 1,
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
        phrase: 'Шаг 1 ДА Ответ 1',
        next_stage: 2
      },
      {
        position: 1,
        phrase: 'Шаг 1 НЕТ Ответ 2',
        next_stage: 3
      }
    ]
  },
  {
    stage: 1,
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
        phrase: 'Шаг 2 ДА Ответ 1',
        next_stage: 2
      },
      {
        position: 1,
        phrase: 'Шаг 2 НЕТ Ответ 2',
        next_stage: 3
      }
    ]
  },
  {
    stage: 1,
    opening: true,
    replicas: [
      {
        position: 0,
        phrase: 'Шаг 3 Привет Реплика 1'
      },
      {
        position: 1,
        phrase: 'Шаг 3 Как дела Реплика 2'
      },
      {
        position: 2,
        phrase: 'Шаг 3 Что делаешь Реплика 3'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Шаг 3 ДА Ответ 1',
        next_stage: 2
      },
      {
        position: 1,
        phrase: 'Шаг 3 НЕТ Ответ 2',
        next_stage: 3
      }
    ]
  },
  {
    stage: 1,
    opening: true,
    replicas: [
      {
        position: 0,
        phrase: 'Шаг 4 Реплика 1'
      },
      {
        position: 1,
        phrase: 'Шаг 4 Реплика 2'
      },
      {
        position: 2,
        phrase: 'Шаг 4 Реплика 3'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Шаг 4 ДА Ответ 1',
        next_stage: 2
      },
      {
        position: 1,
        phrase: 'Шаг 4 НЕТ Ответ 2',
        next_stage: 3
      }
    ]
  },
  {
    stage: 2,
    opening: false,
    replicas: [
      {
        position: 0,
        phrase: 'Шаг 5 Привет Реплика 1'
      },
      {
        position: 1,
        phrase: 'Шаг 5 Как дела Реплика 2'
      },
      {
        position: 2,
        phrase: 'Шаг 5 Что делаешь Реплика 3'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Шаг 5 ДА Ответ 1'
      },
      {
        position: 1,
        phrase: 'Шаг 5 НЕТ Ответ 2'
      }
    ]
  },
  {
    stage: 2,
    opening: false,
    replicas: [
      {
        position: 0,
        phrase: 'Шаг 6 Реплика 1'
      },
      {
        position: 1,
        phrase: 'Шаг 6 Реплика 2'
      },
      {
        position: 2,
        phrase: 'Шаг 6 Реплика 3'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Шаг 6 ДА Ответ 1'
      },
      {
        position: 1,
        phrase: 'Шаг 6 НЕТ Ответ 2'
      }
    ]
  },
  {
    stage: 2,
    opening: false,
    replicas: [
      {
        position: 0,
        phrase: 'Шаг 7 Привет Реплика 1'
      },
      {
        position: 1,
        phrase: 'Шаг 7 Как дела Реплика 2'
      },
      {
        position: 2,
        phrase: 'Шаг 7 Что делаешь Реплика 3'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Шаг 7 ДА Ответ 1'
      },
      {
        position: 1,
        phrase: 'Шаг 7 НЕТ Ответ 2'
      }
    ]
  },
  {
    stage: 2,
    opening: false,
    replicas: [
      {
        position: 0,
        phrase: 'Шаг 8 Реплика 1'
      },
      {
        position: 1,
        phrase: 'Шаг 8 Реплика 2'
      },
      {
        position: 2,
        phrase: 'Шаг 8 Реплика 3'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Шаг 8 ДА Ответ 1'
      },
      {
        position: 1,
        phrase: 'Шаг 8 НЕТ Ответ 2'
      }
    ]
  },
  {
    stage: 3,
    opening: false,
    replicas: [
      {
        position: 0,
        phrase: 'Шаг 9 Реплика 1'
      },
      {
        position: 1,
        phrase: 'Шаг 9 Реплика 2'
      },
      {
        position: 2,
        phrase: 'Шаг 9 Реплика 3'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Шаг 9 ДА Ответ 1'
      },
      {
        position: 1,
        phrase: 'Шаг 9 НЕТ Ответ 2'
      }
    ]
  },
  {
    stage: 3,
    opening: false,
    replicas: [
      {
        position: 0,
        phrase: 'Шаг 10 Реплика 1'
      },
      {
        position: 1,
        phrase: 'Шаг 10 Реплика 2'
      },
      {
        position: 2,
        phrase: 'Шаг 10 Реплика 3'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Шаг 10 ДА Ответ 1'
      },
      {
        position: 1,
        phrase: 'Шаг 10 НЕТ Ответ 2'
      }
    ]
  },
  {
    stage: 3,
    opening: false,
    replicas: [
      {
        position: 0,
        phrase: 'Шаг 11 Реплика 1'
      },
      {
        position: 1,
        phrase: 'Шаг 11 Реплика 2'
      },
      {
        position: 2,
        phrase: 'Шаг 11 Реплика 3'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Шаг 11 ДА Ответ 1'
      },
      {
        position: 1,
        phrase: 'Шаг 11 НЕТ Ответ 2'
      }
    ]
  },
  {
    stage: 3,
    opening: false,
    replicas: [
      {
        position: 0,
        phrase: 'Шаг 12 Реплика 1'
      },
      {
        position: 1,
        phrase: 'Шаг 12 Реплика 2'
      },
      {
        position: 2,
        phrase: 'Шаг 12 Реплика 3'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Шаг 12 ДА Ответ 1'
      },
      {
        position: 1,
        phrase: 'Шаг 12 НЕТ Ответ 2'
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
  create_next_steps
end


def create_steps

  @steps.each_with_index do |step, index|
    s = Step.create!(opening: step[:opening])
    puts "Step with opening #{ s.opening } just created"
    @steps[index][:id] = s.id
    puts @steps[index][:id]

    create_replicas(s, step[:replicas])
    create_answers(index, s, step[:answers])
  end

end

def create_replicas(step, replicas)

  replicas.each do |replica|
    r = step.replicas.create!(replica)
    puts "Replica with phrase '#{ r.phrase }' for step with id #{ r.step.id } just created"
  end

end

def create_answers(index, step, answers)
  answers.each_with_index do |answer, i|
    a = step.answers.create!(position: answer[:position], phrase: answer[:phrase])
    puts "Answer with phrase '#{ a.phrase }' for step with id #{ a.step.id } just created"
    @steps[index][:answers][i][:id] = a.id
  end
end

def create_next_steps
  @steps.each do |step|
    step[:answers].each do |answer|
      if answer.has_key?(:next_stage)
        @steps.each do |s|
          if s[:stage] == answer[:next_stage]
            ns = NextStep.create!(step_id: s[:id], answer_id: answer[:id])
            puts "NextStep just created for step with id #{ ns.step.id } and answer with id #{ ns.answer.id }"
          end
        end
      end
    end
  end
end

drop_db
seed_data
