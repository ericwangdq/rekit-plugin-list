import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { bindActionCreators } from 'redux';
import { connect } from 'react-redux';
import { Link } from 'react-router-dom';
import * as actions from './redux/actions';
import {
  Table,
  Status,
  Panel,
  Button,
  ButtonGroup,
  Pagination,
  FormSet,
  FormItem,
  FormLabel,
  FormInput,
  SearchInput,
  // FormSelect,
  MultiInput,
  ActionBar,
  DatePicker,
} from 'fundamental-react';

export class ListView extends Component {
  static propTypes = {
    ${_.camelCase(name)}: PropTypes.object.isRequired,
    actions: PropTypes.object.isRequired,
  };

  render() {
    return (
      <div className="list-view ${_.kebabCase(name)}-list-view">
        <article className="fd-page">
          <header className="fd-page__header fd-has-background-color-background-2">
            <ActionBar>
              <ActionBar.Header description="" title="${_.kebabCase(name)}" />
              <ActionBar.Actions>{}</ActionBar.Actions>
            </ActionBar>
            <div className="fd-container fd-container--fluid" style={{ marginBottom: '15px' }}>
              <div className="fd-col--2">
                <FormSet>
                  <FormItem>
                    <FormLabel htmlFor="input-1">Search</FormLabel>
                    <SearchInput
                      onEnter={function w() {}}
                      placeholder="Enter a fruit"
                      searchList={[
                        {
                          callback: function w() {},
                          text: 'apple',
                        },
                        {
                          callback: function w() {},
                          text: 'apricot',
                        },
                        {
                          callback: function w() {},
                          text: 'banana',
                        },
                        {
                          callback: function w() {},
                          text: 'blueberry',
                        },
                        {
                          callback: function w() {},
                          text: 'blackberry',
                        },
                        {
                          callback: function w() {},
                          text: 'calabash',
                        },
                        {
                          callback: function w() {},
                          text: 'clementines',
                        },
                        {
                          callback: function w() {},
                          text: 'kiwi',
                        },
                        {
                          callback: function w() {},
                          text: 'orange',
                        },
                      ]}
                    />
                  </FormItem>
                </FormSet>
              </div>
              <div className="fd-col--2">
                <FormSet>
                  <FormItem>
                    <FormLabel htmlFor="select-1">Customer</FormLabel>
                    <MultiInput
                      data={[
                        'Apple',
                        'Apricot',
                        'Acai',
                        'African Moringa',
                        'Bearberry',
                        'Bilberry',
                        'Blood orange',
                        'Barbadine',
                        'Barbados cherry',
                        'Balsam Apple',
                        'Chokeberry',
                        'Cranberry',
                        'Cupuacu',
                      ]}
                      onTagsUpdate={function w() {}}
                      placeHolder="Select a Fruit"
                    />
                  </FormItem>
                </FormSet>
              </div>
              <div className="fd-col--2">
                <FormSet>
                  <FormItem>
                    <FormLabel htmlFor="select-1">Document Number</FormLabel>
                    <FormInput id="input-1" placeholder="Field placeholder text" type="text" />
                  </FormItem>
                </FormSet>
              </div>
              <div className="fd-col--2">
                <FormSet>
                  <FormItem>
                    <FormLabel htmlFor="select-1">Document Date</FormLabel>
                    {/* <FormSelect id="select-1">
                      <option value="1">Duis malesuada odio volutpat elementum</option>
                      <option value="2">Suspendisse ante ligula</option>
                      <option value="3">Sed bibendum sapien at posuere interdum</option>
                    </FormSelect> */}
                    <DatePicker disableBeforeDate={new Date('2018-12-23T16:00:00.000Z')} />
                  </FormItem>
                </FormSet>
              </div>
              <div className="fd-col--2">
                <FormSet>
                  <FormItem>
                    <FormLabel htmlFor="select-1">Posting Date</FormLabel>
                    <DatePicker disableBeforeDate={new Date('2018-12-23T16:00:00.000Z')} />
                    {/* <FormInput id="input-1" placeholder="Field placeholder text" type="text" /> */}
                  </FormItem>
                </FormSet>
              </div>
              <div className="fd-col--2" style={{ paddingTop: '35px' }}>
                <span className="fd-has-float-right">
                  <Button onClick={function w() {}} option="light">
                    Filters(3)
                  </Button>
                  <Button glyph="action" option="light" />
                </span>
              </div>
            </div>
          </header>
          <div className="fd-page__content fd-has-background-color-neutral-2 fd-has-padding-small">
            <Panel>
              <Panel.Header>
                <Panel.Head description="" title="Work Items (25)" />
                <Panel.Actions>
                  <Button glyph="sort" compact />
                  <Button glyph="download" compact />
                  <Button glyph="action-settings" compact />
                  <ButtonGroup>
                    <Button glyph="list" selected compact />
                    <Button glyph="line-charts" compact />
                  </ButtonGroup>
                </Panel.Actions>
              </Panel.Header>
              <Panel.Body>
                <Table
                  headers={[
                    <input type="checkbox" />,
                    'Document Number',
                    'Business Partner Name',
                    'Posting Date',
                    'Due Date',
                    'Gross Total',
                    'Open Amount',
                    'Status',
                  ]}
                  tableData={[
                    {
                      rowData: [
                        <input type="checkbox" />,
                        <Link to="/${_.kebabCase(name)}/view/ARI-20332">ARI-20332</Link>,
                        'Silverstar Wholesale Corp',
                        '2019/05/03',
                        '2019/06/02',
                        '8,950.00 USD',
                        '8,950.00 USD',
                        <Status type="success">Open</Status>,
                      ],
                    },
                    {
                      rowData: [
                        <input type="checkbox" />,
                        <Link to="/${_.kebabCase(name)}/view/ARI-20332">ARI-20332</Link>,
                        'Silverstar Wholesale Corp',
                        '2019/05/03',
                        '2019/06/02',
                        '8,950.00 USD',
                        '8,950.00 USD',
                        <Status>Closed</Status>,
                      ],
                    },
                    {
                      rowData: [
                        <input type="checkbox" />,
                        <Link to="/${_.kebabCase(name)}/view/ARI-20332">ARI-20332</Link>,
                        'Silverstar Wholesale Corp',
                        '2019/05/03',
                        '2019/06/02',
                        '8,950.00 USD',
                        '8,950.00 USD',
                        <Status type="success">Open</Status>,
                      ],
                    },
                    {
                      rowData: [
                        <input type="checkbox" />,
                        <Link to="/${_.kebabCase(name)}/view/ARI-20332">ARI-20332</Link>,
                        'Silverstar Wholesale Corp',
                        '2019/05/03',
                        '2019/06/02',
                        '8,950.00 USD',
                        '8,950.00 USD',
                        <Status type="success">Open</Status>,
                      ],
                    },
                    {
                      rowData: [
                        <input type="checkbox" />,
                        <Link to="/${_.kebabCase(name)}/view/ARI-20332">ARI-20332</Link>,
                        'Silverstar Wholesale Corp',
                        '2019/05/03',
                        '2019/06/02',
                        '8,950.00 USD',
                        '8,950.00 USD',
                        <Status>Closed</Status>,
                      ],
                    },
                    {
                      rowData: [
                        <input type="checkbox" />,
                        <Link to="/${_.kebabCase(name)}/view/ARI-20332">ARI-20332</Link>,
                        'Silverstar Wholesale Corp',
                        '2019/05/03',
                        '2019/06/02',
                        '8,950.00 USD',
                        '8,950.00 USD',
                        <Status type="success">Open</Status>,
                      ],
                    },
                    {
                      rowData: [
                        <input type="checkbox" />,
                        <Link to="/${_.kebabCase(name)}/view/ARI-20332">ARI-20332</Link>,
                        'Silverstar Wholesale Corp',
                        '2019/05/03',
                        '2019/06/02',
                        '8,950.00 USD',
                        '8,950.00 USD',
                        <Status>Closed</Status>,
                      ],
                    },
                    {
                      rowData: [
                        <input type="checkbox" />,
                        <Link to="/${_.kebabCase(name)}/view/ARI-20332">ARI-20332</Link>,
                        'Silverstar Wholesale Corp',
                        '2019/05/03',
                        '2019/06/02',
                        '8,950.00 USD',
                        '8,950.00 USD',
                        <Status type="success">Open</Status>,
                      ],
                    },
                    {
                      rowData: [
                        <input type="checkbox" />,
                        <Link to="/${_.kebabCase(name)}/view/ARI-20332">ARI-20332</Link>,
                        'Silverstar Wholesale Corp',
                        '2019/05/03',
                        '2019/06/02',
                        '8,950.00 USD',
                        '8,950.00 USD',
                        <Status type="success">Open</Status>,
                      ],
                    },
                    {
                      rowData: [
                        <input type="checkbox" />,
                        <Link to="/${_.kebabCase(name)}/view/ARI-20332">ARI-20332</Link>,
                        'Silverstar Wholesale Corp',
                        '2019/05/03',
                        '2019/06/02',
                        '8,950.00 USD',
                        '8,950.00 USD',
                        <Status>Closed</Status>,
                      ],
                    },
                    {
                      rowData: [
                        <input type="checkbox" />,
                        <Link to="/${_.kebabCase(name)}/view/ARI-20332">ARI-20332</Link>,
                        'Silverstar Wholesale Corp',
                        '2019/05/03',
                        '2019/06/02',
                        '8,950.00 USD',
                        '8,950.00 USD',
                        <Status type="success">Open</Status>,
                      ],
                    },
                    {
                      rowData: [
                        <input type="checkbox" />,
                        <Link to="/${_.kebabCase(name)}/view/ARI-20332">ARI-20332</Link>,
                        'Silverstar Wholesale Corp',
                        '2019/05/03',
                        '2019/06/02',
                        '8,950.00 USD',
                        '8,950.00 USD',
                        <Status>Closed</Status>,
                      ],
                    },
                    {
                      rowData: [
                        <input type="checkbox" />,
                        <Link to="/${_.kebabCase(name)}/view/ARI-20332">ARI-20332</Link>,
                        'Silverstar Wholesale Corp',
                        '2019/05/03',
                        '2019/06/02',
                        '8,950.00 USD',
                        '8,950.00 USD',
                        <Status type="success">Open</Status>,
                      ],
                    },
                    {
                      rowData: [
                        <input type="checkbox" />,
                        <Link to="/${_.kebabCase(name)}/view/ARI-20332">ARI-20332</Link>,
                        'Silverstar Wholesale Corp',
                        '2019/05/03',
                        '2019/06/02',
                        '8,950.00 USD',
                        '8,950.00 USD',
                        <Status type="success">Open</Status>,
                      ],
                    },
                    {
                      rowData: [
                        <input type="checkbox" />,
                        <Link to="/${_.kebabCase(name)}/view/ARI-20332">ARI-20332</Link>,
                        'Silverstar Wholesale Corp',
                        '2019/05/03',
                        '2019/06/02',
                        '8,950.00 USD',
                        '8,950.00 USD',
                        <Status>Closed</Status>,
                      ],
                    },
                  ]}
                />
                <Pagination
                  style={{ margin: '0 0 10px 10px' }}
                  itemsPerPage={25}
                  itemsTotal={100}
                  onClick={function w() {}}
                />
              </Panel.Body>
            </Panel>
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
)(ListView);