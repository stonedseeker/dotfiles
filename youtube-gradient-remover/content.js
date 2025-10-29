function removeGradients() {
    ['ytp-gradient-top', 'ytp-gradient-bottom'].forEach(className => {
      document.querySelectorAll('.' + className).forEach(el => el.remove());
    });
  }
  
  // Remove gradients immediately
  removeGradients();
  
  // Also observe and remove them if they get re-added later (YouTube is dynamic)
  const observer = new MutationObserver(() => removeGradients());
  observer.observe(document.body, { childList: true, subtree: true });
  