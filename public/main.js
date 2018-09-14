// MAIN JS FILE


document.getElementById("logoThis").addEventListener("click", logoClickHome);

function logoClickHome() {
  window.location = '/';
}

// Below was extra not part of the project i wanted to do calculations but not enough time

document.getElementById("btnAdd").addEventListener("click", displayAddBaked);
document.getElementById("btnSubtract").addEventListener("click", displaySubtractBaked);
let pAddSub = document.getElementById("add_sub_choc_cookie");
countChocCookie = 0;

function displayAddBaked() {
  countChocCookie++;
  pAddSub.innerText = `${countChocCookie}`
}

function displaySubtractBaked() {
  countChocCookie--;
  if (countChocCookie < 0) {
    countChocCookie = 0
  }
  pAddSub.innerText = `${countChocCookie}`
}

document.getElementById("btnAddj").addEventListener("click", displayAddBakedj);
document.getElementById("btnSubtractj").addEventListener("click", displaySubtractBakedj);
let pAddSubj = document.getElementById("add_sub_joker_cookie");
countJokerCookie = 0;

function displayAddBakedj() {
  countJokerCookie++;
  pAddSubj.innerText = `${countJokerCookie}`
}

function displaySubtractBakedj() {
  countJokerCookie--;
  if (countJokerCookie < 0) {
    countJokerCookie = 0
  }
  pAddSubj.innerText = `${countJokerCookie}`
}

document.getElementById("btnAddf").addEventListener("click", displayAddBakedf);
document.getElementById("btnSubtractf").addEventListener("click", displaySubtractBakedf);
let pAddSubf = document.getElementById("add_sub_fancy_cookie");
countFancyCookie = 0;

function displayAddBakedf() {
  countFancyCookie++;
  pAddSubf.innerText = `${countFancyCookie}`
}

function displaySubtractBakedf() {
  countFancyCookie--;
  if (countFancyCookie < 0) {
    countFancyCookie = 0
  }
  pAddSubf.innerText = `${countFancyCookie}`
}

document.getElementById("btnAddcm").addEventListener("click", displayAddBakedcm);
document.getElementById("btnSubtractcm").addEventListener("click", displaySubtractBakedcm);
let pAddSubcm = document.getElementById("add_sub_choc_muffin");
countChocMuffin = 0;

function displayAddBakedcm() {
  countChocMuffin++;
  pAddSubcm.innerText = `${countChocMuffin}`
}

function displaySubtractBakedcm() {
  countChocMuffin--;
  if (countChocMuffin < 0) {
    countChocMuffin = 0
  }
  pAddSubcm.innerText = `${countChocMuffin}`
}
document.getElementById("btnAddbm").addEventListener("click", displayAddBakedbm);
document.getElementById("btnSubtractbm").addEventListener("click", displaySubtractBakedbm);
let pAddSubbm = document.getElementById("add_sub_blue_muffin");
countBlueMuffin = 0;

function displayAddBakedbm() {
  countBlueMuffin++;
  pAddSubbm.innerText = `${countBlueMuffin}`
}

function displaySubtractBakedbm() {
  countBlueMuffin--;
  if (countBlueMuffin < 0) {
    countBlueMuffin = 0
  }
  pAddSubbm.innerText = `${countBlueMuffin}`
}
document.getElementById("btnAddpm").addEventListener("click", displayAddBakedpm);
document.getElementById("btnSubtractpm").addEventListener("click", displaySubtractBakedpm);
let pAddSubpm = document.getElementById("add_sub_pro_muffin");
countProMuffin = 0;

function displayAddBakedpm() {
  countProMuffin++;
  pAddSubpm.innerText = `${countProMuffin}`
}

function displaySubtractBakedpm() {
  countProMuffin--;
  if (countProMuffin < 0) {
    countProMuffin = 0
  }
  pAddSubpm.innerText = `${countProMuffin}`
}