# Image Gallery Website

This is a web gallery where visitors can browse and download images for free. Images are grouped into categories such as nature, animals, fantasy, food, and travel. Visitors can look through the gallery by category, view all collections as cards, and click an image to download it right away.

The site also has informational pages (About, Credit, News, and Contact), user registration, and a separate administrator area with its own login. Image data is stored in a MySQL database and read with PHP (PDO).

Built as a university web programming project.

## Features

- Home page with featured images
- Gallery and Collections pages to browse images by category
- Category page that lists all images in a category, with one-click download
- Registration and login (administrator area)
- Additional pages: About, Credit, News, and Contact
- Responsive layout with a Bootstrap navbar
- Script to import images from the `Images/` folders into the database automatically

## Pages

| Page | URL |
|------|-----|
| Home | `index.php` |
| Gallery | `index.php?page=Gallery` |
| Collections | `index.php?page=Collections` |
| Category content | `index.php?page=content&id=CategoryName` |
| About | `index.php?page=About` |
| Credit | `index.php?page=credit` |
| News | `index.php?page=news` |
| Contact | `index.php?page=contact` |
| Register | `index.php?page=register` |
| Administrator login | `administrator/index.php` |

## Image Categories

Animals, Animation, Christmas, Decorative, Fantasy, Food, Game, Horror, Music, Nature, Photography, Sports, Travel

## Database

| Table | Columns | Purpose |
|-------|---------|---------|
| `imgallery` | category, imgpath, description | One row per category, used for the home page and collections |
| `images` | img_name, category, imagepath | One row per image file |

The `images` table is filled by the import script, which scans each folder in `Images/` and inserts every `.jpg`, `.jpeg`, `.png`, and `.gif` file with its category.

## Tech Stack

| Area | Technology |
|------|------------|
| Backend | PHP (PDO) |
| Database | MySQL |
| Frontend | HTML, CSS, JavaScript, Bootstrap |
| Icons | Font Awesome |
| Local server | XAMPP (Apache and MySQL) |
