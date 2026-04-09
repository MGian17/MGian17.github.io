<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABM Strand ✨ Your Future Starts Here</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --pink-primary: #ff6b9d;
            --pink-secondary: #ffc2d1;
            --pink-dark: #c44569;
            --pink-light: #fff0f3;
            --white: #ffffff;
            --shadow: rgba(255, 107, 157, 0.2);
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #fff0f3 0%, #ffeef2 50%, #fff5f7 100%);
            min-height: 100vh;
            overflow-x: hidden;
            position: relative;
        }

        /* Floating hearts background */
        .hearts-container {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            overflow: hidden;
            z-index: 0;
        }

        .heart {
            position: absolute;
            font-size: 20px;
            color: var(--pink-secondary);
            opacity: 0.6;
            animation: float 15s infinite ease-in-out;
        }

        @keyframes float {
            0%, 100% { transform: translateY(100vh) rotate(0deg); opacity: 0; }
            10% { opacity: 0.6; }
            90% { opacity: 0.6; }
            100% { transform: translateY(-100vh) rotate(360deg); opacity: 0; }
        }

        /* Header */
        header {
            text-align: center;
            padding: 60px 20px 40px;
            position: relative;
            z-index: 1;
        }

        .logo {
            font-family: 'Playfair Display', serif;
            font-size: 3.5rem;
            color: var(--pink-dark);
            text-shadow: 3px 3px 0px var(--pink-secondary);
            margin-bottom: 10px;
            animation: shimmer 3s infinite;
        }

        @keyframes shimmer {
            0%, 100% { opacity: 1; }
            50% { opacity: 0.8; }
        }

        .subtitle {
            font-size: 1.3rem;
            color: var(--pink-primary);
            font-weight: 300;
            letter-spacing: 2px;
        }

        .ribbon {
            display: inline-block;
            background: linear-gradient(90deg, var(--pink-primary), var(--pink-dark));
            color: white;
            padding: 10px 30px;
            border-radius: 50px;
            margin-top: 20px;
            font-weight: 600;
            box-shadow: 0 4px 15px var(--shadow);
            transform: rotate(-2deg);
        }

        /* Main Container */
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            position: relative;
            z-index: 1;
        }

        .section-title {
            text-align: center;
            font-family: 'Playfair Display', serif;
            font-size: 2.5rem;
            color: var(--pink-dark);
            margin-bottom: 50px;
            position: relative;
            display: inline-block;
            left: 50%;
            transform: translateX(-50%);
        }

        .section-title::after {
            content: '✨';
            position: absolute;
            right: -40px;
            top: 0;
            animation: sparkle 2s infinite;
        }

        .section-title::before {
            content: '✨';
            position: absolute;
            left: -40px;
            top: 0;
            animation: sparkle 2s infinite 1s;
        }

        @keyframes sparkle {
            0%, 100% { transform: scale(1) rotate(0deg); }
            50% { transform: scale(1.3) rotate(180deg); }
        }

        /* Profession Cards Grid */
        .professions-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
            margin-bottom: 60px;
        }

        .profession-card {
            background: white;
            border-radius: 30px;
            padding: 30px;
            text-align: center;
            cursor: pointer;
            transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            box-shadow: 0 10px 30px var(--shadow);
            border: 3px solid transparent;
            position: relative;
            overflow: hidden;
        }

        .profession-card::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle, rgba(255,107,157,0.1) 0%, transparent 70%);
            opacity: 0;
            transition: opacity 0.3s;
        }

        .profession-card:hover {
            transform: translateY(-10px) scale(1.02);
            border-color: var(--pink-secondary);
            box-shadow: 0 20px 40px rgba(255, 107, 157, 0.3);
        }

        .profession-card:hover::before {
            opacity: 1;
        }

        .profession-icon {
            font-size: 4rem;
            margin-bottom: 15px;
            display: block;
            animation: bounce 2s infinite;
        }

        @keyframes bounce {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-10px); }
        }

        .profession-title {
            font-family: 'Playfair Display', serif;
            font-size: 1.5rem;
            color: var(--pink-dark);
            margin-bottom: 10px;
        }

        .profession-preview {
            color: #666;
            font-size: 0.9rem;
            font-style: italic;
        }

        .click-hint {
            display: inline-block;
            margin-top: 15px;
            background: var(--pink-light);
            color: var(--pink-primary);
            padding: 5px 15px;
            border-radius: 20px;
            font-size: 0.8rem;
            font-weight: 600;
            opacity: 0;
            transform: translateY(10px);
            transition: all 0.3s;
        }

        .profession-card:hover .click-hint {
            opacity: 1;
            transform: translateY(0);
        }

        /* Modal Styles */
        .modal-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(196, 69, 105, 0.4);
            backdrop-filter: blur(5px);
            display: none;
            justify-content: center;
            align-items: center;
            z-index: 1000;
            opacity: 0;
            transition: opacity 0.3s;
        }

        .modal-overlay.active {
            display: flex;
            opacity: 1;
        }

        .modal-content {
            background: white;
            border-radius: 40px;
            padding: 40px;
            max-width: 600px;
            width: 90%;
            max-height: 80vh;
            overflow-y: auto;
            position: relative;
            transform: scale(0.8) translateY(50px);
            transition: transform 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            box-shadow: 0 30px 60px rgba(196, 69, 105, 0.3);
            border: 5px solid var(--pink-secondary);
        }

        .modal-overlay.active .modal-content {
            transform: scale(1) translateY(0);
        }

        .close-btn {
            position: absolute;
            top: 20px;
            right: 25px;
            background: var(--pink-light);
            border: none;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            cursor: pointer;
            font-size: 1.5rem;
            color: var(--pink-dark);
            transition: all 0.3s;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .close-btn:hover {
            background: var(--pink-primary);
            color: white;
            transform: rotate(90deg);
        }

        .modal-icon {
            font-size: 5rem;
            text-align: center;
            margin-bottom: 20px;
        }

        .modal-title {
            font-family: 'Playfair Display', serif;
            font-size: 2rem;
            color: var(--pink-dark);
            text-align: center;
            margin-bottom: 20px;
        }

        .info-section {
            margin-bottom: 25px;
            padding: 20px;
            background: var(--pink-light);
            border-radius: 20px;
            border-left: 5px solid var(--pink-primary);
        }

        .info-section h3 {
            color: var(--pink-primary);
            margin-bottom: 10px;
            font-size: 1.2rem;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .info-section ul {
            list-style: none;
            padding-left: 0;
        }

        .info-section li {
            padding: 8px 0;
            padding-left: 25px;
            position: relative;
            color: #555;
        }

        .info-section li::before {
            content: '🎀';
            position: absolute;
            left: 0;
        }

        .salary-tag {
            display: inline-block;
            background: linear-gradient(90deg, var(--pink-primary), var(--pink-dark));
            color: white;
            padding: 10px 20px;
            border-radius: 25px;
            font-weight: 700;
            margin-top: 10px;
        }

        /* Why ABM Section */
        .why-abm {
            background: white;
            border-radius: 40px;
            padding: 50px;
            margin-top: 60px;
            box-shadow: 0 20px 60px var(--shadow);
            position: relative;
            overflow: hidden;
        }

        .why-abm::before {
            content: '';
            position: absolute;
            top: -100px;
            right: -100px;
            width: 300px;
            height: 300px;
            background: radial-gradient(circle, var(--pink-secondary) 0%, transparent 70%);
            opacity: 0.3;
        }

        .benefits-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
            margin-top: 30px;
        }

        .benefit-card {
            background: linear-gradient(135deg, var(--pink-light) 0%, white 100%);
            padding: 30px;
            border-radius: 25px;
            text-align: center;
            transition: transform 0.3s;
            border: 2px solid var(--pink-secondary);
        }

        .benefit-card:hover {
            transform: translateY(-5px);
        }

        .benefit-icon {
            font-size: 3rem;
            margin-bottom: 15px;
        }

        .benefit-title {
            color: var(--pink-dark);
            font-weight: 600;
            margin-bottom: 10px;
        }

        /* CTA Section */
        .cta-section {
            text-align: center;
            padding: 80px 20px;
            position: relative;
        }

        .cta-button {
            display: inline-block;
            background: linear-gradient(90deg, var(--pink-primary), var(--pink-dark));
            color: white;
            padding: 20px 50px;
            border-radius: 50px;
            font-size: 1.3rem;
            font-weight: 700;
            text-decoration: none;
            box-shadow: 0 10px 30px rgba(255, 107, 157, 0.4);
            transition: all 0.3s;
            position: relative;
            overflow: hidden;
        }

        .cta-button::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255,255,255,0.4), transparent);
            transition: left 0.5s;
        }

        .cta-button:hover {
            transform: translateY(-3px) scale(1.05);
            box-shadow: 0 15px 40px rgba(255, 107, 157, 0.6);
        }

        .cta-button:hover::before {
            left: 100%;
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 40px;
            color: var(--pink-dark);
            font-size: 0.9rem;
        }

        .social-links {
            margin-top: 20px;
        }

        .social-links a {
            display: inline-block;
            margin: 0 10px;
            font-size: 1.5rem;
            transition: transform 0.3s;
        }

        .social-links a:hover {
            transform: scale(1.2) rotate(10deg);
        }

        /* Responsive */
        @media (max-width: 768px) {
            .logo { font-size: 2.5rem; }
            .section-title { font-size: 1.8rem; }
            .professions-grid { grid-template-columns: 1fr; }
            .why-abm { padding: 30px 20px; }
        }

        /* Confetti Animation */
        .confetti {
            position: fixed;
            width: 10px;
            height: 10px;
            background: var(--pink-primary);
            position: absolute;
            animation: confetti-fall 3s linear forwards;
            z-index: 999;
        }

        @keyframes confetti-fall {
            to {
                transform: translateY(100vh) rotate(720deg);
                opacity: 0;
            }
        }
    </style>
