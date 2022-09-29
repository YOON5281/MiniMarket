let modeState = true;
const mode = document.getElementsByClassName("mode");

//다크모드
function modeChange() {
  if (modeState == true) {
    //   console.log(mode);
    for (i = 0; i < mode.length; i++) {
      mode[i].style.color = "white";
    }
    document.body.style.backgroundColor = "black";
    document.getElementById("modeButton").innerText = "데이모드";
    modeState = false;
  } else {
    for (i = 0; i < mode.length; i++) {
      mode[i].style.color = "black";
    }
    document.body.style.backgroundColor = "white";
    document.getElementById("modeButton").innerText = "다크모드";
    modeState = true;
  }
}

//아이디 중복확인

let idList = ["aa", "bb", "cc", "dd"];

function idCheck() {
  const loginId = document.getElementById("loginID");
  const loginPW = document.getElementById("loginPW");
  let cnt = 0;
  // alert(loginId.value);
  if (loginId.value == "") {
    alert("아이디가 빈 칸입니다");
  } else if (loginPW.value == "") {
    alert("비밀번호가 빈 칸입니다");
  }
  for (i = 0; i < idList.length; i++) {
    if (loginId.value == idList[i]) {
      alert("ID 중복입니다!");
      break;
    } else {
      cnt++;
    }
    if (loginId.value != "" && loginPW.value != "" && cnt == idList.length) {
      document.getElementById("logInForm").action = "./index.html";
      alert("사용가능합니다");
    }
  }
}
