window.addEventListener("turbo:load", () => {
  document.addEventListener("submit", (event) => {
    if (event.target && event.target.classList.contains("delete-alertbox")) {
      event.preventDefault();
      const form = event.target; // Store the form that triggered the event

      Swal.fire({
        title: "Are you sure?",
        text: "You won't be able to revert this!",
        icon: "warning",
        showCancelButton: true,
        cancelButtonColor: "#3085d6",
        confirmButtonColor: "#d33",
        confirmButtonText: "Yes, delete it!",
      })
        .then((result) => {
          if (result.isConfirmed) {
            form.submit(); // Submit the stored form
          }
        })
        .catch(() => event.preventDefault());
    }
  });
});
