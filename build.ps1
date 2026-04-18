$head = @"
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>ECC Hive – _TITLE_</title>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800&display=swap" rel="stylesheet"/>
  <style>
    *, *::before, *::after { margin: 0; padding: 0; box-sizing: border-box; }
    :root {
      --primary-blue: #003a5d;
      --accent-orange: #ff7900;
      --bg-white: #ffffff;
      --bg-light: #f4f5f8;
      --text-main: #333333;
      --text-muted: #555555;
      --border-color: #e0e0e0;
      --font-main: 'Montserrat', sans-serif;
    }
    html { scroll-behavior: smooth; }
    body { font-family: var(--font-main); background: var(--bg-white); color: var(--text-main); line-height: 1.6; }
    nav { position: sticky; top: 0; z-index: 100; background: var(--bg-white); border-bottom: 1px solid var(--border-color); display: flex; align-items: center; justify-content: space-between; padding: 1rem 5vw; box-shadow: 0 2px 10px rgba(0,0,0,0.05); }
    .logo { font-weight: 800; font-size: 1.8rem; color: var(--primary-blue); text-decoration: none; display: flex; align-items: center; gap: 0.5rem; }
    .logo span { color: var(--accent-orange); }
    .nav-links { display: flex; list-style: none; gap: 2rem; align-items: center; margin:0; padding:0; }
    .nav-links li { display:inline-block; }
    .nav-links a { color: var(--text-main); text-decoration: none; font-size: 0.85rem; font-weight: 700; transition: color 0.2s; letter-spacing:0.5px;}
    .nav-links a:hover { color: var(--accent-orange); }
    .nav-cta.rounded-pill { background: var(--accent-orange); color: var(--bg-white) !important; padding: 0.6rem 1.4rem; border-radius: 50px; text-transform:uppercase; transition: background 0.3s; }
    .nav-cta.rounded-pill:hover { background: #e66a00; }
    .nav-login { display:flex; align-items:center; gap:0.4rem; color: var(--accent-orange) !important; text-transform:uppercase; font-size: 0.85rem; font-weight:bold; text-decoration:none; }
    footer { background: var(--primary-blue); color: var(--bg-white); text-align: center; padding: 3rem 5vw; margin-top: 5rem; }
    .page-hero { background: linear-gradient(135deg, var(--bg-light) 0%, #eef2f5 100%); padding: 6rem 5vw 4rem; text-align: center; }
    .page-hero h1 { font-size: clamp(2rem, 3.5vw, 3rem); font-weight: 800; color: var(--primary-blue); margin-bottom: 1rem; }
    .page-hero p { font-size: 1.1rem; color: var(--text-muted); max-width: 600px; margin: 0 auto; }
    .content-section { padding: 4rem 5vw; max-width: 1000px; margin: 0 auto; min-height: 40vh; }
    .card-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 2rem; margin-top:2rem;}
    .content-card { background: var(--bg-white); border: 1px solid var(--border-color); padding: 2rem; border-radius: 8px; box-shadow: 0 4px 10px rgba(0,0,0,0.03); text-align:left;}
    .content-card h3 { color: var(--primary-blue); margin-bottom: 1rem; font-size: 1.4rem;}
  </style>
</head>
"@

$nav = @"
<nav>
  <a href="index.html" class="logo" style="gap: 0.8rem;">
    <svg width="44" height="44" viewBox="0 0 24 24" fill="var(--accent-orange)" xmlns="http://www.w3.org/2000/svg">
      <path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"></path>
      <text x="12" y="15" fill="#ffffff" font-size="7" font-weight="900" font-family="Montserrat, sans-serif" text-anchor="middle" letter-spacing="1">ECC</text>
    </svg>
    <div style="display:flex; flex-direction:column; line-height: 1.1;">
      <span style="color:#003a5d; font-weight:900; font-size:1.5rem; letter-spacing: 1px;">ECC</span>
      <span style="color:var(--accent-orange); font-weight:400; font-size:1.15rem; text-transform:none;">hive</span>
    </div>
  </a>
  <ul class="nav-links">
    <li><a href="about.html">ABOUT US</a></li>
    <li><a href="solutions.html">SOLUTIONS</a></li>
    <li><a href="partner.html">PARTNER WITH US</a></li>
    <li><a href="institutions.html">INSTITUTIONS</a></li>
    <li><a href="news.html">IN THE NEWS &#9662;</a></li>
    <li><a href="faq.html">FAQ</a></li>
    <li><a href="get-started.html" class="nav-cta rounded-pill">GET STARTED</a></li>
    <li><a href="login.html" class="nav-login"><svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><path d="M15 3h4a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-4"></path><polyline points="10 17 15 12 10 7"></polyline><line x1="15" y1="12" x2="3" y2="12"></line></svg> Login</a></li>
  </ul>
</nav>
"@

$pages = @(
  @{f="about.html"; t="About Us"; h="Our Story"; p="Empowering students to achieve their global education dreams through technology and guidance."; c="<div class='card-grid'><div class='content-card'><h3>Our Mission</h3><p>We bridge the gap between aspirational students and the world's leading educational institutions. ECC Hive was founded on the belief that access to quality international education should be seamless, transparent, and technology-driven.</p></div><div class='content-card'><h3>The ECC Hive Advantage</h3><p>By leveraging advanced matching algorithms, deep institutional partnerships, and local expertise, we provide an unparalleled placement experience.</p></div></div>" },
  @{f="solutions.html"; t="Solutions"; h="Comprehensive EdTech Solutions"; p="Tailored platforms & services for students, recruitment partners, and universities."; c="<div class='card-grid'><div class='content-card'><h3>For Students</h3><p>Course search wizards, scholarship matching, visa guidance, and a personalized portal to track your application journey from start to finish.</p></div><div class='content-card'><h3>For Institutions</h3><p>Reach a diverse, pre-screened global applicant pool. Direct integration with your admissions systems and verified document management.</p></div><div class='content-card'><h3>For Partners</h3><p>A B2B portal offering robust CRM tools, application tracking, commission transparent modules, and marketing collateral repository.</p></div></div>" },
  @{f="partner.html"; t="Partner With Us"; h="Grow With ECC Hive"; p="Join our global network of top-tier recruitment partners and world-class universities."; c="<div class='content-section' style='text-align:center;'><p style='font-size:1.2rem;'>ECC Hive manages the end-to-end recruitment lifecycle. Partnering with us gives you immediate scale, technological advantage, and trusted brand equity.</p><br><br><a href='get-started.html' class='nav-cta rounded-pill' style='display:inline-block; padding:1rem 2.5rem; font-size:1.1rem; text-decoration:none;'>Apply for Partnership</a></div>" },
  @{f="institutions.html"; t="Institutions"; h="Our Global Partners"; p="We work directly with top-ranked universities across the USA, UK, Canada, Australia, and Europe."; c="<div class='card-grid'><div class='content-card'><h3>United Kingdom</h3><p>Over 100+ Russel Group and leading institutions offering pathways and direct entry programs.</p></div><div class='content-card'><h3>Canada</h3><p>SDS compliance support and direct partnerships with top SDS colleges and public universities.</p></div><div class='content-card'><h3>Australia</h3><p>Go8 university partners and extensive integration with regional institutes offering PSWR benefits.</p></div><div class='content-card'><h3>USA</h3><p>Ivy League and premium state universities providing STEM and OPT extended programs.</p></div></div>" },
  @{f="news.html"; t="In The News"; h="Latest at ECC Hive"; p="Announcements, student success stories, and industry insights."; c="<div class='card-grid'><div class='content-card'><span style='color:var(--accent-orange); font-size:0.8rem; font-weight:bold;'>March 2026</span><h3>New Platform Launch</h3><p>ECC Hive announces the rollout of its AI-driven predictive admission capability for South Asian markets.</p></div><div class='content-card'><span style='color:var(--accent-orange); font-size:0.8rem; font-weight:bold;'>January 2026</span><h3>Record Placements</h3><p>Celebrating over 10,000 successful student visas processed in the last academic year!</p></div></div>" },
  @{f="faq.html"; t="FAQ"; h="Frequently Asked Questions"; p="Everything you need to know about starting your journey with us."; c="<div class='card-grid'><div class='content-card'><h3>Is ECC Hive free for students?</h3><p>Yes, our basic counseling and application services are completely fee-free for aspiring students.</p></div><div class='content-card'><h3>How do I track my application?</h3><p>Once you register, you get access to a personalized dashboard updating your status in real-time.</p></div><div class='content-card'><h3>Do you guarantee visas?</h3><p>While we have a 98% success rate, visa issuance is solely at the discretion of the respective embassy or high commission.</p></div></div>" },
  @{f="get-started.html"; t="Get Started"; h="Begin Your Journey"; p="Fill out the form below and our experts will be perfectly matched to your profile."; c="<div class='content-card' style='max-width:600px; margin: 0 auto;'><form style='display:flex; flex-direction:column; gap:1.2rem;'><div style='display:flex; flex-direction:column; gap:0.5rem;'><label style='font-weight:600; color:var(--primary-blue);'>Full Name</label><input type='text' placeholder='John Doe' style='padding:0.8rem; border:1px solid #ccc; border-radius:4px;'></div><div style='display:flex; flex-direction:column; gap:0.5rem;'><label style='font-weight:600; color:var(--primary-blue);'>Email</label><input type='email' placeholder='john@example.com' style='padding:0.8rem; border:1px solid #ccc; border-radius:4px;'></div><div style='display:flex; flex-direction:column; gap:0.5rem;'><label style='font-weight:600; color:var(--primary-blue);'>I am a...</label><select style='padding:0.8rem; border:1px solid #ccc; border-radius:4px;'><option>Student looking to study abroad</option><option>Agent looking to partner</option><option>Institution representative</option></select></div><button type='button' style='background:var(--accent-orange); color:#fff; border:none; padding:1.2rem; border-radius:50px; font-weight:bold; cursor:pointer; font-size:1.1rem; text-transform:uppercase; transition:background 0.3s;' onmouseover=`"this.style.background='#e66a00'`" onmouseout=`"this.style.background='var(--accent-orange)'`">Submit Inquiry</button></form></div>" },
  @{f="login.html"; t="Login"; h="Welcome Back"; p="Access your ECC Hive portal."; c="<div class='content-card' style='max-width:400px; margin: 0 auto; text-align:center;'><form style='display:flex; flex-direction:column; gap:1rem; text-align:left;'><div style='display:flex; flex-direction:column; gap:0.5rem;'><label style='font-weight:600; color:var(--primary-blue);'>Email</label><input type='email' placeholder='name@example.com' style='padding:0.8rem; border:1px solid #ccc; border-radius:4px;'></div><div style='display:flex; flex-direction:column; gap:0.5rem;'><label style='font-weight:600; color:var(--primary-blue);'>Password</label><input type='password' placeholder='••••••••' style='padding:0.8rem; border:1px solid #ccc; border-radius:4px;'></div><button type='button' style='background:var(--primary-blue); color:#fff; border:none; padding:1rem; border-radius:4px; font-weight:bold; cursor:pointer; font-size:1rem; transition:background 0.3s;' onmouseover=`"this.style.background='#002d4a'`" onmouseout=`"this.style.background='var(--primary-blue)'`">Login to Dashboard</button></form><p style='margin-top:1.5rem; font-size:0.9rem;'>Forgot Password? <a href='#' style='color:var(--accent-orange); text-decoration:none; font-weight:bold;'>Click here</a></p></div>"}
)

foreach ($page in $pages) {
  $fileHead = $head -replace '_TITLE_', $page.t
  $html = @"
<!DOCTYPE html>
<html lang="en">
$fileHead
<body>
$nav
  <header class="page-hero">
    <h1>$($page.h)</h1>
    <p>$($page.p)</p>
  </header>
  
  <section class="content-section">
    $($page.c)
  </section>

  <footer>
    <p>&copy; 2026 ECC Hive. All Rights Reserved.</p>
  </footer>
</body>
</html>
"@
  Set-Content -Path $page.f -Value $html -Encoding UTF8
}
