export default {
    name: "TheCarData",
    props: ["car"],

    //data needs to be a function inside a component

    data: function(){
        return{
            removeAformat: true,
            showBioData: false,
            currentCarData: {},
            name: this.car.name,
            price: this.car.price,
            description: this.car.description
        }
    },

    template: 
            ` <div @click="logClicked" class="info">
                <a href="" @click.prevent="showCarData(car)" :class="{'car-button-modifier' : removeAformat}"><img :src="'images/' + car.image" :alt='car.name + "image"'></a>
                <section class="bio-data" :class="{'show-bio' : showBioData}">
                    <h3>{{ car.name }}</h3>
                    <h4>{{ car.price }}</h4>
                    <p>{{ car.description }}</p>

                    <video controls>
                        <source :src="'video/' + car.video" type="video/mp4">
                        <p>Sorry, your browser doesn't support the video.</p>
                    </video>
                </section> 
              </div>
              `,
    created: function(){
        console.log(`created ${this.car.name}'s card`);
    },

    methods: {
        logClicked(){
            console.log(`fired from inside the ${this.car.name} component`);
        },

        showCarData(target) {
            console.log('clicked to view data', target, target.name);
            this.showBioData = this.showBioData ? false : true
            this.currentCarData = target;
        }
    }
}