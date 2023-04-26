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


const imageFolder = 'static/img/pics/'; // thư mục chứa ảnh của bạn
const imageTypes = ['jpg', 'jpeg', 'png', 'gif']; // các định dạng ảnh được cho phép

// lấy tất cả các tập tin trong thư mục ảnh
const getFileNames = async () => {
  const response = await fetch(imageFolder);
  const body = await response.text();
  const parser = new DOMParser();
  const doc = parser.parseFromString(body, 'text/html');
  const files = [...doc.querySelectorAll('a')].map((el) => el.getAttribute('href'));
  return files.filter((file) => imageTypes.includes(file.split('.').pop()));
};

// hiển thị danh sách ảnh theo bố cục danh sách
const showImagesList = async () => {
  const files = await getFileNames();
  const imageList = document.querySelector('.image-list');

  files.forEach((file) => {
    const img = document.createElement('img');
    img.src = `${imageFolder}/${file}`;
    img.alt = file.split('.')[0];
    const li = document.createElement('li');
    li.appendChild(img);
    imageList.appendChild(li);
  });
};

// hiển thị danh sách ảnh theo bố cục lưới
const showImagesGrid = async () => {
  const files = await getFileNames();
  const imageGrid = document.querySelector('.image-grid');

  files.forEach((file) => {
    const img = document.createElement('img');
    img.src = `${imageFolder}/${file}`;
    img.alt = file.split('.')[0];
    const div = document.createElement('div');
    div.appendChild(img);
    imageGrid.appendChild(div);
  });
};

showImagesList();
showImagesGrid();
