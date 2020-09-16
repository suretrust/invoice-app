require 'rails_helper'

RSpec.describe Client, type: :model do
  let(:client) { build :client }

  describe '::associations' do
    it 'belongs to invoice' do
      assc = described_class.reflect_on_association(:invoice)
      expect(assc.macro).to eq :belongs_to
    end
  end
  
  describe '::validations' do
    context 'invoice' do
      it 'is invalid when missing' do
        client.invoice = nil
        expect(client.valid?).to be false
      end
  
      it 'is valid when present' do
        expect(client.valid?).to be true
      end
    end

    context 'name' do
      it 'is invalid when missing' do
        client.name = nil
        expect(client.valid?).to be false
      end

      it 'is valid when present' do
        expect(client.valid?).to be true
      end
    end

    context 'address_one' do
      it 'is invalid when missing' do
        client.address_one = nil
        expect(client.valid?).to be false
      end

      it 'is valid when present' do
        expect(client.valid?).to be true
      end
    end

    context 'address_two' do
      it 'is invalid when missing' do
        client.address_two = nil
        expect(client.valid?).to be false
      end

      it 'is valid when present' do
        expect(client.valid?).to be true
      end
    end

    context 'phone_number' do
      it 'is invalid when missing' do
        client.phone_number = nil
        expect(client.valid?).to be false
      end

      it 'is valid when present' do
        expect(client.valid?).to be true
      end
    end
  end
end
