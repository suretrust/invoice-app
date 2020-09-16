require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:product) { build :product }

  describe '::associations' do
    it 'belongs to invoice' do
      assc = described_class.reflect_on_association(:invoice)
      expect(assc.macro).to eq :belongs_to
    end
  end
  
  describe '::validations' do
    context 'invoice' do
      it 'is invalid when missing' do
        product.invoice = nil
        expect(product.valid?).to be false
      end
  
      it 'is valid when present' do
        expect(product.valid?).to be true
      end
    end

    context 'name' do
      it 'is invalid when missing' do
        product.name = nil
        expect(product.valid?).to be false
      end

      it 'is valid when present' do
        expect(product.valid?).to be true
      end
    end

    context 'price' do
      it 'is invalid when missing' do
        product.price = nil
        expect(product.valid?).to be false
      end

      it 'is valid when present' do
        expect(product.valid?).to be true
      end
    end

    context 'quantity' do
      it 'is invalid when missing' do
        product.quantity = nil
        expect(product.valid?).to be false
      end

      it 'is valid when present' do
        expect(product.valid?).to be true
      end
    end
  end
end
