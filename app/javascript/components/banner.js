import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["The really important things are said over COCKTAILS", "and are NEVER done"],
    typeSpeed: 70,
    loop: true
  });
}

export { loadDynamicBannerText };