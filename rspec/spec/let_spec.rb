describe 'somar' do
    context 'somar dois numeros' do
        #pode usar varios lets
        let(:resultado) { 4 + 4 }
        let(:res) {resultado + 4}
        it 'does something' do
            expect(resultado).to eq 8
            expect(res).to eq 12
            puts 'testando essa porra '
        end
    end
end