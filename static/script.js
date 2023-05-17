const allSideMenu = document.querySelectorAll('#sidebar .side-menu.top li a');

allSideMenu.forEach(item=> {
	const li = item.parentElement;

	item.addEventListener('click', function () {
		allSideMenu.forEach(i=> {
			i.parentElement.classList.remove('active');
		})
		li.classList.add('active');
	})
});

// TOGGLE SIDEBAR
const menuBar = document.querySelector('#content nav .bx.bx-menu');
const sidebar = document.getElementById('sidebar');

menuBar.addEventListener('click', function () {
	sidebar.classList.toggle('hide');
})

const searchButton = document.querySelector('#content nav form .form-input button');
const searchButtonIcon = document.querySelector('#content nav form .form-input button .bx');
const searchForm = document.querySelector('#content nav form');

searchButton.addEventListener('click', function (e) {
	if(window.innerWidth < 576) {
		e.preventDefault();
		searchForm.classList.toggle('show');
		if(searchForm.classList.contains('show')) {
			searchButtonIcon.classList.replace('bx-search', 'bx-x');
		} else {
			searchButtonIcon.classList.replace('bx-x', 'bx-search');
		}
	}
})
// Đóng MỞ 
function moForm() {
	document.getElementById("myForm").style.display = "block";
  }
  /*Hàm Đóng Form*/
function dongForm() {
	document.getElementById("myForm").style.display = "none";
  }
  
if(window.innerWidth < 768) {
	sidebar.classList.add('hide');
} else if(window.innerWidth > 576) {
	searchButtonIcon.classList.replace('bx-x', 'bx-search');
	searchForm.classList.remove('show');
}


window.addEventListener('resize', function () {
	if(this.innerWidth > 576) {
		searchButtonIcon.classList.replace('bx-x', 'bx-search');
		searchForm.classList.remove('show');
	}
})

const switchMode = document.getElementById('switch-mode');

switchMode.addEventListener('change', function () {
	if(this.checked) {
		document.body.classList.add('dark');
	} else {
		document.body.classList.remove('dark');
	}
})

// Giá trị ảo cho người trực tuyến
var onlineUsers = document.querySelector('.text h3');
function getRandomNumber(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}
function updateOnlineUsers() {
  var randomNumber = getRandomNumber(898, 1000);
  onlineUsers.textContent = randomNumber;
}
updateOnlineUsers();
setInterval(updateOnlineUsers, 5000);

// Giá trị ảo cho Donate
const donateValue = document.getElementById('donate-value');
function getRandomValue(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}
function updateDonateValue() {
    let currentValue = parseInt(donateValue.textContent.replace('$', ''));
    let newValue = currentValue + getRandomValue(1, 10);
    donateValue.textContent = '$' + newValue;
}
setInterval(updateDonateValue, 10000);
//Xử lí nút đưa lên đầu trang
window.onscroll = function() { scrollFunction() };
function scrollFunction() {
	var scrollTopButton = document.getElementById("scrollTopButton");

	if(document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
		scrollTopButton.style.display = "block";
	}else {
		scrollTopButton.style.display = "none";
	}
}
function topFunction() {
	document.body.scrollTop = 0;
	documentElement.scrollTop = 0;
}

// MESSAGE INPUT
const textarea = document.querySelector('.chatbox-message-input');
const chatboxForm = document.querySelector('.chatbox-message-form');

textarea.addEventListener('input', function () {
	let line = textarea.value.split('\n').length;

	if (textarea.rows < 6 || line < 6) {
		textarea.rows = line;
	}

	if (textarea.rows > 1) {
		chatboxForm.style.alignItems = 'flex-end';
	} else {
		chatboxForm.style.alignItems = 'center';
	}
});



// TOGGLE CHATBOX
const chatboxToggle = document.querySelector('.chatbox-toggle');
const chatboxMessage = document.querySelector('.chatbox-message-wrapper');

chatboxToggle.addEventListener('click', function () {
	chatboxMessage.classList.toggle('show');
});



// DROPDOWN TOGGLE
const dropdownToggle = document.querySelector('.chatbox-message-dropdown-toggle');
const dropdownMenu = document.querySelector('.chatbox-message-dropdown-menu');

dropdownToggle.addEventListener('click', function () {
	dropdownMenu.classList.toggle('show');
});

document.addEventListener('click', function (e) {
	if (!e.target.matches('.chatbox-message-dropdown, .chatbox-message-dropdown *')) {
		dropdownMenu.classList.remove('show');
	}
});


// CHATBOX MESSAGE
const chatboxMessageWrapper = document.querySelector('.chatbox-message-content');
const chatboxNoMessage = document.querySelector('.chatbox-message-no-message');

chatboxForm.addEventListener('submit', function (e) {
	e.preventDefault();

	if (isValid(textarea.value)) {
		writeMessage();
		setTimeout(sendChatMessage, 1000);
	}
});
function addZero(num) {
    return num < 10 ? '0' + num : num;
}
function writeMessage() {
	const today = new Date();
	let message = `
		<div class="chatbox-message-item sent">
			<span class="chatbox-message-item-text">
				${textarea.value.trim().replace(/\n/g, '<br>\n')}
			</span>
			<span class="chatbox-message-item-time">${addZero(today.getHours())}:${addZero(today.getMinutes())}</span>
		</div>
	`;
	chatboxMessageWrapper.insertAdjacentHTML('beforeend', message);
	chatboxForm.style.alignItems = 'center';
	textarea.rows = 1;
	textarea.focus();
	textarea.value = '';
	chatboxNoMessage.style.display = 'none';
	scrollBottom();
}

function sendChatMessage() {
	const userMessage = textarea.value.trim();
	// Gửi yêu cầu chat qua API
	get_chat_response(userMessage)
		.then(reply => {
			displayChatReply(reply);
		})
		.catch(error => {
			console.error('Error:', error);
		});
}


function displayChatReply(reply) {
	const today = new Date();
	let message = `
		<div class="chatbox-message-item received">
			<span class="chatbox-message-item-text">
				${reply}
			</span>
			<span class="chatbox-message-item-time">${addZero(today.getHours())}:${addZero(today.getMinutes())}</span>
		</div>
	`;
	chatboxMessageWrapper.insertAdjacentHTML('beforeend', message);
	scrollBottom();
}
function get_chat_response(question) {
    const api_key = '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';
    const url = 'https://api.openai.com/v1/chat/completions';
    const headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + api_key
    };
    const data = {
        'messages': [{'role': 'system',
		 'content': 'System message'},
		  {'role': 'user', 'content': question}],
        'model': 'gpt-3.5-turbo',
        'max_tokens': 50
    };

    return fetch(url, {
        method: 'POST',
        headers: headers,
        body: JSON.stringify(data)
    })
    .then(response => response.json())
    .then(data => {
        if (data.choices && data.choices.length > 0 && data.choices[0].message && data.choices[0].message.content) {
            const reply = data.choices[0].message.content;
            return reply;
        } else {
            throw new Error('Empty response or missing choices.');
        }
    })
    .catch(error => {
        console.error('Error:', error);
    });
}


function scrollBottom() {
	chatboxMessageWrapper.scrollTo(0, chatboxMessageWrapper.scrollHeight);
}

function isValid(value) {
	let text = value.replace(/\n/g, '');
	text = text.replace(/\s/g, '');

	return text.length > 0;
}
