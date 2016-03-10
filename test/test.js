var request = require('supertest');
var express = require('express');

var server = require('../server.js');

describe('GET', function() {
    it('respond with 200 OK', function(done) {
        request(server)
            .get('/')
            .expect(200, done);
    });
});
