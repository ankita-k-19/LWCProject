import { LightningElement ,api } from 'lwc';
import cricket_players from '@salesforce/resourceUrl/players';
export default class Players extends LightningElement {


    players=[
        {
            id:1,
            name:"Rohit Sharma",
            dob :"Apr 30, 1987",
            role :"Batter",
            image:`${cricket_players}/players/RohitSharma.jpg`

        },
        {   
            id:2,
            name:"Hardik Pandya",
            dob :"Oct 11, 1993",
            role :"All rounder",
            image:`${cricket_players}/players/HardikPandya.png`

        },
        {   
            id:3,
            name:"Shubham gill",
            dob :"Sep 08, 1999",
            role :"Batter",
            image:`${cricket_players}/players/ShubhamGill.png`

        }
    ]


}