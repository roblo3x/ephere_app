require('@rails/ujs').start()
require('turbolinks').start()
require('@rails/activestorage').start()
require('channels')

let componentRequireContext = require.context("components", true);
let ReactRailsUJS = require("react_ujs");
ReactRailsUJS.useContext(componentRequireContext);

//= require popper
//= require bootstrap-sprockets

import $ from 'jquery';

import './my/app/index';