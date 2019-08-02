
"use strict";

let AddTwoInts = require('./AddTwoInts.js')
let TestNestedService = require('./TestNestedService.js')
let TestEmpty = require('./TestEmpty.js')
let SendBytes = require('./SendBytes.js')
let TestRequestAndResponse = require('./TestRequestAndResponse.js')
let TestMultipleRequestFields = require('./TestMultipleRequestFields.js')
let TestRequestOnly = require('./TestRequestOnly.js')
let TestMultipleResponseFields = require('./TestMultipleResponseFields.js')
let TestArrayRequest = require('./TestArrayRequest.js')
let TestResponseOnly = require('./TestResponseOnly.js')

module.exports = {
  AddTwoInts: AddTwoInts,
  TestNestedService: TestNestedService,
  TestEmpty: TestEmpty,
  SendBytes: SendBytes,
  TestRequestAndResponse: TestRequestAndResponse,
  TestMultipleRequestFields: TestMultipleRequestFields,
  TestRequestOnly: TestRequestOnly,
  TestMultipleResponseFields: TestMultipleResponseFields,
  TestArrayRequest: TestArrayRequest,
  TestResponseOnly: TestResponseOnly,
};
