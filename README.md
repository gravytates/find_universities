University Calls

JSON.parse(RestClient.get 'http://localhost:3000/universities')

JSON.parse(RestClient.patch 'http://localhost:3000/universities/1', {name: 'updated', description: 'desc', population: 2000, mascot: 'manbearpig'}, headers={authorization: ENV['UNIVERSITY_API_KEY']})

JSON.parse(RestClient.post 'http://localhost:3000/universities', {name: 'uni', description: 'desc', population: 2000, mascot: 'manbearpig'}, headers={authorization: ENV['UNIVERSITY_API_KEY']})

JSON.parse(RestClient.delete 'http://localhost:3000/universities/1', headers={authorization: ENV['UNIVERSITY_API_KEY']})


Review Calls

JSON.parse(RestClient.get 'http://localhost:3000/universities/1/reviews/1')

JSON.parse(RestClient.patch 'http://localhost:3000/universities/1/reviews/1', {author: 'updated-author'}, headers={authorization: ENV['UNIVERSITY_API_KEY']})

JSON.parse(RestClient.post 'http://localhost:3000/universities/1/reviews', {author: 'Mr. NiceGuy, No-Mo', content: 'not the best school.', rating: 2 }, headers={authorization: ENV['UNIVERSITY_API_KEY']})

JSON.parse(RestClient.delete 'http://localhost:3000/universities/1/reviews/1', headers={authorization: ENV['UNIVERSITY_API_KEY']})
