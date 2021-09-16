import { LightningElement } from 'lwc';

export default class CurrentTime extends LightningElement {   
    currentTime;
    
    getTime() {
        this.currentTime = new Date().getTime();
    }
    
    connectedCallback() {
        setInterval(() => this.getTime(), 1000);
    }   
}