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



function idCheck() {
  const loginId = document.getElementById("loginID");
  const loginPW = document.getElementById("loginPW");
  // alert(loginId.value);
  if (loginId.value == "") {
    alert("아이디가 빈 칸입니다");
  } else if (loginPW.value == "") {
    alert("비밀번호가 빈 칸입니다");
  }else{
	document.getElementById("logInForm").action = "./index.html";
}

}

//회원가입 아이디 중복확인
let idList = ["aa", "bb", "cc", "dd"];

function idCheck2() {
  const JoinId = document.getElementById("joinID");
  const JoinPW = document.getElementById("joinPW");
  let cnt = 0;
   //alert(JoinId.value);
  if (JoinId.value == "") {
    alert("아이디가 빈 칸입니다");
  } else if (JoinPW.value == "") {
    alert("비밀번호가 빈 칸입니다");
  }
  for (i = 0; i < idList.length; i++) {
    if (JoinId.value == idList[i]) {
      alert("ID 중복입니다!");
      break;
    } else {
      cnt++;
    }
    if (JoinId.value != "" && JoinPW.value != "" && cnt == idList.length) {
      document.getElementById("JoinForm").action = "./Welcome.jsp";
      alert("사용가능합니다");
    }
  }
}

