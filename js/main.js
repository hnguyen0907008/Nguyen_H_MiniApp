import {fetchData} from "./components/TheDataMiner.js";
import TheCarData from "./components/CarData.js";

(() => {
    let vue_vm = new Vue({
        // link Vue to an element in our HTML
        //el: "#app"
        data: {
        models: []
        },

        mounted: function() {
            console.log("Vue is mounted!");
            fetchData("./includes/index.php")
                .then(data => {
                    data.forEach(car => this.models.push(car));
                })
                .catch(err => console.error(err)); 
        },

        updated: function() {
            console.log('Vue just updated the DOM');
        },

        components: {
            "car-card": TheCarData
        }

    }).$mount("#app"); // also connects Vue to your wrapper in HTML
})();