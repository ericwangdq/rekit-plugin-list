module.exports = {
  defineArgs({ addCmd }) {
    addCmd.addArgument(['--list-view'], {
      help: 'Whether to include list view.',
      dest: 'listView',
      action: 'storeTrue',
    });
  }
};