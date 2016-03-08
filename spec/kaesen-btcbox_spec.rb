require 'spec_helper'

describe Kaesen::Btcbox do
  it 'should get ticker' do
    m = Kaesen::Btcbox.new()
    ticker = m.ticker
    print ticker

    expect(ticker.class).to eq Hash
    expect(ticker["ask"].class).to eq BigDecimal
    expect(ticker["bid"].class).to eq BigDecimal
    expect(ticker["last"].class).to eq BigDecimal
    expect(ticker["high"].class).to eq BigDecimal
    expect(ticker["low"].class).to eq BigDecimal
    expect(ticker["volume"].class).to eq BigDecimal
    expect(ticker["ltimestamp"].class).to eq Fixnum
  end

  it 'should get depth' do
    m = Kaesen::Btcbox.new()
    depth = m.depth
    print depth

    expect(depth.class).to eq Hash
    expect(depth["asks"].class).to eq Array
    expect(depth["asks"][0].class).to eq Array
    expect(depth["asks"][1].class).to eq Array

    expect(depth["asks"][0][0].class).to eq BigDecimal
    expect(depth["asks"][0][1].class).to eq BigDecimal

    expect(depth["asks"][1][0].class).to eq BigDecimal
    expect(depth["asks"][1][1].class).to eq BigDecimal

    expect(depth["bids"].class).to eq Array

    expect(depth["bids"][0].class).to eq Array
    expect(depth["bids"][1].class).to eq Array

    expect(depth["bids"][0][0].class).to eq BigDecimal
    expect(depth["bids"][0][1].class).to eq BigDecimal

    expect(depth["bids"][1][0].class).to eq BigDecimal
    expect(depth["bids"][1][1].class).to eq BigDecimal
  end

  it 'should get balance' do
    m = Kaesen::Btcbox.new()
    balance = m.balance
    print balance

    expect(balance.class).to eq Hash

    expect(balance["jpy"].class).to eq Hash
    expect(balance["btc"].class).to eq Hash
    expect(balance["ltimestamp"].class).to eq Fixnum

    expect(balance["jpy"]["amount"].class).to eq BigDecimal
    expect(balance["jpy"]["available"].class).to eq BigDecimal

    expect(balance["btc"]["amount"].class).to eq BigDecimal
    expect(balance["btc"]["available"].class).to eq BigDecimal
  end

  # it 'should buy some bitcoin' do
  #   m = Kaesen::Btcbox.new()
  #   result = m.buy(30000, 0.01)
  #   print result
  #
  #   expect(result.class).to eq Hash
  #
  #   expect(result["success"].class).to eq String
  #   expect(result["id"].class).to eq String
  #   expect(result["rate"].class).to eq BigDecimal
  #   expect(result["amount"].class).to eq BigDecimal
  #   expect(result["order_type"].class).to eq String
  #   expect(result["ltimestamp"].class).to eq Fixnum
  # end
  #
  # it 'should sell some bitcoin' do
  #   m = Kaesen::Btcbox.new()
  #   result = m.sell(60000, 0.01)
  #   print result
  #
  #   expect(result.class).to eq Hash
  #
  #   expect(result["success"].class).to eq String
  #   expect(result["id"].class).to eq String
  #   expect(result["rate"].class).to eq BigDecimal
  #   expect(result["amount"].class).to eq BigDecimal
  #   expect(result["order_type"].class).to eq String
  #   expect(result["ltimestamp"].class).to eq Fixnum
  # end
end