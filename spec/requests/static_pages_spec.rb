require 'spec_helper'

describe "StaticPages" do

	let(:base_title) { "Публічні Діячі України" }

    describe "Home Page" do
        it "should have the content 'Публічні діячі'" do
            visit '/static_pages/home'
            expect(page).to have_content('Публічні діячі')
        end

        it "should have the right title" do
        	visit '/static_pages/home'
        	expect(page).to have_title("#{base_title} | Домівка")
        end
    end

    describe "Help Page" do
    	it "should have the content 'Допомога'" do
    		visit '/static_pages/help'
    		expect(page).to have_content('Допомога')
    	end

    	it "should have the right title" do
        	visit '/static_pages/help'
        	expect(page).to have_title("#{base_title} | Допомога")
        end
    end

    describe "About Page" do
    	it "Should have the content 'Про нас'" do
    		visit '/static_pages/about'
    		expect(page).to have_content('Про нас')
    	end

    	it "should have the right title" do
        	visit '/static_pages/about'
        	expect(page).to have_title("#{base_title} | Про Нас")
        end
    end

    describe "Info Page" do
    	it "Should have the content 'Інформація'" do
    		visit '/static_pages/info'
    		expect(page).to have_content('Інформація')
    	end

    	it "Should have the right title" do
    		visit '/static_pages/info'
    		expect(page).to have_title("#{base_title} | Інформація")
    	end
    end

    describe "Contacts Page" do
    	it "Should have the content 'Контактна інформація'" do
    		visit '/static_pages/contacts'
    		expect(page).to have_content('Контактна інформація')
    	end

    	it "Should have the right title" do
    		visit '/static_pages/contacts'
    		expect(page).to have_title("#{base_title} | Контакти")
    	end
    end
end
