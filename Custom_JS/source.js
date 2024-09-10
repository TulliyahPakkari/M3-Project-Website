/*================ SHOW MENU ================ */
const navMenu = document.getElementById('nav-menu'),
    navClose = document.getElementById('nav-close'),
    navToggle = document.getElementById('nav-toggle')

/*================ SHOW CONTENT ================ */
/* Validate if constant exists */
if (navToggle) {
    navToggle.addEventListener('click', () => { navMenu.classList.add('show-menu') })
}

/*================ HIDE CONTENT ================ */
/* Validate if constant exists */
if (navClose) {
    navClose.addEventListener('click', () => { navMenu.classList.remove('show-menu') })
};

/*================ REMOVE MENU MOBILE ================ */
const navLink = document.querySelectorAll('.nav__link');

const linkAction = () => {
    const navMenu = document.getElementById('nav-menu');
    // When we click on each link, we remove the show-menu class
    navMenu.classList.remove('show-menu');
}
navLink.forEach(n => n.addEventListener('click', linkAction));

/*================ SHADOW HEADER ================ */
const shadowHeader = () => {
    const header = document.getElementById('header');
    // When the scroll is greater then 50 view port height, add the shadow-header class to the header classlist.
    this.scrollY >= 50 ? header.classList.add('shadow-header')
        : header.classList.remove('shadow-header');
}
window.addEventListener('scroll', shadowHeader);

/*================ EMAIL JS ================ */


/*================ SHOW SCROLL UP ================ */


/*================ SCROLL SECTIONS ACTIVE LINK ================ */
const sections = document.querySelectorAll('section[id]');

const scrollActive = () => {
    const scrollDown = window.scrollY;

    sections.forEach(current => {
        const sectionHeight = current.offsetHeight,
            sectionTop = current.offsetTop - 58,
            sectionId = current.getAttribute('id'),
            sectionsClass = document.querySelector('.nav__menu a[href*=' + sectionId + ']');

        if (scrollDown > sectionTop && scrollDown <= sectionTop + sectionHeight)
            sectionsClass.classList.add('active-link');
        else
            sectionsClass.classList.remove('active-link');
    })
}
window.addEventListener('scroll', scrollActive);
