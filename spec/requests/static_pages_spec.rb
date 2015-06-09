require 'spec_helper'

describe "StaticPages" do
    subject { page }
	
    describe "Home Page" do
        before { visit root_path }

        it { should have_content('Публічні діячі') }
        it { should have_title(full_title('')) }
        it { should_not have_title('| Домівка') }
    end

    describe "Help Page" do
        before { visit help_path }    

    	it { should have_content('Допомога') }
        it { should have_title(full_title('Допомога')) }
    end

    describe "About Page" do
        before { visit about_path }

    	it { should have_content('Про нас') }
        it { should have_title(full_title('Про Нас')) }
    end

    describe "Info Page" do
        before { visit info_path }

    	it { should have_content('Інформація') }
        it { should have_title(full_title('Інформація')) }
    end

    describe "Contacts Page" do
        before { visit contacts_path }

        it { should have_content('Контактна інформація') }
        it { should have_title(full_title('Контакти')) }
    end

    it "should have the right links on the layout" do
        visit root_path
        click_link "Про Нас"
        expect(page).to have_title(full_title('Про Нас'))
        click_link "Допомога"
        expect(page).to have_title(full_title('Допомога'))
        click_link "Інформація"
        expect(page).to have_title(full_title('Інформація'))
        click_link "Контакти"
        expect(page).to have_title(full_title('Контакти'))
        click_link "Домівка"
        click_link "Зареєструйся зараз!"
        expect(page).to have_title(full_title('Реєстрація'))
        click_link "публічні діячі"
        expect(page).to have_title(full_title(''))
        expect(page).not_to have_title('| Домівка')
    end

end


