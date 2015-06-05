require 'spec_helper'

describe "StaticPages" do

    describe "Home Page" do
        it "should have the content 'Публічні діячі'" do
            visit '/static_pages/home'
            expect(page).to have_content('Публічні діячі')
        end

        it "should have the right title" do
        	visit '/static_pages/home'
        	expect(page).to have_title('Публічні Діячі України | Домівка')
        end
    end

    describe "Help Page" do
    	it "should have the content 'Допомога'" do
    		visit '/static_pages/help'
    		expect(page).to have_content('Допомога')
    	end

    	it "should have the right title" do
        	visit '/static_pages/help'
        	expect(page).to have_title('Публічні Діячі України | Допомога')
        end
    end

    describe "About Page" do
    	it "Should have the content 'Про нас'" do
    		visit '/static_pages/about'
    		expect(page).to have_content('Про нас')
    	end

    	it "should have the right title" do
        	visit '/static_pages/about'
        	expect(page).to have_title('Публічні Діячі України | Про Нас')
        end
    end

    describe "Info Page" do
    	it "Should have the content 'Інформація'" do
    		visit '/static_pages/info'
    		expect(page).to have_content('Інформація')
    	end

    	it "Should have the right title" do
    		visit '/static_pages/info'
    		expect(page).to have_title('Публічні Діячі України | Інформація')
    	end
    end

    describe "Credits Page" do
    	it "Should have the content 'Контактна інформація'" do
    		visit '/static_pages/contacts'
    		expect(page).to have_content('Контактна інформація')
    	end

    	it "Should have the right title" do
    		visit '/static_pages/contacts'
    		expect(page).to have_content('Публічні Діячі України | Контакти')
    	end
    end
end
