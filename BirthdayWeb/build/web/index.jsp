<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Unlock Your Special Gift</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet">

    <style>
body {
    background: linear-gradient(rgba(255, 230, 240, 0.85), rgba(255, 230, 240, 0.85)),
                url('https://images.unsplash.com/photo-1518837695005-2083093ee35b?auto=format&fit=crop&w=1600&q=80') no-repeat center center fixed;
    background-size: cover;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    font-family: 'Poppins', sans-serif;
}

.container {
    background: white;
    padding: 25px 30px;
    border-radius: 20px;
    box-shadow: 0 0 15px rgba(255, 150, 200, 0.3);
    text-align: center;
    max-width: 350px;
    width: 100%;
}

.heart-icon {
    font-size: 40px;
    color: #ff4d88;
    display: block;
    margin-bottom: 10px;
}

h3 {
    font-size: 20px;
    font-weight: bold;
    color: #ff3399;
    margin-bottom: 15px;
}

.pin-display {
    display: flex;
    justify-content: center;
    gap: 8px;
    margin: 20px 0;
}

.pin-box {
    width: 36px;
    height: 36px;
    font-size: 24px;
    border: 2px solid pink;
    border-radius: 8px;
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #fff;
}

.keypad {
    display: grid;
    grid-template-columns: repeat(3, 55px);
    gap: 12px;
    justify-content: center;
}

.key {
    background: #ffc0cb;
    border: none;
    border-radius: 50%;
    width: 55px;
    height: 55px;
    font-size: 20px;
    color: white;
    cursor: pointer;
    transition: background 0.2s;
}

.key:active {
    background: #ff80aa;
}

.submit-key {
    background: #d63384;
}
</style>
</head>
<body>

<div class="container">
    <span class="material-symbols-outlined heart-icon">favorite</span>
    <h3>Unlock Your Special Gift</h3>

    <div class="pin-display">
        <div class="pin-box" id="pin1"></div>
        <div class="pin-box" id="pin2"></div>
        <div class="pin-box" id="pin3"></div>
        <div class="pin-box" id="pin4"></div>
    </div>

    <div class="keypad">
        <% for (int i = 1; i <= 9; i++) { %>
            <button class="key" onclick="press('<%= i %>')"><%= i %></button>
        <% } %>
        <button class="key" onclick="clearPin()">✖</button>
        <button class="key" onclick="press('0')">0</button>
        <button class="key submit-key" onclick="submitPin()">🔒</button>
    </div>
</div>

<script>
    let pin = "";

    function press(num) {
        if (pin.length < 4) {
            pin += num;
            updateBoxes();
        }
    }

    function updateBoxes() {
        for (let i = 0; i < 4; i++) {
            const box = document.getElementById('pin' + (i + 1));
            box.innerHTML = i < pin.length ? "❤️" : ""; // tampilkan ❤️ hanya jika ada input
        }
    }

    function clearPin() {
        pin = "";
        updateBoxes();
    }

    function submitPin() {
        if (pin === "1901") {
            window.location.href = "letter.jsp";
        } else {
            alert("PIN salah, coba lagi ya 😥");
            clearPin();
        }
    }
</script>

</body>
</html>