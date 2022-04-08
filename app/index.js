    window.addEventListener("DOMContentLoaded", () => {
      console.log("Laoded!");
  
      const deleteBtnClickHandler = (event) => {
        if (!confirm('Are you sure?')) { return false }
        fetch("/delete-news", {
          method: "POST",
          headers: {
            Accept: "application/json",
            "Content-Type": "application/json",
          },
          body: JSON.stringify({ id: event.currentTarget.id }),
        })
          .then(() => {
            window.location.reload();
          })
          .catch((err) => console.log("Error in deleting news"));
      };
  
      const deleteBtnArr = document.getElementsByClassName("delete");
  
      Array.from(deleteBtnArr).forEach((btn) => {
        btn.addEventListener("click", deleteBtnClickHandler);
      });
    });
