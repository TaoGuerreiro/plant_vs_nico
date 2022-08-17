Garden.destroy_all if Rails.env.development?

Garden.create!(
  name: "My Little Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

Garden.create!(
  name: "My Other Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)

jdp = Garden.create!(
  name: "Jardin des plantes",
  banner_url: "https://www.my-loire-valley.com/wp-content/uploads/2018/05/Claude_Ponti_au_jardin_des_plantes_de_nantesccJP-Dalbera.jpg"
)

Plant.create!({
                name: "Cactus",
                image_url: "https://www.jardiner-malin.fr/wp-content/uploads/2021/12/Cactophile-cactus-succulente.jpg",
                garden: jdp
              })
