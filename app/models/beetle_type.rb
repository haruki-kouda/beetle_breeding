class BeetleType < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '国産カブト' },
    { id: 3, name: 'ヘラクレスオオカブト' },
    { id: 4, name: 'コーカサスオオカブト' },
    { id: 5, name: 'ヨツボシヒナカブト' },
    { id: 6, name: 'マルガリータヒナカブト' },
    { id: 7, name: 'ベルティペスヒナカブト' },
    { id: 8, name: 'その他' },
  ]
end
