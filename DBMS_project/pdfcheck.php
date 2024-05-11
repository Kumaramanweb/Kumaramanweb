<?php

require 'vendor/autoload.php';
require_once 'controllerUserData.php';       // Database connection
// Extend TCPDF to create custom header and footer
session_start();

// Check if the user is logged in
if (!isset($_SESSION['id'])) {
    // User is not logged in, redirect them or handle accordingly
    header('Location: login.php');
    exit;
}

// Get user ID from session
$id = $_SESSION['id'];

$query = "SELECT adv_number FROM applications WHERE id = ?";
$stmt = $con->prepare($query);
$stmt->bind_param("i", $id);
$stmt->execute();
$result = $stmt->get_result();
$row = $result->fetch_assoc();

if ($row) {
    $adv_num = $row['adv_number'];
} else {
    $adv_num = "N/A"; // Default value if no data found
}
class MYPDF extends TCPDF {
    public function Header() {
        // You can include any header content here or leave it empty if not needed
    }

    public function Footer() {
        // Custom Footer
        $this->SetY(-15);
        $this->SetFont('helvetica', 'I', 8);
        $this->Cell(0, 10, 'Page '.$this->getAliasNumPage().'/'.$this->getAliasNbPages(), 0, false, 'C', 0, '', 0, false, 'T', 'M');
    }
}

// Create new PDF document
$pdf = new MYPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('Indian Institute of Technology Indore');
$pdf->SetTitle('Faculty Application');
$pdf->setPrintHeader(true);
$pdf->setPrintFooter(true);
$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);
$pdf->AddPage();
$pdf->SetFont('helvetica', '', 10);

// Define content with multiline string
$html = <<<EOD
<h2 style="text-align:center;">Application for the Faculty Position</h2>
<table cellspacing="0" cellpadding="4" border="0">
    <tr>
        <td colspan="4"><strong>Advertisement Number:</strong>{$adv_num}</td>
    </tr>
    <tr>
        <td colspan="2"><strong>Date of Application:</strong> 09/05/2024</td>
        <td colspan="2"><strong>Application Number:</strong> 1698348185</td>
    </tr>
    <tr>
        <td colspan="4"><strong>Post Applied for:</strong> Assistant Professor Grade I</td>
    </tr>
    <tr>
        <td colspan="4"><strong>Department:</strong> Chemical Engineering</td>
    </tr>
    <tr>
        <td colspan="4" style="background-color: #000; color: #fff; text-align: center;">Personal Details</td>
    </tr>
    <tr>
        <td><strong>First Name:</strong> Kasper</td>
        <td><strong>Middle Name:</strong> Hiram</td>
        <td><strong>Last Name:</strong> Buckner</td>
        <td><strong>Nathaniel Solis:</strong></td>
    </tr>
    <tr>
        <td><strong>Date of Birth:</strong> 30/11/-0001</td>
        <td><strong>Gender:</strong> Other</td>
        <td><strong>Marital Status:</strong> Married</td>
        <td><strong>Category:</strong> UR</td>
    </tr>
    <tr>
        <td><strong>Nationality:</strong> OCI</td>
        <td><strong>ID Proof:</strong> PASSPORT</td>
        <td><strong>Father's Name:</strong> Damon Hayden</td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2"><strong>Current Address:</strong> Velit at incididunt consequatur quia et anim pariatur</td>
        <td colspan="2"><strong>Permanent Address:</strong> Ullamco dolore sapiente id commodi qui aut aut in ut</td>
    </tr>
</table>
EOD;

// output the HTML content
$pdf->writeHTML($html, true, false, true, false, '');

// Close and output PDF document
$pdf->Output('application_first_page.pdf', 'I');
?>

class MYPDF extends TCPDF {
    public function Header() {
        $this->SetFont('helvetica', 'B', 10);
        $this->Cell(0, 10, 'Application for Faculty Position - Indian Institute of Technology Indore', 0, false, 'C', 0, '', 0, false, 'M', 'M');
    }

    public function Footer() {
        $this->SetY(-15);
        $this->SetFont('helvetica', 'I', 8);
        $this->Cell(0, 10, 'Page '.$this->getAliasNumPage().'/'.$this->getAliasNbPages(), 0, false, 'C', 0, '', 0, false, 'T', 'M');
    }
}

// Create new PDF document
$pdf = new TCPDF();
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('IIT Indore');
$pdf->SetTitle('Faculty Application');
$pdf->setPrintHeader(true);
$pdf->setPrintFooter(true);
$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

// Add a page
$pdf->AddPage();

// Set font
$pdf->SetFont('helvetica', '', 10);

// Fetch your data here from the database and store it in variables

// Simulating fetched data (you should replace this part with your actual database query results)
$firstName = 'John';
$lastName = 'Doe';
$position = 'Assistant Professor';
$department = 'Computer Science';
$dateOfApplication = '2024-05-09';
$applicationNumber = '123456789';

// Begin the structure of your PDF content (adjust the HTML/CSS as needed)
$html = <<<EOD
<style>
th {
    background-color: #D3D3D3;
    font-weight: bold;
}
</style>
<h2>Personal Information</h2>
<table cellspacing="0" cellpadding="5" border="1">
    <tr>
        <th>First Name</th>
        <td>$firstName</td>
        <th>Last Name</th>
        <td>$lastName</td>
    </tr>
    <tr>
        <th>Position Applied For</th>
        <td colspan="3">$position</td>
    </tr>
    <tr>
        <th>Department</th>
        <td colspan="3">$department</td>
    </tr>
    <tr>
        <th>Date of Application</th>
        <td>$dateOfApplication</td>
        <th>Application Number</th>
        <td>$applicationNumber</td>
    </tr>
</table>

<h2>Education</h2>
<p>Include detailed tables about educational background here. Add more tables as needed for Ph.D., Masters, etc.</p>

<h2>Employment History</h2>
<p>Similarly, detail the employment history in a structured table format.</p>
EOD;

// Output the HTML content
$pdf->writeHTML($html, true, false, true, false, '');

// Close and output PDF document
$pdf->Output('application.pdf', 'I');
?>
