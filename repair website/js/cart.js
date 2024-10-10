function addToCart(item, price) {
    var quantity = parseInt(document.getElementById(item).value);
    if (!isNaN(quantity) && quantity > 0) {
        var itemTotal = quantity * price;
        var invoiceBody = document.getElementById('invoiceBody');
        var totalPriceElement = document.getElementById('totalPrice');
        var existingItemRow = invoiceBody.querySelector('tr[data-item="' + item + '"]');
        
        if (existingItemRow) {
            // Update the quantity and total price for existing item
            var existingQuantity = parseInt(existingItemRow.querySelector('.quantity').textContent);
            var newQuantity = existingQuantity + quantity;
            existingItemRow.querySelector('.quantity').textContent = newQuantity;
            existingItemRow.querySelector('.total').textContent = '₹' + (newQuantity * price);
        } else {
            // Add new row for the item
            var newRow = document.createElement('tr');
            newRow.setAttribute('data-item', item);
            newRow.innerHTML = '<td>' + item + '</td>' +
                               '<td>₹' + price + '</td>' +
                               '<td class="quantity">' + quantity + '</td>' +
                               '<td class="total">₹' + itemTotal + '</td>';
            invoiceBody.appendChild(newRow);
        }
        
        // Update the total price
        var totalPrice = parseInt(totalPriceElement.textContent.slice(1)); // Remove the '₹' sign
        totalPrice += itemTotal;
        totalPriceElement.textContent = '₹' + totalPrice;
        
        // Show the invoice
        document.querySelector('.right').style.display = 'block';
    } else {
        alert('Please enter a valid quantity.');
    }
}
// Function to change the background color of .right every second
function changeBackgroundColor() {
    var rightElement = document.querySelector('.right');
    setInterval(function() {
        var randomColor = '#' + Math.floor(Math.random() * 16777215).toString(16); // Generate random color
        rightElement.style.backgroundColor = randomColor;
    }, 1000); 
}

window.onload = function() {
    changeBackgroundColor();
};
