window.addEventListener('message', function(event) {
    if (event.data.action === "openUI") {
        const container = document.getElementById('character-container');
        container.innerHTML = '';
        for (let i = 0; i < event.data.characters.length; i++) {
            const char = event.data.characters[i];
            const slot = i + 1;
            const div = document.createElement('div');
            div.className = 'character-slot';
            div.innerHTML = `
                <h3>Slot ${slot}</h3>
                <p>Name: ${char.firstname} ${char.lastname}</p>
                <button onclick="selectCharacter(${slot})">Select</button>
            `;
            container.appendChild(div);
        }
    }
});

function selectCharacter(slot) {
    fetch(`https://${GetParentResourceName()}/selectCharacter`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ slot })
    });
}
