const express = require('express')
const app = express()
//导入 mysql 模块
const mysql = require('mysql2')
//配置解析表单数据中的中间体
app.use(express.urlencoded({ extended: false }))

//一定要在路由之前，配置cors这个中间件，从而解决接口跨域的问题
const cors = require('cors')
app.use(cors())

//cors中间件知识点
//建立与MySQL的数据库联系
const db = mysql.createPool({
  host: '127.0.0.1',
  user: 'root',
  password: '@Mysql178167',
  database: 'campusforum'
})

db.getConnection(err => {
  if (err) return console.log(err.message)
  else console.log('Connected to MySQL')
})

app.get('/api/mysql', (req, res) => {
  //查询score表中所有的数据
  db.query('SELECT * FROM usersdata', (error, results) => {
    if (error) {
      console.error('Error fetching users from MySQL:', error)
      res.status(500).send('Internal Server Error')
    } else {
      res.status(200).send(results)
      console.log(results)
      console.log('Query')
    }
  })
})

// 创建新用户
app.post('/api/mysql', (req, res) => {
  const { Id, Account, Password, Username, Gender, School, Email } = req.body
  const newUser = { Id, Account, Password, Username, Gender, School, Email }
  console.log(req.body)
  db.query('INSERT INTO usersdata  (Id, Account, Password, Username, Gender, School, Email) values (?, ?, ?, ?, ?, ?, ?)', [Id, Account, Password, Username, Gender, School, Email], (error, result) => {
    if (error) {
      console.error('Error creating new user in MySQL:', error.message)
      res.status(500).send('Internal Server Error')
    } else {
      if (result.affectedRows === 1) {
        res.send('User updated successfully')
        console.log('User updated successfully')
      } else {
        res.status(404).send('User not found')
      }
    }
  })
})

// 更新用户信息
app.put('/api/mysql/:id', (req, res) => {
  const { Id } = req.params
  const { Account, Password, Username, Gender, School, Email } = req.body
  //   const userup = { id: 3, account: 'rw', password: '12343' }
  console.log(req.params)
  console.log(req.body)
  const sql = 'UPDATE usersdata SET Account = ?, Password = ?, Username=?, Gender=?, School=?, Email=? WHERE Id = ?'
  db.query(sql, [Account, Password, Username, Gender, School, Email, '6'], (error, results) => {
    if (error) {
      console.error('Error creating new user in MySQL:', error.message)
      res.status(500).send('Internal Server Error')
    } else {
      if (results.affectedRows === 1) {
        res.send('User updated successfully')
        console.log('User updated successfully')
      } else {
        res.status(404).send('User not found')
      }
    }
  })
})

app.listen(80, () => {
  console.log('mysql')
})
