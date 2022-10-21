/* API de tokenization 
https://rapidapi.com/fr/dwi.rizki.irawan/api/linguist/ */

const axios = require("axios");

const encodedParams = new URLSearchParams();
encodedParams.append("text", "my text payload");

const options = {
  method: 'POST',
  url: 'https://linguist.p.rapidapi.com/v1/tokenizer',
  headers: {
    'content-type': 'application/x-www-form-urlencoded',
    'X-RapidAPI-Key': 'SIGN-UP-FOR-KEY',
    'X-RapidAPI-Host': 'linguist.p.rapidapi.com'
  },
  data: encodedParams
};

axios.request(options).then(function (response) {
	console.log(response.data);
}).catch(function (error) {
	console.error(error);
});
