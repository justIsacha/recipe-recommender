async function fetchRecipes() {
  let res = await fetch("http://127.0.0.1:5000/recipes");
  let data = await res.json();
  displayRecipes(data);

  document.getElementById("search").addEventListener("input", () => {
    filterRecipes(data);
  });

  document.getElementById("categoryFilter").addEventListener("change", () => {
    filterRecipes(data);
  });
}

function displayRecipes(recipes) {
  let container = document.getElementById("recipeContainer");
  container.innerHTML = "";
  recipes.forEach(r => {
    let card = `
      <div class="card">
        <img src="${r.image_url.replace(/ /g, '_')}" alt="${r.title}">
        <div class="card-content">
          <h3>${r.title}</h3>
          <p>${r.description}</p>
          <small><b>Category:</b> ${r.category}</small>
        </div>
      </div>
    `;
    container.innerHTML += card;
  });
}

function filterRecipes(recipes) {
  let search = document.getElementById("search").value.toLowerCase();
  let category = document.getElementById("categoryFilter").value;

  let filtered = recipes.filter(r => 
    r.title.toLowerCase().includes(search) &&
    (category === "all" || r.category.toLowerCase() === category)
  );

  displayRecipes(filtered);
}

fetchRecipes();
