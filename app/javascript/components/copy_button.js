import Swal from 'sweetalert2';

const initCopyButton = () => {
  const copyToClipboard = (event) => {
    /* Get the text field */
    var copyText = document.querySelector(event.currentTarget.dataset.target);

    /* Select the text field */
    copyText.select();
    copyText.setSelectionRange(0, 99999); /*For mobile devices*/

    /* Copy the text inside the text field */
    document.execCommand("copy");

    /* Alert the copied text */
    Swal.fire({
      title: 'Copied invite link!',
      html: 'Send to your matchmaker ;-)',
      timer: 1500,
    })
  }

  const copyButtons = document.querySelectorAll('.copy-button');
  copyButtons.forEach((button) => {
    button.addEventListener('click', copyToClipboard)
  })
};

export { initCopyButton };
