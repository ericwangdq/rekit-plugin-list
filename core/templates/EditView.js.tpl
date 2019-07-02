import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { bindActionCreators } from 'redux';
import { connect } from 'react-redux';
import * as actions from './redux/actions';
import {
  Status,
  Button,
  ActionBar,
  Popover,
  Menu,
  Tab,
  TabGroup,
  FormSet,
  FormItem,
  FormLabel,
  FormInput,
  FormTextarea,
  // DatePicker,
  TreeView,
} from 'fundamental-react';

export class EditView extends Component {
  static propTypes = {
    ${_.camelCase(name)}: PropTypes.object.isRequired,
    actions: PropTypes.object.isRequired,
  };

  render() {
    return (
      <div className="edit-view ${_.kebabCase(name)}-edit-view">
        <article className="fd-page">
          <header className="fd-page__header fd-has-background-color-background-2">
            <ActionBar>
              <ActionBar.Back
                onClick={e => {
                  e.preventDefault();
                  this.props.history.goBack();
                }}
              />
              <ActionBar.Header description="" title="${name} ARI-20332" />
              <ActionBar.Actions>
                <Popover
                  body={
                    <Menu>
                      <Menu.List>
                        <Menu.Item url="/">Option 1</Menu.Item>
                        <Menu.Item url="/">Option 2</Menu.Item>
                        <Menu.Item url="/">Option 3</Menu.Item>
                        <Menu.Item url="/">Option 4</Menu.Item>
                      </Menu.List>
                    </Menu>
                  }
                  control={<Button glyph="vertical-grip" option="light" />}
                  placement="bottom-end"
                />
                <Button
                  onClick={e => {
                    e.preventDefault();
                    this.props.history.goBack();
                    // this.props.history.push('/ar-invoice/view/ARI-20332');
                  }}
                >
                  Cancel
                </Button>
                <Button option="emphasized" onClick={() => {}}>
                  Done
                </Button>
              </ActionBar.Actions>
            </ActionBar>
            <div className="fd-container fd-container--fluid" style={{ marginBottom: '15px' }}>
              <div className="fd-col--3">
                <FormSet>
                  <FormItem>
                    <FormLabel htmlFor="invoice-code" required>
                      Code:
                    </FormLabel>
                    <FormInput id="invoice-code" defaultValue="CP100110" type="text" />
                  </FormItem>
                  <FormItem>
                    <FormLabel htmlFor="invoice-bp-name" required>
                      Business Partner Name:
                    </FormLabel>
                    <FormInput
                      id="invoice-bp-name"
                      type="text"
                      defaultValue="Silverstar Wholesale Corp"
                    />
                  </FormItem>
                  <FormItem>
                    <FormLabel htmlFor="select-1">Status:</FormLabel>
                    <Status type="available">Open</Status>
                  </FormItem>
                </FormSet>
              </div>
              <div className="fd-col--2">
                <FormSet>
                  <FormItem>
                    <FormLabel htmlFor="select-1">Posting Date:</FormLabel>
                    {/* <DatePicker formattedDate={new Date('2019-05-03')} /> */}
                    <span className="form-text">2019/05/03</span>
                  </FormItem>
                  <FormItem>
                    <FormLabel htmlFor="select-1">Due Date:</FormLabel>
                    <span className="form-text">2019/06/02</span>
                  </FormItem>
                  <FormItem>
                    <FormLabel htmlFor="select-1">Issue Date:</FormLabel>
                    <span className="form-text">2019/06/02</span>
                  </FormItem>
                </FormSet>
              </div>
              <div className="fd-col--2">
                <FormSet>
                  <FormItem>
                    <FormLabel htmlFor="select-1">Gross Total:</FormLabel>
                    <span className="amount">8,950.00</span>
                    <span className="unit"> USD</span>
                  </FormItem>
                </FormSet>
              </div>
              <div className="fd-col--2">
                <FormSet>
                  <FormItem>
                    <FormLabel htmlFor="select-1">Open Amount:</FormLabel>
                    <span className="amount">8,950.00</span>
                    <span className="unit"> USD</span>
                  </FormItem>
                </FormSet>
              </div>
              <div className="fd-col--2">{}</div>
            </div>
          </header>
          <div className="fd-page__content fd-has-background-color-neutral-2">
            <TabGroup key="tab-g-1">
              <Tab key="tab1" id="1" title="Details">
                <section className="fd-section">
                  <div
                    className="fd-container fd-container--fluid"
                    style={{ marginBottom: '15px' }}
                  >
                    <div className="fd-col--4">
                      <FormSet>
                        <FormItem>
                          <FormLabel htmlFor="select-1">Currency Code:</FormLabel>
                          <span className="form-text">USD</span>
                        </FormItem>
                        <FormItem>
                          <FormLabel htmlFor="select-1">Pricing Method:</FormLabel>
                          <span className="form-text">Net</span>
                        </FormItem>
                      </FormSet>
                    </div>
                    <div className="fd-col--4">
                      <FormSet>
                        <FormItem>
                          <FormLabel htmlFor="select-1">Exchange Rate:</FormLabel>
                          <span className="form-text">1.00</span>
                        </FormItem>
                        <FormItem>
                          <FormLabel htmlFor="select-1">Contact:</FormLabel>
                          <span className="form-text">{}</span>
                        </FormItem>
                      </FormSet>
                    </div>
                    <div className="fd-col--4">
                      <FormSet>
                        <FormItem>
                          <FormLabel htmlFor="invoice-remarks">Remarks:</FormLabel>
                          <FormTextarea id="invoice-remarks" defaultValue="CP100110 Buy S500525" />
                        </FormItem>
                      </FormSet>
                    </div>
                  </div>
                </section>
              </Tab>
              <Tab key="tab2" id="2" title="Contents">
                <section className="fd-section">
                  <TreeView>
                    <TreeView.Head>
                      <TreeView.Col>Code</TreeView.Col>
                      <TreeView.Col>Description</TreeView.Col>
                      <TreeView.Col>Quantity</TreeView.Col>
                      <TreeView.Col>Unit of Measurement</TreeView.Col>
                      <TreeView.Col>Unit Price</TreeView.Col>
                      <TreeView.Col>Discount %</TreeView.Col>
                      <TreeView.Col>Rate Value</TreeView.Col>
                      <TreeView.Col>Tax Amount</TreeView.Col>
                      <TreeView.Col>Net Amount</TreeView.Col>
                    </TreeView.Head>
                    <TreeView.Tree>
                      <TreeView.Item>
                        <TreeView.Row>
                          <TreeView.Col>S500524</TreeView.Col>
                          <TreeView.Col>Maintenance</TreeView.Col>
                          <TreeView.Col>Material</TreeView.Col>
                          <TreeView.Col>179.00</TreeView.Col>
                          <TreeView.Col>hour(s)</TreeView.Col>
                          <TreeView.Col>50.00 USD</TreeView.Col>
                          <TreeView.Col>0.00</TreeView.Col>
                          <TreeView.Col>0.00</TreeView.Col>
                          <TreeView.Col>0.00 USD</TreeView.Col>
                          <TreeView.Col>8,950.00 USD</TreeView.Col>
                        </TreeView.Row>
                        <TreeView.Branch>
                          <TreeView.Item>
                            <TreeView.Row>
                              <TreeView.Col>
                                <h3 className="fd-action-bar__title" style={{ margin: '20px 0' }}>
                                  Products
                                </h3>
                                <div class="fd-container">
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">AD Group Id:</FormLabel>
                                        <span className="form-text">
                                          2010 Group of Account Receivables
                                        </span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Warehouse Name:</FormLabel>
                                        <span className="form-text">warehouse 01</span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Remarks:</FormLabel>
                                        <span className="form-text">{''}</span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                </div>
                                <h3 className="fd-action-bar__title" style={{ margin: '20px 0' }}>
                                  Dimensions
                                </h3>
                                <div class="fd-container" style={{ marginBottom: '20px' }}>
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Product:</FormLabel>
                                        <span className="form-text">Maintenance</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Customer:</FormLabel>
                                        <span className="form-text">Silverstar Wholesale Corp</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Project:</FormLabel>
                                        <span className="form-text">Project D</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Department:</FormLabel>
                                        <span className="form-text">Project D</span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Product Group:</FormLabel>
                                        <span className="form-text">warehouse 01</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Region:</FormLabel>
                                        <span className="form-text">North US</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Cost Center:</FormLabel>
                                        <span className="form-text">{''}</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Cashflow:</FormLabel>
                                        <span className="form-text">{''}</span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Profit Center:</FormLabel>
                                        <span className="form-text">South Store</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Channel:</FormLabel>
                                        <span className="form-text">Direct Sales</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Employee:</FormLabel>
                                        <span className="form-text">{''}</span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                </div>
                              </TreeView.Col>
                            </TreeView.Row>
                          </TreeView.Item>
                        </TreeView.Branch>
                      </TreeView.Item>
                      <TreeView.Item>
                        <TreeView.Row>
                          <TreeView.Col>S500525</TreeView.Col>
                          <TreeView.Col>Maintenance</TreeView.Col>
                          <TreeView.Col>Material</TreeView.Col>
                          <TreeView.Col>179.00</TreeView.Col>
                          <TreeView.Col>hour(s)</TreeView.Col>
                          <TreeView.Col>50.00 USD</TreeView.Col>
                          <TreeView.Col>0.00</TreeView.Col>
                          <TreeView.Col>0.00</TreeView.Col>
                          <TreeView.Col>0.00 USD</TreeView.Col>
                          <TreeView.Col>8,950.00 USD</TreeView.Col>
                        </TreeView.Row>
                        <TreeView.Branch>
                          <TreeView.Item>
                            <TreeView.Row>
                              <TreeView.Col>
                                <h3 className="fd-action-bar__title" style={{ margin: '20px 0' }}>
                                  Products
                                </h3>
                                <div class="fd-container">
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">AD Group Id:</FormLabel>
                                        <span className="form-text">
                                          2010 Group of Account Receivables
                                        </span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Warehouse Name:</FormLabel>
                                        <span className="form-text">warehouse 01</span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Remarks:</FormLabel>
                                        <span className="form-text">{''}</span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                </div>
                                <h3 className="fd-action-bar__title" style={{ margin: '20px 0' }}>
                                  Dimensions
                                </h3>
                                <div class="fd-container" style={{ marginBottom: '20px' }}>
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Product:</FormLabel>
                                        <span className="form-text">Maintenance</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Customer:</FormLabel>
                                        <span className="form-text">Silverstar Wholesale Corp</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Project:</FormLabel>
                                        <span className="form-text">Project D</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Department:</FormLabel>
                                        <span className="form-text">Project D</span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Product Group:</FormLabel>
                                        <span className="form-text">warehouse 01</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Region:</FormLabel>
                                        <span className="form-text">North US</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Cost Center:</FormLabel>
                                        <span className="form-text">{''}</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Cashflow:</FormLabel>
                                        <span className="form-text">{''}</span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Profit Center:</FormLabel>
                                        <span className="form-text">South Store</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Channel:</FormLabel>
                                        <span className="form-text">Direct Sales</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Employee:</FormLabel>
                                        <span className="form-text">{''}</span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                </div>
                              </TreeView.Col>
                            </TreeView.Row>
                          </TreeView.Item>
                        </TreeView.Branch>
                      </TreeView.Item>
                      <TreeView.Item>
                        <TreeView.Row>
                          <TreeView.Col>S500526</TreeView.Col>
                          <TreeView.Col>Maintenance</TreeView.Col>
                          <TreeView.Col>Material</TreeView.Col>
                          <TreeView.Col>179.00</TreeView.Col>
                          <TreeView.Col>hour(s)</TreeView.Col>
                          <TreeView.Col>50.00 USD</TreeView.Col>
                          <TreeView.Col>0.00</TreeView.Col>
                          <TreeView.Col>0.00</TreeView.Col>
                          <TreeView.Col>0.00 USD</TreeView.Col>
                          <TreeView.Col>8,950.00 USD</TreeView.Col>
                        </TreeView.Row>
                        <TreeView.Branch>
                          <TreeView.Item>
                            <TreeView.Row>
                              <TreeView.Col>
                                <h3 className="fd-action-bar__title" style={{ margin: '20px 0' }}>
                                  Products
                                </h3>
                                <div class="fd-container">
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">AD Group Id:</FormLabel>
                                        <span className="form-text">
                                          2010 Group of Account Receivables
                                        </span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Warehouse Name:</FormLabel>
                                        <span className="form-text">warehouse 01</span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Remarks:</FormLabel>
                                        <span className="form-text">{''}</span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                </div>
                                <h3 className="fd-action-bar__title" style={{ margin: '20px 0' }}>
                                  Dimensions
                                </h3>
                                <div class="fd-container" style={{ marginBottom: '20px' }}>
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Product:</FormLabel>
                                        <span className="form-text">Maintenance</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Customer:</FormLabel>
                                        <span className="form-text">Silverstar Wholesale Corp</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Project:</FormLabel>
                                        <span className="form-text">Project D</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Department:</FormLabel>
                                        <span className="form-text">Project D</span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Product Group:</FormLabel>
                                        <span className="form-text">warehouse 01</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Region:</FormLabel>
                                        <span className="form-text">North US</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Cost Center:</FormLabel>
                                        <span className="form-text">{''}</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Cashflow:</FormLabel>
                                        <span className="form-text">{''}</span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Profit Center:</FormLabel>
                                        <span className="form-text">South Store</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Channel:</FormLabel>
                                        <span className="form-text">Direct Sales</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Employee:</FormLabel>
                                        <span className="form-text">{''}</span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                </div>
                              </TreeView.Col>
                            </TreeView.Row>
                          </TreeView.Item>
                        </TreeView.Branch>
                      </TreeView.Item>
                      <TreeView.Item>
                        <TreeView.Row>
                          <TreeView.Col>S500527</TreeView.Col>
                          <TreeView.Col>Maintenance</TreeView.Col>
                          <TreeView.Col>Material</TreeView.Col>
                          <TreeView.Col>179.00</TreeView.Col>
                          <TreeView.Col>hour(s)</TreeView.Col>
                          <TreeView.Col>50.00 USD</TreeView.Col>
                          <TreeView.Col>0.00</TreeView.Col>
                          <TreeView.Col>0.00</TreeView.Col>
                          <TreeView.Col>0.00 USD</TreeView.Col>
                          <TreeView.Col>8,950.00 USD</TreeView.Col>
                        </TreeView.Row>
                        <TreeView.Branch>
                          <TreeView.Item>
                            <TreeView.Row>
                              <TreeView.Col>
                                <h3 className="fd-action-bar__title" style={{ margin: '20px 0' }}>
                                  Products
                                </h3>
                                <div class="fd-container">
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">AD Group Id:</FormLabel>
                                        <span className="form-text">
                                          2010 Group of Account Receivables
                                        </span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Warehouse Name:</FormLabel>
                                        <span className="form-text">warehouse 01</span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Remarks:</FormLabel>
                                        <span className="form-text">{''}</span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                </div>
                                <h3 className="fd-action-bar__title" style={{ margin: '20px 0' }}>
                                  Dimensions
                                </h3>
                                <div class="fd-container" style={{ marginBottom: '20px' }}>
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Product:</FormLabel>
                                        <span className="form-text">Maintenance</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Customer:</FormLabel>
                                        <span className="form-text">Silverstar Wholesale Corp</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Project:</FormLabel>
                                        <span className="form-text">Project D</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Department:</FormLabel>
                                        <span className="form-text">Project D</span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Product Group:</FormLabel>
                                        <span className="form-text">warehouse 01</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Region:</FormLabel>
                                        <span className="form-text">North US</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Cost Center:</FormLabel>
                                        <span className="form-text">{''}</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Cashflow:</FormLabel>
                                        <span className="form-text">{''}</span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                  <div className="fd-col--4">
                                    <FormSet>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Profit Center:</FormLabel>
                                        <span className="form-text">South Store</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Channel:</FormLabel>
                                        <span className="form-text">Direct Sales</span>
                                      </FormItem>
                                      <FormItem>
                                        <FormLabel htmlFor="select-1">Employee:</FormLabel>
                                        <span className="form-text">{''}</span>
                                      </FormItem>
                                    </FormSet>
                                  </div>
                                </div>
                              </TreeView.Col>
                            </TreeView.Row>
                          </TreeView.Item>
                        </TreeView.Branch>
                      </TreeView.Item>
                    </TreeView.Tree>
                  </TreeView>
                </section>
              </Tab>
              <Tab key="tab3" id="3" title="Logistics">
                <section className="fd-section">
                  Lorem ipsum dolor sit amet consectetur adipisicing elit.
                </section>
              </Tab>
              <Tab key="tab4" id="4" title="Related Documents">
                <section className="fd-section">
                  Lorem ipsum dolor sit amet consectetur adipisicing elit.
                </section>
              </Tab>
              <Tab key="tab5" id="5" title="Accounting">
                <section className="fd-section">
                  Lorem ipsum dolor sit amet consectetur adipisicing elit.
                </section>
              </Tab>
            </TabGroup>
          </div>
        </article>
      </div>
    );
  }
}

/* istanbul ignore next */
function mapStateToProps(state) {
  return {
    ${_.camelCase(name)}: state.${_.camelCase(name)},
  };
}

/* istanbul ignore next */
function mapDispatchToProps(dispatch) {
  return {
    actions: bindActionCreators({ ...actions }, dispatch)
  };
}

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(EditView);