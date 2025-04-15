#!/bin/bash

# Create assets directory if it doesn't exist
mkdir -p assets

# Write index.html
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tobi Dev Portfolio</title>
  <link rel="stylesheet" href="assets/style.css">
</head>
<body>
  <div id="particles-js"></div>

  <section class="hero">
    <h1>Welcome to Emmanuel Tobi Developer Portfolio</h1>
    <p>Explore my projects, skills, and more!</p>
    <button>Contact Me</button>
  </section>

  <nav>
    <a href="#about">About Me</a>
    <a href="#projects">Projects</a>
    <a href="#contact">Contact</a>
  </nav>

  <section id="about" class="about">
    <h2>About Me - Tobi</h2>
    <p>I am a passionate software developer with experience in building web applications.</p>
  </section>

  <section id="projects" class="projects">
    <h2>My Projects</h2>
    <div class="project-card">
      <img src="images/devhealth.jpg" alt="DevHealth Project">
      <h3>DevHealth</h3>
      <p>A health tracking application built with Vue.js.</p>
    </div>
    <div class="project-card">
      <img src="images/examlytics.jpg" alt="ExamLytics Project">
      <h3>ExamLytics</h3>
      <p>A tool to track academic performance, built with React.</p>
    </div>
    <div class="project-card">
      <img src="images/number-guess-game.jpg" alt="Number Guess Game">
      <h3>Number Guess Game</h3>
      <p>A fun game built with JavaScript.</p>
    </div>
  </section>

  <footer>
    <p>&copy; 2025 Tobi Dev. All rights reserved.</p>
    <p>Follow me on <a href="https://github.com/ematobi1" target="_blank">GitHub</a></p>
    <p>Connect with me on <a href="https://www.linkedin.com/in/emmanuel-t-52a040118" target="_blank">LinkedIn</a></p>
  </footer>

  <!-- particles.js library from CDN -->
  <script src="https://cdn.jsdelivr.net/npm/particles.js@2.0.0/particles.min.js"></script>
  <!-- Custom particles config -->
  <script src="assets/script.js"></script>
</body>
</html>
EOF

# Write assets/style.css
cat > assets/style.css << 'EOF'
body, html {
  margin: 0;
  padding: 0;
  font-family: 'Arial', sans-serif;
  overflow-x: hidden;
  color: #fff;
}

#particles-js {
  position: fixed;
  width: 100%;
  height: 100%;
  background: linear-gradient(270deg, #1c1c1c, #2b2b2b, #1c1c1c);
  background-size: 600% 600%;
  animation: gradientMove 20s ease infinite;
  z-index: -1;
}

@keyframes gradientMove {
  0% { background-position: 0% 50%; }
  50% { background-position: 100% 50%; }
  100% { background-position: 0% 50%; }
}

.hero {
  text-align: center;
  padding: 100px 20px;
}

nav {
  text-align: center;
  margin: 20px 0;
}

nav a {
  margin: 0 15px;
  color: #fff;
  text-decoration: none;
}

.about, .projects {
  padding: 50px 20px;
  text-align: center;
}

.projects {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
}

.project-card {
  background: rgba(255, 255, 255, 0.05);
  margin: 10px;
  padding: 20px;
  border-radius: 15px;
  width: 250px;
  transition: transform 0.3s;
}

.project-card:hover {
  transform: scale(1.05);
  background: rgba(255, 255, 255, 0.1);
}

.project-card img {
  max-width: 100%;
  border-radius: 10px;
}

footer {
  text-align: center;
  padding: 20px;
  background: #111;
}
EOF

# Write assets/script.js
cat > assets/script.js << 'EOF'
particlesJS('particles-js', {
  particles: {
    number: { value: 80, density: { enable: true, value_area: 800 }},
    color: { value: '#ffffff' },
    shape: { type: 'circle' },
    opacity: { value: 0.5, random: true, anim: { enable: true, speed: 1, opacity_min: 0.1 }},
    size: { value: 3, random: true, anim: { enable: true, speed: 40, size_min: 0.1 }},
    line_linked: { enable: true, distance: 150, color: '#ffffff', opacity: 0.4, width: 1 },
    move: { enable: true, speed: 6, direction: 'none', random: true, straight: false, out_mode: 'out' }
  },
  interactivity: {
    detect_on: 'canvas',
    events: {
      onhover: { enable: true, mode: 'repulse' },
      onclick: { enable: true, mode: 'push' }
    }
  },
  retina_detect: true
});
EOF

echo "✅ Project files updated successfully!"
