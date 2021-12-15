const { Model, DataTypes } = require('sequelize')
const sequelize = require('../db')

class Movie extends Model { }

Movie.init({
  title: {
    type: DataTypes.STRING,
    allowNull: false
  },
  director: {
    type: DataTypes.STRING,
    allowNull: false
  },
  release: {
    type: DataTypes.INTEGER,
    allowNull: false
  }
}, { sequelize, modelName: 'movie' })

module.exports = Movie