</head>
<body>
    <!-- Floating Hearts Background -->
    <div class="hearts-container" id="hearts"></div>

    <!-- Header -->
    <header>
        <h1 class="logo">ABM Strand 💕</h1>
        <p class="subtitle">Accountancy, Business & Management</p>
        <div class="ribbon">✨ Build Your Empire ✨</div>
    </header>

    <div class="container">
        <!-- Professions Section -->
        <h2 class="section-title">Discover Your Future Career</h2>
        
        <div class="professions-grid" id="professionsGrid">
            <!-- Cards will be generated by JavaScript -->
        </div>

        <!-- Why ABM Section -->
        <div class="why-abm">
            <h2 class="section-title" style="margin-bottom: 30px;">Why Choose ABM? 🌸</h2>
            <p style="text-align: center; color: #666; margin-bottom: 30px; font-size: 1.1rem;">
                The ABM strand prepares you for the dynamic world of business, finance, and entrepreneurship!
            </p>
            
            <div class="benefits-grid">
                <div class="benefit-card">
                    <div class="benefit-icon">💼</div>
                    <h3 class="benefit-title">Versatile Skills</h3>
                    <p>Learn accounting, marketing, management, and entrepreneurship all in one strand!</p>
                </div>
                <div class="benefit-card">
                    <div class="benefit-icon">🚀</div>
                    <h3 class="benefit-title">High Demand</h3>
                    <p>Business graduates are always needed in every industry worldwide.</p>
                </div>
                <div class="benefit-card">
                    <div class="benefit-icon">💰</div>
                    <h3 class="benefit-title">Great Earning Potential</h3>
                    <p>ABM careers offer competitive salaries and growth opportunities.</p>
                </div>
                <div class="benefit-card">
                    <div class="benefit-icon">👑</div>
                    <h3 class="benefit-title">Be Your Own Boss</h3>
                    <p>Learn to start and manage your own business empire!</p>
                </div>
                <div class="benefit-card">
                    <div class="benefit-icon">🌏</div>
                    <h3 class="benefit-title">Global Opportunities</h3>
                    <p>Business skills are transferable anywhere in the world.</p>
                </div>
                <div class="benefit-card">
                    <div class="benefit-icon">📈</div>
                    <h3 class="benefit-title">Real-World Ready</h3>
                    <p>Practical skills that employers value immediately after graduation.</p>
                </div>
            </div>
        </div>

        <!-- CTA Section -->
        <div class="cta-section">
            <h2 style="font-family: 'Playfair Display', serif; color: var(--pink-dark); font-size: 2.5rem; margin-bottom: 20px;">
                Ready to Start Your Journey? 💗
            </h2>
            <p style="color: #666; margin-bottom: 30px; font-size: 1.2rem;">
                Join the ABM family and build the future you deserve!
            </p>
            <a href="#" class="cta-button" onclick="createConfetti(event)">Enroll Now 🎀</a>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal-overlay" id="modal">
        <div class="modal-content">
            <button class="close-btn" onclick="closeModal()">×</button>
            <div id="modalBody"></div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>Made with 💕 for Future Business Leaders</p>
        <div class="social-links">
            <a href="#">📱</a>
            <a href="#">💌</a>
            <a href="#">🌸</a>
        </div>
        <p style="margin-top: 20px; opacity: 0.7;">© 2026 ABM Strand. All rights reserved.</p>
    </footer>

    <script>
        // Profession Data
        const professions = [
            {
                icon: '💼',
                title: 'Accountant',
                preview: 'The financial backbone of every business',
                description: 'Accountants manage financial records, ensure tax compliance, and help businesses make smart financial decisions.',
                skills: ['Financial Analysis', 'Tax Preparation', 'Auditing', 'Bookkeeping', 'Financial Reporting'],
                path: 'CPA Licensure → Senior Accountant → Finance Manager → CFO',
                salary: '₱25,000 - ₱150,000+ monthly',
                why: 'Every business needs an accountant! High job security and clear career progression.'
            },
            {
                icon: '📊',
                title: 'Financial Analyst',
                preview: 'Master of money markets and investments',
                description: 'Financial analysts evaluate investment opportunities, study economic trends, and help organizations make profitable decisions.',
                skills: ['Data Analysis', 'Investment Strategy', 'Risk Assessment', 'Financial Modeling', 'Market Research'],
                path: 'Junior Analyst → Senior Analyst → Portfolio Manager → Investment Director',
                salary: '₱30,000 - ₱200,000+ monthly',
                why: 'Perfect for math lovers! Work in banks, corporations, or investment firms.'
            },
            {
                icon: '🚀',
                title: 'Entrepreneur',
                preview: 'Build your own business empire',
                description: 'Create, manage, and grow your own business ventures. Be your own boss and turn ideas into reality!',
                skills: ['Business Planning', 'Leadership', 'Innovation', 'Risk Management', 'Marketing'],
                path: 'Startup Founder → Business Owner → Serial Entrepreneur → Investor',
                salary: 'Unlimited potential! 💎',
                why: 'Freedom to pursue your passion and unlimited income potential!'
            },
            {
                icon: '📱',
                title: 'Marketing Manager',
                preview: 'Creative mastermind behind brand success',
                description: 'Develop marketing strategies, manage campaigns, and build brand awareness to drive sales and growth.',
                skills: ['Digital Marketing', 'Brand Management', 'Consumer Behavior', 'Campaign Planning', 'Social Media Strategy'],
                path: 'Marketing Coordinator → Manager → Director → CMO',
                salary: '₱25,000 - ₱180,000+ monthly',
                why: 'Combine creativity with business! Fast-paced and exciting work environment.'
            },
            {
                icon: '🏦',
                title: 'Bank Manager',
                preview: 'Lead financial institutions to success',
                description: 'Oversee bank operations, manage staff, ensure customer satisfaction, and drive financial performance.',
                skills: ['Customer Service', 'Sales Management', 'Risk Management', 'Financial Products', 'Team Leadership'],
                path: 'Teller → Loan Officer → Branch Manager → Regional Manager',
                salary: '₱35,000 - ₱120,000+ monthly',
                why: 'Stable career with great benefits and opportunities for advancement.'
            },
            {
                icon: '📦',
                title: 'Supply Chain Manager',
                preview: 'Logistics wizard ensuring smooth operations',
                description: 'Manage the flow of goods and services from production to delivery, optimizing efficiency and reducing costs.',
                skills: ['Logistics', 'Inventory Management', 'Procurement', 'Negotiation', 'Process Optimization'],
                path: 'Logistics Coordinator → Manager → Director → VP Operations',
                salary: '₱30,000 - ₱150,000+ monthly',
                why: 'Critical role in global trade! High demand in manufacturing and retail.'
            },
            {
                icon: '👔',
                title: 'HR Manager',
                preview: 'Champion of workplace culture',
                description: 'Recruit talent, manage employee relations, develop training programs, and shape organizational culture.',
                skills: ['Recruitment', 'Employee Relations', 'Training Development', 'Compensation Management', 'Labor Laws'],
                path: 'HR Assistant → Generalist → Manager → HR Director',
                salary: '₱25,000 - ₱140,000+ monthly',
                why: 'Help people thrive! Essential role in every organization.'
            },
            {
                icon: '🏨',
                title: 'Hotel Manager',
                preview: 'Create unforgettable guest experiences',
                description: 'Oversee hotel operations, ensure guest satisfaction, manage staff, and maximize profitability in hospitality.',
                skills: ['Guest Relations', 'Operations Management', 'Event Planning', 'Revenue Management', 'Quality Service'],
                path: 'Front Desk → Supervisor → Assistant Manager → General Manager',
                salary: '₱25,000 - ₱130,000+ monthly',
                why: 'Travel opportunities and dynamic work environment! Meet people from around the world.'
            }
        ];

        // Generate Profession Cards
        function generateCards() {
            const grid = document.getElementById('professionsGrid');
            professions.forEach((prof, index) => {
                const card = document.createElement('div');
                card.className = 'profession-card';
                card.style.animationDelay = `${index * 0.1}s`;
                card.innerHTML = `
                    <span class="profession-icon">${prof.icon}</span>
                    <h3 class="profession-title">${prof.title}</h3>
                    <p class="profession-preview">${prof.preview}</p>
                    <span class="click-hint">Click to explore! ✨</span>
                `;
                card.onclick = () => openModal(prof);
                grid.appendChild(card);
            });
        }

        // Modal Functions
        function openModal(profession) {
            const modal = document.getElementById('modal');
            const modalBody = document.getElementById('modalBody');
            
            modalBody.innerHTML = `
                <div class="modal-icon">${profession.icon}</div>
                <h2 class="modal-title">${profession.title}</h2>
                
                <div class="info-section">
                    <h3>🎀 What They Do</h3>
                    <p>${profession.description}</p>
                </div>
                
                <div class="info-section">
                    <h3>💕 Key Skills You'll Learn</h3>
                    <ul>
                        ${profession.skills.map(skill => `<li>${skill}</li>`).join('')}
                    </ul>
                </div>
                
                <div class="info-section">
                    <h3>🌸 Career Path</h3>
                    <p>${profession.path}</p>
                </div>
                
                <div class="info-section">
                    <h3>💰 Salary Range</h3>
                    <span class="salary-tag">${profession.salary}</span>
                </div>
                
                <div class="info-section" style="background: linear-gradient(135deg, #ff6b9d 0%, #c44569 100%); color: white; border-left: none;">
                    <h3 style="color: white;">✨ Why Choose This?</h3>
                    <p>${profession.why}</p>
                </div>
            `;
            
            modal.classList.add('active');
            document.body.style.overflow = 'hidden';
        }

        function closeModal() {
            const modal = document.getElementById('modal');
            modal.classList.remove('active');
            document.body.style.overflow = 'auto';
        }

        // Close modal on outside click
        document.getElementById('modal').addEventListener('click', function(e) {
            if (e.target === this) closeModal();
        });

        // Generate Floating Hearts
        function createHearts() {
            const container = document.getElementById('hearts');
            const heartSymbols = ['💕', '💖', '💗', '💓', '💝', '🎀', '✨'];
            
            setInterval(() => {
                const heart = document.createElement('div');
                heart.className = 'heart';
                heart.textContent = heartSymbols[Math.floor(Math.random() * heartSymbols.length)];
                heart.style.left = Math.random() * 100 + '%';
                heart.style.animationDuration = (Math.random() * 10 + 10) + 's';
                heart.style.fontSize = (Math.random() * 20 + 15) + 'px';
                container.appendChild(heart);
                
                setTimeout(() => heart.remove(), 20000);
            }, 1000);
        }

        // Confetti Effect
        function createConfetti(e) {
            e.preventDefault();
            const colors = ['#ff6b9d', '#ffc2d1', '#c44569', '#fff0f3', '#ff9ff3'];
            
            for (let i = 0; i < 50; i++) {
                const confetti = document.createElement('div');
                confetti.className = 'confetti';
                confetti.style.left = e.clientX + 'px';
                confetti.style.top = e.clientY + 'px';
                confetti.style.background = colors[Math.floor(Math.random() * colors.length)];
                confetti.style.transform = `rotate(${Math.random() * 360}deg)`;
                
                const angle = (Math.random() * 360) * (Math.PI / 180);
                const velocity = Math.random() * 10 + 5;
                const tx = Math.cos(angle) * velocity * 20;
                const ty = Math.sin(angle) * velocity * 20;
                
                confetti.style.setProperty('--tx', tx + 'px');
                confetti.style.setProperty('--ty', ty + 'px');
                
                document.body.appendChild(confetti);
                
                setTimeout(() => confetti.remove(), 3000);
            }
            
            alert('🎀 Thank you for your interest! Redirecting to enrollment page...');
        }

        // Initialize
        window.onload = () => {
            generateCards();
            createHearts();
        };

        // Keyboard navigation
        document.addEventListener('keydown', (e) => {
            if (e.key === 'Escape') closeModal();
        });
    </script>
</body>
</html>
