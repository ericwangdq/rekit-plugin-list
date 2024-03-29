// Here is a sample code to extend main menu to show a hello alert.

export default {
  mainMenu: {
    fillMenuItems(items) {
      items.push({
        label: 'Say Hello',
        icon: 'anticon-smile',
        iconColor: '#555',
        key: 'list-say-hello',
        order: 1,
      });
    },
    handleMenuClick(key) {
      switch (key) {
        case 'list-say-hello':
          alert('Hello Rekit Plugin!');
          break;
        default:
          break;
      }
    },
  },
};
