chai = require "chai"
should = chai.should()
debug = require("debug")("report-viewer-tester")

trueval = true 
console.log "normal string before test"
describe "test", ->
  console.log "normal string in test"
  it "should succeed", ->
    console.log "normal string in first test"
    trueval.should.be.true
  it "should fail", ->
    debug "debug string in second test"
    trueval.should.be.false
  it "should throw a error", ->
    throw new Error("Wow such error")
  describe "second level", ->
    it "should work", ->
      trueval.should.be.true
    it "should be cool with slow tests", (done) ->
      setTimeout done, 100