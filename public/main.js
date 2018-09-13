// MAIN JS FILE


document.getElementById("logoThis").addEventListener("click", logoClickHome);
function logoClickHome(){
  window.location = '/';
}

  // /////////////////////////////////////////////////////////////////////
  
   let aBtn = document.getElementById("btnAdd").addEventListener("click", displayAddBaked);
   let sBtn = document.getElementById("btnSubtract").addEventListener("click", displaySubtractBaked);
   let pAddSub = document.getElementById("add_sub_choc_cookie");
   countChocCookie = 0;
   function displayAddBaked(){
    countChocCookie ++;
    pAddSub.innerText =`${countChocCookie}`
   }
   function displaySubtractBaked(){
     countChocCookie --;
     if (countChocCookie < 0){
       countChocCookie = 0
     }
     pAddSub.innerText =`${countChocCookie}`
   }
   // /////////////////////////////////////////////////////////////////////
  document.getElementById("btnAddj").addEventListener("click", displayAddBakedj);
  document.getElementById("btnSubtractj").addEventListener("click", displaySubtractBakedj);
   let pAddSubj = document.getElementById("add_sub_joker_cookie");
   countJokerCookie = 0;
   function displayAddBakedj(){
    countJokerCookie ++;
    pAddSubj.innerText =`${countJokerCookie}`
   }
   function displaySubtractBakedj(){
    countJokerCookie --;
     if (countJokerCookie < 0){
      countJokerCookie = 0
     }
     pAddSubj.innerText =`${countJokerCookie}`
   }
    // /////////////////////////////////////////////////////////////////////
    document.getElementById("btnAddf").addEventListener("click", displayAddBakedf);
  document.getElementById("btnSubtractf").addEventListener("click", displaySubtractBakedf);
   let pAddSubf = document.getElementById("add_sub_fancy_cookie");
   countFancyCookie = 0;
   function displayAddBakedf(){
    countFancyCookie ++;
    pAddSubf.innerText =`${countFancyCookie}`
   }
   function displaySubtractBakedf(){
    countFancyCookie --;
     if (countFancyCookie < 0){
      countFancyCookie = 0
     }
     pAddSubf.innerText =`${countFancyCookie}`
   }