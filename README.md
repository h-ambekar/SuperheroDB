### **📌 Superhero Database**  
A **Ruby on Rails** application that allows users to explore a vast collection of **Marvel & DC superheroes**, including their **appearances in movies, TV shows, and video games**.

---

## **🚀 Features**
| Feature               | Description |
|----------------------|------------|
| 🦸 **Superhero Profiles** | Displays names, images, origins, and affiliations of superheroes. |
| 🎬 **Movie & TV Show Info** | Links superheroes to their appearances in movies and TV shows. |
| 🔍 **Search & Filtering** | Allows users to search for heroes and filter results by publisher. |
| ❤️ **Like & Save** *(Coming Soon!)* | Users can "like" superheroes and save their favorites. |
| 📜 **Pagination** | Ensures smooth browsing of a large dataset. |

---

## **📊 Data Sources**
This project collects **superhero information** from multiple sources:
1. **Superhero API** – Provides superhero data (names, images, affiliations).
2. **Faker Gem** – Generates **fake data** for additional details.
3. **CSV File (Upcoming Feature)** – Potentially used for importing **additional** character information.

---

## **🛠️ Technologies Used**
- **Ruby on Rails 8**
- **Bootstrap 5**
- **PostgreSQL / SQLite**
- **Superhero API**
- **Faker Gem**
- **Kaminari** (Pagination)
- **FontAwesome** (Icons)
- **Git & GitHub** (Version Control)

---

## **⚙️ Installation & Setup**
### **📥 Prerequisites**
Ensure you have the following installed:
- **Ruby (>= 3.0)**
- **Rails (>= 8.0)**
- **PostgreSQL** or **SQLite**

### **🚀 Clone the Repository**
```sh
git clone https://github.com/h-ambekar/SuperheroDB.git
cd SuperheroDB
```

### **📦 Install Dependencies**
```sh
bundle install
```

### **🗃️ Set Up the Database**
```sh
rails db:create
rails db:migrate
rails db:seed
```

### **🚀 Start the Server**
```sh
rails server
```
Now, visit **`http://localhost:3000`** in your browser! 🎉

---

## **📌 Project Structure**
```
SuperheroDB/
│── app/
│   ├── controllers/      # Controllers for handling logic
│   ├── models/           # ActiveRecord models
│   ├── views/            # ERB templates for UI
│── db/
│   ├── migrate/          # Database migrations
│   ├── seeds.rb          # Populating data with API & Faker
│── config/
│── public/
│── Gemfile               # Dependencies
│── README.md             # Project documentation
```

---

## **🖼️ Screenshots**
### **🏠 Homepage**
![Homepage](https://your-image-url/homepage.png)

### **🦸 Superhero Profile**
![Character Show Page](https://your-image-url/character-show.png)

### **🔍 Search & Filtering**
![Search Filter](https://your-image-url/search-filter.png)

---

## **🛠️ Future Improvements**
✔️ **Like & Save Feature** – Users can save their favorite heroes.  
✔️ **More Data Sources** – Adding a third data source (CSV).  
✔️ **Better UI Design** – Improve styling and layout.  
✔️ **Mapping API** – Show superhero origin locations visually.  

---

## **📝 License**
This project is licensed under the **MIT License**.  
Feel free to contribute and improve this project! 🚀

---

## **📬 Contact**
👤 **Harsh Ambekar**  
📧 [Email](mailto:your-email@example.com)  
🔗 [GitHub](https://github.com/h-ambekar/SuperheroDB)

---

### **⭐ If you like this project, please give it a star on GitHub! ⭐**  
Let me know if you need modifications! 🚀