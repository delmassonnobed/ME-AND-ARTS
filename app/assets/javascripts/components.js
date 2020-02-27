const startCountDown = () => {
  const countdown = document.querySelector("#countdown");
  if (countdown) {
    setInterval(() => {
      const end_date = new Date(countdown.dataset.bidEndsAt).getTime();
      const now = Date.now();
      const hours_left = Math.floor((end_date - now) / (1000 * 60 * 60));
      const minutes_left = Math.floor(((end_date - now) % (1000 * 60 * 60)) / (1000 * 60));
      const seconds_left = Math.floor((((end_date - now) % (1000 * 60 * 60)) % (1000 * 60)) / 1000);
      countdown.innerText = `${hours_left}:${minutes_left}:${seconds_left}`;
      }
    , 1000)
  }
}export { startCountDown };
