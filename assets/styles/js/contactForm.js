const contactForm = document.getElementById('contactForm');

contactForm.addEventListener('submit', (event) => {
  event.preventDefault();

  const nom = document.getElementById('nom').value;
  const prenom = document.getElementById('prenom').value;
  const email = document.getElementById('email').value;
  const telephone = document.getElementById('telephone').value;
  const message = document.getElementById('message').value;

  // Log the form data 
  console.log('Nom:', nom);
  console.log('Prénom:', prenom);
  console.log('E-mail:', email);
  console.log('Téléphone:', telephone);
  console.log('Message:', message);

  alert('Formulaire envoyé !');  
});


