# Art Gallery Management System

Art Gallery Management System is a DBMS + web project for managing core gallery operations, including:

- artworks and artists
- collections and exhibitions
- collaborations and affiliations
- branches and visitors
- staff, patrons, buyers, and sellers
- login/user records

This repository includes frontend pages, Node.js/Express server code, and a SQL schema with sample data and queries.

---

## Repository Overview

### 1) Frontend (static webpages)

- `Layout.html` — homepage with navigation
- `All webpages/` — content pages:
  - `Gallery.html`
  - `Artists.html` (+ `script.js` for dynamic artist info rendering)
  - `Collections.html`
  - `Exhibitions.html`
  - `Collaborations.html`
  - `Branches .html`
  - `Affiliations.html`
  - artist-specific collection pages (`sunil_gupta_collection.html`, `ram_kumar_collection.html`, `zaam_arif_collection.html`)

### 2) Registration/Login pages

- `Registration/Login.html`, `Registration/signup.html`
- `Registration/login.js`, `Registration/signup.js` (client-side form validation and redirection)
- `Registration/Form.js` (basic form validation utility)

### 3) Node.js / Express apps

- `Registration/server.js`
  - Starts an Express server (default port `4000`)
  - Reads visitor/user data from MySQL and renders an HTML table at `/`
- `trial/server.js`
  - Additional/experimental Express login server (default port `4001`)
- `Registration/login/`
  - Express app scaffold (includes routes, views, static assets, and DB connector)
  - `database.js` contains MySQL connection settings

### 4) Database assets

- `ArtGallery.sql`
  - Creates the database schema
  - Inserts sample data
  - Includes practice SQL operations/queries (updates, deletes, joins, ranking, views, grants, etc.)
- `ER_DIAGRAM-Page-1.drawio.png` — ER diagram image
- `DBMS Project Report.pdf` — project report document

### 5) Media and supporting assets

- `Images/` — artist, branch, and exhibition images
- `All webpages/Artists/` — artist-page assets
- `ThugSkull.jpg` and other image files used by UI

---

## Tech Stack

- **Frontend:** HTML, CSS, vanilla JavaScript
- **Backend:** Node.js, Express
- **Database:** MySQL
- **Templating (in scaffold app):** EJS

---

## How to Run

> This project is a mix of static pages and backend experiments. You can run it in parts.
### Prerequisites

- Node.js + npm
- MySQL server
- A static server (VS Code Live Server or equivalent) for HTML pages

### Step 1: Database setup

1. Create/open MySQL.
2. Run `ArtGallery.sql` to create schema and seed sample data.

### Step 2: Install backend dependencies

Dependencies are defined in:

- `Registration/login/package.json`

Install with:

```bash
cd Registration/login
npm install
```

### Step 3: Configure database connection

Edit:

- `Registration/login/database.js`

Set:

- host
- user
- password
- database

to match your local MySQL setup.

### Step 4: Run backend server(s)

Option A (visitor/user details service):

```bash
node Registration/server.js
```

Runs at `http://localhost:4000/` by default.

Option B (login scaffold app):

```bash
cd Registration/login
npm start
```

Runs at `http://localhost:3000/` by default.

### Step 5: Open frontend

Open `Layout.html` through a local static server and navigate across pages.

---

## Database Coverage

`ArtGallery.sql` defines major entities such as:

- `Gallery`
- `Artists`
- `Artworks`
- `Collections`
- `Exhibitions`
- `Collaborations`
- `Visitors`
- `Branches`
- `Affiliations`
- `Curators`
- `Staff`
- `PRM`
- additional project/employee mapping tables

It also includes representative query tasks such as:

- filtering exhibitions by date
- ranking staff salaries
- top patrons
- joins between galleries and affiliations
- set operations (`UNION`, `INTERSECT`)
- view creation
- privilege grant example

---

## Important Notes

- This repository currently contains multiple overlapping login implementations (`Registration/`, `Registration/login/`, `trial/`), likely from iterative development.
- Some flows are static/demo style and rely on page redirects rather than complete production-grade auth.
- `Registration/login/node_modules/` is present in the repo (normally excluded via `.gitignore` in production projects).

---

## Suggested Starting Points

- For UI walkthrough: start from `Layout.html`
- For database work: start with `ArtGallery.sql`
- For backend/API experimentation: start with `Registration/server.js`
