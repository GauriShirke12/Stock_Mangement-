<%-- 
    Document   : bill
    Created on : 2 Apr, 2024, 10:31:10 PM
    Author     : gauri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Invoice System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script>
        // Function to calculate total amount for an item
        function calculateItemTotal(row) {
            var quantity = parseFloat(row.querySelector(".quantity").value);
            var gst = parseFloat(row.querySelector(".gst").value);
            var price = parseFloat(row.querySelector(".price").value);
            var totalPriceWithGST = price + (1 + gst / 100); 
            var total = quantity * totalPriceWithGST; 
            row.querySelector(".total").innerHTML = total.toFixed(2);
        }

        // Function to generate invoice
        function generateInvoice() {
            var companyName = document.getElementById("company").value;
            var date = document.getElementById("date").value;
            var items = document.getElementsByClassName("item");
            var invoiceItems = [];

            for (var i = 0; i < items.length; i++) {
                var productName = items[i].querySelector(".productName").value;
                var unit = items[i].querySelector(".unit").value;
                var quantity = parseFloat(items[i].querySelector(".quantity").value);
                var gst = parseFloat(items[i].querySelector(".gst").value);
                var price = parseFloat(items[i].querySelector(".price").value);
                var total = parseFloat(items[i].querySelector(".total").innerHTML);

                // Validate input fields
                if (productName.trim() === '' || unit.trim() === '' || isNaN(quantity) || isNaN(gst) || isNaN(price) || isNaN(total)) {
                    alert('Please fill out all fields correctly.');
                    return;
                }

                invoiceItems.push({
                    productName: productName,
                    unit: unit,
                    quantity: quantity,
                    gst: gst,
                    price: price,
                    total: total
                });
            }

            // Store invoice data in local storage
            localStorage.setItem('invoiceData', JSON.stringify({
                companyName: companyName,
                date: date,
                items: invoiceItems
            }));

            // Redirect to the bill page
            window.location.href = 'bill_page2.html';
        }

        // Function to add new invoice item row
        function addInvoiceItem() {
            var tableBody = document.getElementById("invoiceTableBody");
            var newRow = document.createElement("tr");
            newRow.innerHTML = `
                <td><input type="text" class="form-control productName" value="" size="30" required /></td>
                <td><input type="number" class="form-control quantity" value="" min="1" onchange="calculateItemTotal(this.parentNode.parentNode)" required /></td>
                <td><input type="text" class="form-control unit" value="" size="10" required /></td>
                <td><input type="number" class="form-control gst" value="" min="0" step="0.01" onchange="calculateItemTotal(this.parentNode.parentNode)" required /></td>
                <td><input type="number" class="form-control price" value="" min="0" step="0.01" onchange="calculateItemTotal(this.parentNode.parentNode)" required /></td>
                <td><span class="total">0.00</span></td>
            `;
            newRow.classList.add("item");
            tableBody.appendChild(newRow);
        }
    </script>
</head>
<body>
    <center>
        <h2 class="mb-5 text-center">Billing Invoice</h2>
        <div class="container">
            <form>
                <div class="input-box">
                    <div class="row mt-5 mb-5">
                        <div class="form-group col-md-6">
                            <label for="customerName">Customer Name</label>
                            <input type="text" class="form-control" id="company" name="company" value="" required/>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="date">Invoice Date</label><br>
                            <input type="date" class="form-control" id="date" name="date" value="" required/>
                        </div>
                    </div>
                    <div class="input-box">
                        <table class="table table-bordered" id="invoiceTable">
                            <thead>
                                <tr>
                                    <th>Product Name</th>
                                    <th>Quantity</th>
                                    <th>Units</th>
                                    <th>Tax</th>
                                    <th>Price</th>
                                    <th>Total</th>
                                </tr>
                            </thead>
                            <tbody id="invoiceTableBody">
                                <tr class="item">
                                    <td><input type="text" class="form-control productName" value="" size="30" required /></td>
                                    <td><input type="number" class="form-control quantity" value="" min="1" onchange="calculateItemTotal(this.parentNode.parentNode)" required /></td>
                                    <td><input type="text" class="form-control unit" value="" size="10" required /></td>
                                    <td><input type="number" class="form-control gst" value="" min="0" step="0.01" onchange="calculateItemTotal(this.parentNode.parentNode)" required /></td>
                                    <td><input type="number" class="form-control price" value="" min="0" step="0.01" onchange="calculateItemTotal(this.parentNode.parentNode)" required /></td>
                                    <td><span class="total">0.00</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="button">
                        <button type="button" class="btn btn-danger btn-print mt-2" onclick="addInvoiceItem()">Add Item</button>
                        <button type="button" class="btn btn-primary mt-2" onclick="generateInvoice()">Generate Invoice</button>
                    </div>
                </div>
            </form>
        </div>
    </center>
</body>
</html>
