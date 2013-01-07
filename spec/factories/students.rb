FactoryGirl.define do
  factory :student do
    first_name "Hernan Enrique"
    second_name "Orozco Picalua"
    type_id "Cedula de ciudadania"
    number_id "1045709862"
    birthdate "1992-04-23 09:57:00"
    birthplace "Barranquilla"
    email "horozco@example.com"
    phone_number "3481383"
    cellphone_number "3013608600"
    address "trv25 a No. 108-98"
    latitude 1.5
    longitude 1.5
    grade_id 1
    house_members "Madre, padre, hermanos"
    number_of_brothers 3
    age_position 1
    type_of_health "Eps"
    name_health "Sura"
    physical_problems "Miopia, actismatismo"
    allergies "ninguna"
    medicines "Acido folico"
    observations "Observaciones"
  end
end
