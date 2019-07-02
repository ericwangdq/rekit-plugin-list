// Export plugin here if it extends rekit-core or rekit-studio.

module.exports = { 
  appType: 'rekit-react',
  name: 'list', 
  cli: require('./cli'),
  hooks: require('./hooks')
}