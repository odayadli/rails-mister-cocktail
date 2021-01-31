import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["The really important things are said over COCKTAILS", "AND ARE NEVER DONE"],
    typeSpeed: 70,
    loop: true
  });
}

export { loadDynamicBannerText };