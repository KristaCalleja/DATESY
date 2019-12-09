const initMatchForms = () => {
  const matchRejectForms = document.querySelectorAll('.match-reject-form');

  matchRejectForms.forEach((matchRejectForm) => {
    matchRejectForm.addEventListener("submit", (event) => {
      // find your relevant form
      const currentForm = event.currentTarget;
      // find your relevant card
      const card = currentForm.closest('.card');
      // remove it from the page
      card.classList.add('removed');
    });
  })
}

export { initMatchForms };
