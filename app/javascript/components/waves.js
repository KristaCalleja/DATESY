
import "../../../node_modules/node-waves/dist/waves.min.css"
import Waves from "node-waves";

const initWaves = () => {
  document.addEventListener('DOMContentLoaded', () => {
    Waves.attach('.large_button');
    Waves.init();
  });
};

export { initWaves };
