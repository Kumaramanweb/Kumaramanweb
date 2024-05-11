<?php 
session_start();
require "connection.php";
$email = "";
$name = "";
$errors = array();



//page1: section1
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['adv_num'])) {
    // Capture data from the form
    $adv_number = $con->real_escape_string($_POST['adv_num']);
    $date_of_application = $con->real_escape_string($_POST['doa']);
    $application_number = $con->real_escape_string($_POST['ref_num']);
    $post_applied = $con->real_escape_string($_POST['post']);
    $department = $con->real_escape_string($_POST['dept']);

    // Prepare an SQL statement to insert the user data into the database
    $sql = "INSERT INTO applications (adv_number, date_of_application, application_number, post_applied, department)
            VALUES ('$adv_number', '$date_of_application', '$application_number', '$post_applied', '$department')";

    // Execute the query
    if ($con->query($sql) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $con->error;
    }
}
//*******************/


// page1: section2 (personal details)
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['fname'])) {
    // Escape user inputs for security
    $first_name = $con->real_escape_string($_POST['fname']);
    $middle_name = $con->real_escape_string($_POST['mname']);
    $last_name = $con->real_escape_string($_POST['lname']);
    $nationality = $con->real_escape_string($_POST['nationality']);
    $dob = $con->real_escape_string($_POST['dob']);
    $gender = $con->real_escape_string($_POST['gender']);
    $marital_status = $con->real_escape_string($_POST['mstatus']);
    $category = $con->real_escape_string($_POST['cast']);
    $id_proof = $con->real_escape_string($_POST['idproof']);
    $father_name = $con->real_escape_string($_POST['father_name']);
    $correspondence_address = $con->real_escape_string($_POST['cadd']) . ", " . $con->real_escape_string($_POST['cadd1']) . ", " . $con->real_escape_string($_POST['cadd2']) . ", " . $con->real_escape_string($_POST['cadd3']) . ", " . $con->real_escape_string($_POST['cadd4']);
    $permanent_address = $con->real_escape_string($_POST['padd']) . ", " . $con->real_escape_string($_POST['padd1']) . ", " . $con->real_escape_string($_POST['padd2']) . ", " . $con->real_escape_string($_POST['padd3']) . ", " . $con->real_escape_string($_POST['padd4']);
    $mobile = $con->real_escape_string($_POST['mobile']);
    $email = $con->real_escape_string($_POST['email']);
    $alternate_mobile = $con->real_escape_string($_POST['amobile']);
    $alternate_email = $con->real_escape_string($_POST['aemail']);
    $landline_number = $con->real_escape_string($_POST['landlinenum']);

    // Directory where files will be uploaded
    $id_proof_target_dir = "uploads/id_proof/";
    $photo_target_dir = "uploads/photos/";

    // Handling ID proof upload
    if (isset($_FILES['id_proof']) && $_FILES['id_proof']['error'] == 0) {
        $id_proof_file_name = basename($_FILES["id_proof"]["name"]);
        $id_proof_file_path = $id_proof_target_dir . $id_proof_file_name;
        if (!move_uploaded_file($_FILES["id_proof"]["tmp_name"], $id_proof_file_path)) {
            echo "Error uploading ID Proof.<br>";
            $id_proof_file_path = ""; // Set to empty if failed to upload
        }
    }

    // Handling photo upload
    if (isset($_FILES['photo']) && $_FILES['photo']['error'] == 0) {
        $photo_file_name = basename($_FILES["photo"]["name"]);
        $photo_path = $photo_target_dir . $photo_file_name;
        if (!move_uploaded_file($_FILES["photo"]["tmp_name"], $photo_path)) {
            echo "Error uploading Photo.<br>";
            $photo_path = ""; // Set to empty if failed to upload
        }
    }

    // SQL to insert data
    $sql = "INSERT INTO personal_info (first_name, middle_name, last_name, nationality, dob, gender, marital_status, category,id_proof,id_proof_file_path, father_name, photo_path,  correspondence_address, permanent_address, mobile, email, alternate_mobile, alternate_email, landline_number) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
    $stmt = $con->prepare($sql);
    if ($stmt) {
        $stmt->bind_param("sssssssssssssssssss", $first_name, $middle_name, $last_name, $nationality, $dob, $gender, $marital_status, $category,$id_proof, $id_proof_file_path, $father_name, $photo_path,  $correspondence_address, $permanent_address, $mobile, $email, $alternate_mobile, $alternate_email, $landline_number);
        if ($stmt->execute()) {
            echo "New record created successfully<br>";
        } else {
            echo "Error: " . $stmt->error;
        }
        $stmt->close();
    } else {
        echo "Error preparing statement: " . $con->error;
    }
}
//2. Educational Qualifications
//***************************/
// (A) Ph. D. Details 
//(B) Academic Details - PG
//(C) Academic Details - UG
//(D) Academic Details - School
//(E) Additional Educational Qualifications (If any)
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Connect to database here
    // $con = new mysqli($servername, $username, $password, $dbname);

    // Handle form submission
    $degreeLevels = ['PhD', 'Master', 'Bachelor', 'Additional']; // Assuming these are your educational degree levels

    foreach ($degreeLevels as $level) {
        if (isset($_POST[$level . '_degree'])) { // Check if this degree level data is posted
            $degree_name = $_POST[$level . '_degree'] ?? null;
            $university_institute = $_POST[$level . '_college'] ?? null;
            $branch_stream = $_POST[$level . '_subjects'] ?? null;
            $year_of_joining = $_POST[$level . '_yoj'] ?? null;
            $year_of_completion = $_POST[$level . '_yog'] ?? null;
            $duration_years = $_POST[$level . '_duration'] ?? null;
            $percentage_cgpa = $_POST[$level . '_perce'] ?? null;
            $division_class = $_POST[$level . '_rank'] ?? null;
            $supervisor = ($level == 'PhD') ? $_POST['supervisor'] ?? null : null;
            $date_of_defence = ($level == 'PhD') ? $_POST['dod_phd'] ?? null : null;
            $date_of_award = ($level == 'PhD') ? $_POST['doa_phd'] ?? null : null;
            $thesis_title = ($level == 'PhD') ? $_POST['phd_title'] ?? null : null;

            $sql = "INSERT INTO educational_qualifications (degree_level, degree_name, university_institute, branch_stream, supervisor, year_of_joining, date_of_defence, date_of_award, thesis_title, year_of_completion, duration_years, percentage_cgpa, division_class) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            $stmt = $con->prepare($sql);

            if (!$stmt) {
                echo "Error preparing statement: " . $con->error;
                continue;
            }

            $stmt->bind_param("sssssssssssss", $level, $degree_name, $university_institute, $branch_stream, $supervisor, $year_of_joining, $date_of_defence, $date_of_award, $thesis_title, $year_of_completion, $duration_years, $percentage_cgpa, $division_class);
            if ($stmt->execute()) {
                echo $level . " data inserted successfully.<br>";
            } else {
                echo "Error inserting " . $level . " data: " . $stmt->error;
            }
            $stmt->close();
        }
    }
}

//************************** */

//3. Employment Details
//****************** */

//(A) Present Employment
//(B) Employment History (After PhD )
//(C) Teaching Experience (After PhD)
//(D) Research Experience
//(E) Industrial Experience
// Insert data into employment_details table
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Check if the employment details form was submitted
    if (isset($_POST['submit'])) {
        // Assuming you have multiple employment records to process
        if (isset($_POST['position'])) {
            $positions = $_POST['position'];
            $employers = $_POST['employer'] ?? [];  // Use Null Coalescing Operator to handle non-existence
            $dojs = $_POST['doj'] ?? [];
            $dols = $_POST['dol'] ?? [];
            $exp_durations = $_POST['exp_duration'] ?? [];

            for ($i = 0; $i < count($positions); $i++) {
                $position = $positions[$i];
                $employer = $employers[$i] ?? 'Default Employer'; // Provide default if not set
                $doj = $dojs[$i] ?? 'Default DOJ';
                $dol = $dols[$i] ?? 'Default DOL';
                $exp_duration = $exp_durations[$i] ?? 'Default Duration';

                $sql_emp_history = "INSERT INTO employment_history (position, organization, date_of_joining, date_of_leaving, duration)
                    VALUES (?, ?, ?, ?, ?)";
                $stmt_emp_history = $con->prepare($sql_emp_history);
                $stmt_emp_history->bind_param("sssss", $position, $employer, $doj, $dol, $exp_duration);

                if ($stmt_emp_history->execute()) {
                    echo "New record created successfully for employment_history<br>";
                } else {
                    echo "Error: " . $sql_emp_history . "<br>" . $con->error;
                }

                $stmt_emp_history->close();
            }
        }
    }
}

//**********************/
//5. Summary of Publications
// Insert data into publications_summary table
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Prepare SQL statement to insert data into the publications_summary table
    $sql_summary = "INSERT INTO publications_summary (summary_journal_inter, summary_journal, summary_conf_inter, summary_conf_national, patent_publish, summary_book, summary_book_chapter)
            VALUES (?, ?, ?, ?, ?, ?, ?)";
            
    // Prepare and bind parameters for publications_summary
    $stmt_summary = $con->prepare($sql_summary);
    $stmt_summary->bind_param("iiiiiii", $summary_journal_inter, $summary_journal, $summary_conf_inter, $summary_conf_national, $patent_publish, $summary_book, $summary_book_chapter);

    // Set parameters from form data for publications_summary
    $summary_journal_inter = $_POST['summary_journal_inter'] ?? null;
    $summary_journal = $_POST['summary_journal'] ?? null;
    $summary_conf_inter = $_POST['summary_conf_inter'] ?? null;
    $summary_conf_national = $_POST['summary_conf_national'] ?? null;
    $patent_publish = $_POST['patent_publish'] ?? null;
    $summary_book = $_POST['summary_book'] ?? null;
    $summary_book_chapter = $_POST['summary_book_chapter'] ?? null;

    // Execute the prepared statement for publications_summary
    if ($stmt_summary->execute()) {
        echo "New record created successfully for publications_summary<br>";
    } else {
        echo "Error: " . $sql_summary . "<br>" . $con->error;
    }

    // Close statement for publications_summary
    $stmt_summary->close();

    // Handle insertion for publications, patents, books, and book_chapters tables similarly
    // Insert data into publications table
    if (isset($_POST['author'])) {
        $sql_publications = "INSERT INTO publications (author, title, journal, year, impact_factor, doi, status)
                VALUES (?, ?, ?, ?, ?, ?, ?)";
        $stmt_publications = $con->prepare($sql_publications);
        $stmt_publications->bind_param("sssssss", $author, $title, $journal, $year, $impact_factor, $doi, $status);
        for ($i = 0; $i < count($_POST['author']); $i++) {
            $author = $_POST['author'][$i];
            $title = $_POST['title'][$i];
            $journal = $_POST['journal'][$i];
            $year = $_POST['year'][$i];
            $impact_factor = $_POST['impact'][$i];
            $doi = $_POST['doi'][$i];
            $status = $_POST['status'][$i];
            if ($stmt_publications->execute()) {
                echo "New record created successfully for publication " . ($i + 1) . "<br>";
            } else {
                echo "Error: " . $sql_publications . "<br>" . $con->error;
            }
        }
        $stmt_publications->close();
    }

    // Insert data into patents table
    if (isset($_POST['pauthor'])) {
        $sql_patents = "INSERT INTO patents (author, title, country, patent_number, date_filed, date_published, date_issued)
                VALUES (?, ?, ?, ?, ?, ?, ?)";
        $stmt_patents = $con->prepare($sql_patents);
        $stmt_patents->bind_param("sssssss", $author, $title, $country, $patent_number, $date_filed, $date_published, $date_issued);
        for ($i = 0; $i < count($_POST['pauthor']); $i++) {
            $author = $_POST['pauthor'][$i];
            $title = $_POST['ptitle'][$i];
            $country = $_POST['p_country'][$i];
            $patent_number = $_POST['p_number'][$i];
            $date_filed = $_POST['pyear_filed'][$i];
            $date_published = $_POST['pyear_published'][$i];
            $date_issued = $_POST['pyear_issued'][$i];
            if ($stmt_patents->execute()) {
                echo "New record created successfully for patent " . ($i + 1) . "<br>";
            } else {
                echo "Error: " . $sql_patents . "<br>" . $con->error;
            }
        }
        $stmt_patents->close();
    }

    // Insert data into books table
    if (isset($_POST['bauthor'])) {
        $sql_books = "INSERT INTO books (author, title, year, isbn)
                VALUES (?, ?, ?, ?)";
        $stmt_books = $con->prepare($sql_books);
        $stmt_books->bind_param("ssss", $author, $title, $year, $isbn);
        for ($i = 0; $i < count($_POST['bauthor']); $i++) {
            $author = $_POST['bauthor'][$i];
            $title = $_POST['btitle'][$i];
            $year = $_POST['byear'][$i];
            $isbn = $_POST['bisbn'][$i];
            if ($stmt_books->execute()) {
                echo "New record created successfully for book " . ($i + 1) . "<br>";
            } else {
                echo "Error: " . $sql_books . "<br>" . $con->error;
            }
        }
        $stmt_books->close();
    }

    // Insert data into book_chapters table
    if (isset($_POST['bc_author'])) {
        $sql_book_chapters = "INSERT INTO book_chapters (author, title, year, isbn)
                VALUES (?, ?, ?, ?)";
        $stmt_book_chapters = $con->prepare($sql_book_chapters);
        $stmt_book_chapters->bind_param("ssss", $author, $title, $year, $isbn);
        for ($i = 0; $i < count($_POST['bc_author']); $i++) {
            $author = $_POST['bc_author'][$i];
            $title = $_POST['bc_title'][$i];
            $year = $_POST['bc_year'][$i];
            $isbn = $_POST['bc_isbn'][$i];
            if ($stmt_book_chapters->execute()) {
                echo "New record created successfully for book chapter " . ($i + 1) . "<br>";
            } else {
                echo "Error: " . $sql_book_chapters . "<br>" . $con->error;
            }
        }
        $stmt_book_chapters->close();
    }
}

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['submit'])) {
    // Handle additional form data here

    // Example: Retrieve form field values
    $field1 = $_POST['field1'];
    $field2 = $_POST['field2'];
    // Add more fields as needed

    // Example: Prepare SQL statement to insert data into a table
    $sql = "INSERT INTO additional_data (field1, field2) VALUES (?, ?)";
    
    // Prepare and bind parameters for the SQL statement
    $stmt = $con->prepare($sql);
    $stmt->bind_param("ss", $field1, $field2);
    
    // Execute the prepared statement
    if ($stmt->execute()) {
        echo "Data inserted successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $con->error;
    }
 
}


//***************************/
// Insert data into the database
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // For Membership of Professional Societies
    if (isset($_POST['mname']) && isset($_POST['mstatus'])) {
        $membership_names = $_POST['mname'];
        $membership_statuses = $_POST['mstatus'];

        foreach ($membership_names as $index => $name) {
            $status = $membership_statuses[$index];
            $sql = "INSERT INTO memberships (name, status) VALUES (?, ?)";
            $stmt = $con->prepare($sql);
            $stmt->bind_param("ss", $name, $status);
            $stmt->execute();
        }
    }

    // For Professional Training
    if (isset($_POST['trg']) && isset($_POST['porg'])) {
        $training_types = $_POST['trg'];
        $organisations = $_POST['porg'];
        $years = $_POST['pyear'];
        $durations = $_POST['pduration'];

        foreach ($training_types as $index => $type) {
            $organisation = $organisations[$index];
            $year = intval($years[$index]);
            $duration = $durations[$index];
            $sql = "INSERT INTO professional_training (training_type, organisation, year, duration) VALUES (?, ?, ?, ?)";
            $stmt = $con->prepare($sql);
            $stmt->bind_param("ssis", $type, $organisation, $year, $duration);
            $stmt->execute();
        }
    }

    // For Awards
    if (isset($_POST['aname']) && isset($_POST['aawarded_by'])) {
        $award_names = $_POST['aname'];
        $awarded_bys = $_POST['aawarded_by'];
        $award_years = $_POST['ayear'];

        foreach ($award_names as $index => $name) {
            $awarded_by = $awarded_bys[$index];
            $year = intval($award_years[$index]);
            $sql = "INSERT INTO awards (name, awarded_by, year) VALUES (?, ?, ?)";
            $stmt = $con->prepare($sql);
            $stmt->bind_param("ssi", $name, $awarded_by, $year);
            $stmt->execute();
        }
    }

    // For Sponsored Projects
    if (isset($_POST['agency']) && isset($_POST['stitle'])) {
        $agencies = $_POST['agency'];
        $titles = $_POST['stitle'];
        $amounts = $_POST['samount'];
        $periods = $_POST['speriod'];
        $roles = $_POST['s_role'];
        $statuses = $_POST['s_status'];

        foreach ($agencies as $index => $agency) {
            $title = $titles[$index];
            $amount = doubleval($amounts[$index]);
            $period = $periods[$index];
            $role = $roles[$index];
            $status = $statuses[$index];
            $sql = "INSERT INTO sponsored_projects (sponsoring_agency, title, sanctioned_amount, period, role, status) VALUES (?, ?, ?, ?, ?, ?)";
            $stmt = $con->prepare($sql);
            $stmt->bind_param("ssdsss", $agency, $title, $amount, $period, $role, $status);
            $stmt->execute();
        }
    }

    // For Consultancy Projects
    if (isset($_POST['c_org']) && isset($_POST['ctitle'])) {
        $orgs = $_POST['c_org'];
        $ctitles = $_POST['ctitle'];
        $camounts = $_POST['camount'];
        $cperiods = $_POST['cperiod'];
        $croles = $_POST['c_role'];
        $cstatuses = $_POST['c_status'];

        foreach ($orgs as $index => $org) {
            $ctitle = $ctitles[$index];
            $camount = doubleval($camounts[$index]);
            $cperiod = $cperiods[$index];
            $crole = $croles[$index];
            $cstatus = $cstatuses[$index];
            $sql = "INSERT INTO consultancy_projects (organization, title, amount_granted, period, role, status) VALUES (?, ?, ?, ?, ?, ?)";
            $stmt = $con->prepare($sql);
            $stmt->bind_param("ssdsss", $org, $ctitle, $camount, $cperiod, $crole, $cstatus);
            $stmt->execute();
        }
    }

    echo "Data inserted successfully!";
}
//********************************/


// Insert data into the database
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Handle PhD Thesis Supervision only if data exists
    if (isset($_POST['phd_scholar']) && is_array($_POST['phd_scholar'])) {
        processSupervisionData(
            $_POST['phd_scholar'], 
            $_POST['phd_thesis'], 
            $_POST['phd_role'], 
            $_POST['phd_ths_status'], 
            $_POST['phd_ths_year'], 
            $con, 
            "phd_supervision"
        );
    }

    // Handle Master's Thesis Supervision only if data exists
    if (isset($_POST['pg_scholar']) && is_array($_POST['pg_scholar'])) {
        processSupervisionData(
            $_POST['pg_scholar'], 
            $_POST['pg_thesis'], 
            $_POST['pg_role'], 
            $_POST['pg_status'], 
            $_POST['pg_ths_year'], 
            $con, 
            "masters_supervision"
        );
    }

    // Handle Bachelor's Project Supervision only if data exists
    if (isset($_POST['ug_scholar']) && is_array($_POST['ug_scholar'])) {
        processSupervisionData(
            $_POST['ug_scholar'], 
            $_POST['ug_thesis'], 
            $_POST['ug_role'], 
            $_POST['ug_status'], 
            $_POST['ug_ths_year'], 
            $con, 
            "bachelors_supervision"
        );
    }

    echo "Data inserted successfully!";
}

function processSupervisionData($scholars, $theses, $roles, $statuses, $years, $con, $table) {
    $sql = "INSERT INTO {$table} (scholar_name, thesis_title, role, status, year) VALUES (?, ?, ?, ?, ?)";
    $stmt = $con->prepare($sql);
    
    foreach ($scholars as $index => $scholar) {
        $thesis = $theses[$index] ?? 'Not provided';
        $role = $roles[$index] ?? 'Not provided';
        $status = $statuses[$index] ?? 'Not provided';
        $year = $years[$index] ?? 'Not provided';
        
        $stmt->bind_param("sssss", $scholar, $thesis, $role, $status, $year);
        $stmt->execute();
    }

    $stmt->close();
}
//***************************/



// Insert data into the database
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Inserting research statement
    if (isset($_POST['research_statement'])) {
        $research_statement = $_POST['research_statement'];
        $sql = "INSERT INTO research_contributions (research_statement) VALUES (?)";
        $stmt = $con->prepare($sql);
        $stmt->bind_param("s", $research_statement);
        $stmt->execute();
    }

    // Inserting teaching statement
    if (isset($_POST['teaching_statement'])) {
        $teaching_statement = $_POST['teaching_statement'];
        $sql = "INSERT INTO teaching_plans (teaching_statement) VALUES (?)";
        $stmt = $con->prepare($sql);
        $stmt->bind_param("s", $teaching_statement);
        $stmt->execute();
    }

    // Inserting other relevant information
    if (isset($_POST['rel_in'])) {
        $rel_in = $_POST['rel_in'];
        $sql = "INSERT INTO other_relevant_info (information) VALUES (?)";
        $stmt = $con->prepare($sql);
        $stmt->bind_param("s", $rel_in);
        $stmt->execute();
    }

    // Inserting professional service
    if (isset($_POST['prof_serv'])) {
        $prof_serv = $_POST['prof_serv'];
        $sql = "INSERT INTO professional_service (service_details) VALUES (?)";
        $stmt = $con->prepare($sql);
        $stmt->bind_param("s", $prof_serv);
        $stmt->execute();
    }

    // Inserting journal publications
    if (isset($_POST['jour_details'])) {
        $jour_details = $_POST['jour_details'];
        $sql = "INSERT INTO journal_publications (details) VALUES (?)";
        $stmt = $con->prepare($sql);
        $stmt->bind_param("s", $jour_details);
        $stmt->execute();
    }

    // Inserting conference publications
    if (isset($_POST['conf_details'])) {
        $conf_details = $_POST['conf_details'];
        $sql = "INSERT INTO conference_publications (details) VALUES (?)";
        $stmt = $con->prepare($sql);
        $stmt->bind_param("s", $conf_details);
        $stmt->execute();
    }

    echo "Data inserted successfully!";
}
//***************************/

// Handle file upload
function uploadFile($fileIndex, $targetDir = "uploads/") {
    $targetFile = $targetDir . basename($_FILES[$fileIndex]['name']);
    $fileType = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));
    if (move_uploaded_file($_FILES[$fileIndex]['tmp_name'], $targetFile)) {
        return ['name' => basename($_FILES[$fileIndex]['name']), 'path' => $targetFile, 'type' => $fileType];
    }
    return false;
}

// Insert data into the database
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Insert referees information
    if (isset($_POST['ref_name'])) {
        foreach ($_POST['ref_name'] as $index => $name) {
            $position = $_POST['position'][$index];
            $association = $_POST['association_referee'][$index];
            $organization = $_POST['org'][$index];
            $email = $_POST['email'][$index];
            $phone = $_POST['phone'][$index];

            $sql = "INSERT INTO referees (name, position, association, organization, email, contact_no) VALUES (?, ?, ?, ?, ?, ?)";
            $stmt = $con->prepare($sql);
            $stmt->bind_param("ssssss", $name, $position, $association, $organization, $email, $phone);
            $stmt->execute();
        }
    }

    // Handling file uploads
    $filesToUpload = ['userfile7', 'userfile', 'userfile1', 'userfile2', 'userfile3', 'userfile4', 'userfile5', 'userfile6', 'userfile8', 'userfile9', 'userfile10'];
    foreach ($filesToUpload as $fileIndex) {
        if (isset($_FILES[$fileIndex]) && $_FILES[$fileIndex]['error'] == 0) {
            $fileInfo = uploadFile($fileIndex);
            if ($fileInfo) {
                $sql = "INSERT INTO file_uploads (file_name, file_path, file_type, upload_time) VALUES (?, ?, ?, NOW())";
                $stmt = $con->prepare($sql);
                $stmt->bind_param("sss", $fileInfo['name'], $fileInfo['path'], $fileInfo['type']);
                $stmt->execute();
            }
        }
    }
    
    echo "Data and files uploaded successfully!";
}
//**********************/

// Check if the form was submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Check if the declaration checkbox is checked
    $decl_status = isset($_POST['decl_status']) ? 1 : 0;  // 1 if checked, 0 if not

    // Prepare SQL statement to insert data into the declarations table
    $sql = "INSERT INTO declarations (decl_status) VALUES (?)";
    
    // Prepare and bind parameters
    $stmt = $con->prepare($sql);
    if ($stmt === false) {
        die("MySQL prepare error: " . $con->error);
    }

    $stmt->bind_param("i", $decl_status);
    
    // Execute the prepared statement
    if ($stmt->execute()) {
        echo "Declaration recorded successfully.";
    } else {
        echo "Error: " . $stmt->error;
    }

    // Close statement
    $stmt->close();
}
//************************/




//if page1 submit button clicked
if(isset($_POST['submit1'])) {
    // Process form data here
    
    // Redirect to the next page
    header('Location: page2.php');
    exit; // Make sure to exit after sending the header
}
//if page2 submit button clicked
if(isset($_POST['submit2'])) {
    // Process form data here
    
    // Redirect to the next page
    header('Location: page3.php');
    exit; // Make sure to exit after sending the header
}
//if page3 submit button clicked
if(isset($_POST['submit3'])) {
    // Process form data here
    
    // Redirect to the next page
    header('Location: page4.php');
    exit; // Make sure to exit after sending the header
}
//if page4 submit button clicked
if(isset($_POST['submit4'])) {
    // Process form data here
    
    // Redirect to the next page
    header('Location: page5.php');
    exit; // Make sure to exit after sending the header
}
//if page5 submit button clicked
if(isset($_POST['submit5'])) {
    // Process form data here
    
    // Redirect to the next page
    header('Location: page6.php');
    exit; // Make sure to exit after sending the header
}
//if page6 submit button clicked
if(isset($_POST['submit6'])) {
    // Process form data here
    
    // Redirect to the next page
    header('Location: page7.php');
    exit; // Make sure to exit after sending the header
}
//if page7 submit button clicked
if(isset($_POST['submit7'])) {
    // Process form data here
    
    // Redirect to the next page
    header('Location: page8.php');
    exit; // Make sure to exit after sending the header
}
//if page8 submit button clicked
if(isset($_POST['submit8'])) {
    // Process form data here
    
    // Redirect to the next page
    header('Location: page9.php');
    exit; // Make sure to exit after sending the header
}
//if page9 submit button clicked
if(isset($_POST['preview'])) {
    // Process form data here
    
    // Redirect to the next page
    header('Location: page8.php');
    exit; // Make sure to exit after sending the header
}

//Upload photo page1
// if(isset($_POST['userfile'])){
//     $file_name=$_FILES['image']['name'];
//     $tempname= $_FILES['image']['tmp_name'];
//     $folder= 'Images/'.$file_name;

//     $query = mysqli_query($con, "Insert into images (file) values ('$file_name')");

//     if(move_uploaded_file($tempname, $folder)){
//         echo "<h2>File Uploaded Successfully</h2>";

//     }
//     else{
//         echo "<h2>File not uploaded.</h2>";
//     }
//  }

//if user signup button

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        if(isset($_POST['signup'])){
            $name = isset($_POST['firstname']) ? mysqli_real_escape_string($con, $_POST['firstname']) : '';
            $email = isset($_POST['email']) ? mysqli_real_escape_string($con, $_POST['email']) : '';
            $password = isset($_POST['password']) ? mysqli_real_escape_string($con, $_POST['password']) : '';
            $cpassword = isset($_POST['cpassword']) ? mysqli_real_escape_string($con, $_POST['cpassword']) : '';
         if($password !== $cpassword){
        $errors['password'] = "Confirm password not matched!";
    }
    $email_check = "SELECT * FROM usertable WHERE email = '$email'";
    $res = mysqli_query($con, $email_check);
    if(mysqli_num_rows($res) > 0){
        $errors['email'] = "Email that you have entered is already exist!";
    }
    if(count($errors) === 0){
        $encpass = password_hash($password, PASSWORD_BCRYPT);
        $code = rand(999999, 111111);
        $status = "notverified";
        $insert_data = "INSERT INTO usertable (name, email, password, code, status)
                        values('$name', '$email', '$encpass', '$code', '$status')";
        $data_check = mysqli_query($con, $insert_data);
        if($data_check){
            $subject = "Email Verification Code";
            $message = "This is a system generated mail. Please do not reply to this email ID.

            Dear $name
            You have Successfully Register in the portal.
            Your verification code is $code";
            $sender = "From: sonalikachandra79@gmail.com";
            if(mail($email, $subject, $message, $sender)){
                $info = "We've sent a verification code to your email - $email";
                $_SESSION['info'] = $info;
                $_SESSION['email'] = $email;
                $_SESSION['password'] = $password;
                header('location: user-otp.php');
                exit();
            }else{
                $errors['otp-error'] = "Failed while sending code!";
            }
        }else{
            $errors['db-error'] = "Failed while inserting data into database!";
        }
    }
}

}
// Check if the form was submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Check if a file was uploaded
    if(isset($_FILES['userfile'])) {
        $file_name=$_FILES['image']['name'];
        $file_tmp= $_FILES['image']['tmp_name'];
        // $folder= 'Images/'.$file_name;
        // $file_name = $_FILES['userfile']['name'];
        // $file_size = $_FILES['userfile']['size'];
        // $file_tmp = $_FILES['userfile']['tmp_name'];
        // $file_type = $_FILES['userfile']['type'];
        
        // Move the uploaded file to a permanent location
        $target_dir = "Images/"; // Choose the directory where you want to save the uploaded files
        $target_file = $target_dir . basename($file_name);
        // Check if file has been uploaded successfully
        if (move_uploaded_file($file_tmp, $target_file)) {
            echo "File uploaded successfully.";
        } else {
            echo "Error uploading file.";
        }
    }
}
    //if user click verification code submit button
    if(isset($_POST['check'])){
        $_SESSION['info'] = "";
        $otp_code = mysqli_real_escape_string($con, $_POST['otp']);
        $check_code = "SELECT * FROM usertable WHERE code = $otp_code";
        $code_res = mysqli_query($con, $check_code);
        if(mysqli_num_rows($code_res) > 0){
            $fetch_data = mysqli_fetch_assoc($code_res);
            $fetch_code = $fetch_data['code'];
            $email = $fetch_data['email'];
            $code = 0;
            $status = 'verified';
            $update_otp = "UPDATE usertable SET code = $code, status = '$status' WHERE code = $fetch_code";
            $update_res = mysqli_query($con, $update_otp);
            if($update_res){
                $_SESSION['name'] = $name;
                $_SESSION['email'] = $email;
                header('location: page1.php');
                exit();
            }else{
                $errors['otp-error'] = "Failed while updating code!";
            }
        }else{
            $errors['otp-error'] = "You've entered incorrect code!";
        }
    }

    //if user click login button
    if($_SERVER["REQUEST_METHOD"] == "POST"){
    if(isset($_POST['login'])){
        $email = mysqli_real_escape_string($con, $_POST['email']);
        $password = mysqli_real_escape_string($con, $_POST['password']);
        $check_email = "SELECT * FROM usertable WHERE email = '$email'";
        $res = mysqli_query($con, $check_email);
        if(mysqli_num_rows($res) > 0){
            $fetch = mysqli_fetch_assoc($res);
            $fetch_pass = $fetch['password'];
            if(password_verify($password, $fetch_pass)){
                $_SESSION['email'] = $email;
                $status = $fetch['status'];
                if($status == 'verified'){
                  $_SESSION['email'] = $email;
                  $_SESSION['password'] = $password;
                    header('location: page1.php');
                }else{
                    $info = "It's look like you haven't still verify your email - $email";
                    $_SESSION['info'] = $info;
                    header('location: user-otp.php');
                }
            }else{
                $errors['email'] = "Incorrect email or password!";
            }
        }else{
            $errors['email'] = "It's look like you're not yet a member! Click on the bottom link to signup.";
        }
    }
    }
    //if user click continue button in forgot password form
    if(isset($_POST['check-email'])){
        $email = mysqli_real_escape_string($con, $_POST['email']);
        $check_email = "SELECT * FROM usertable WHERE email='$email'";
        $run_sql = mysqli_query($con, $check_email);
        if(mysqli_num_rows($run_sql) > 0){
            $code = rand(999999, 111111);
            $insert_code = "UPDATE usertable SET code = $code WHERE email = '$email'";
            $run_query =  mysqli_query($con, $insert_code);
            if($run_query){
                $subject = "Password Reset Code";
                $message = "Your password reset code is $code";
                $sender = "From: sonalikachandra79@gmail.com";
                if(mail($email, $subject, $message, $sender)){
                    $info = "We've sent a passwrod reset otp to your email - $email";
                    $_SESSION['info'] = $info;
                    $_SESSION['email'] = $email;
                    header('location: reset-code.php');
                    exit();
                }else{
                    $errors['otp-error'] = "Failed while sending code!";
                }
            }else{
                $errors['db-error'] = "Something went wrong!";
            }
        }else{
            $errors['email'] = "This email address does not exist!";
        }
    }

    //if user click check reset otp button
    if(isset($_POST['check-reset-otp'])){
        $_SESSION['info'] = "";
        $otp_code = mysqli_real_escape_string($con, $_POST['otp']);
        $check_code = "SELECT * FROM usertable WHERE code = $otp_code";
        $code_res = mysqli_query($con, $check_code);
        if(mysqli_num_rows($code_res) > 0){
            $fetch_data = mysqli_fetch_assoc($code_res);
            $email = $fetch_data['email'];
            $_SESSION['email'] = $email;
            $info = "Please create a new password that you don't use on any other site.";
            $_SESSION['info'] = $info;
            header('location: page1.php');
            exit();
        }else{
            $errors['otp-error'] = "You've entered incorrect code!";
        }
    }

    //change password button in page1
    if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['changesubmit'])) {
       //$fid = $_SESSION['user_id']; // Assuming user ID is stored in session
        $currentPassword = mysqli_real_escape_string($con, $_POST['cr_password']);
        $newPassword = mysqli_real_escape_string($con, $_POST['n_password']);
        $confirmNewPassword = mysqli_real_escape_string($con, $_POST['cn_password']);
    
        if (empty($currentPassword) || empty($newPassword) || empty($confirmNewPassword)) {
            echo "All fields are required.";
        } else if ($newPassword !== $confirmNewPassword) {
            echo "New passwords do not match.";
        } else {
            // Check the current password
            $query = "SELECT password FROM usertable WHERE password = '$currentPassword'";
            $result = mysqli_query($con, $query);
            if (mysqli_num_rows($result) > 0) {
                $row = mysqli_fetch_assoc($result);
                if (password_verify($currentPassword, $row['password'])) {
                    // Current password is correct, update to new password
                    $newEncryptedPassword = password_hash($newPassword, PASSWORD_BCRYPT);
                    $updateQuery = "UPDATE usertable SET password = '$newEncryptedPassword' WHERE id = '$fid'";
                    if (mysqli_query($con, $updateQuery)) {
                        echo "Password updated successfully.";
                    } else {
                        echo "Failed to update password.";
                    }
                } else {
                    echo "Current password is incorrect.";
                }
            } else {
                echo "User not found.";
            }
        }
    }
//**************************/



    //if user click change password button
    // if(isset($_POST['change-password'])){
    //     $_SESSION['info'] = "";
    //     $password = mysqli_real_escape_string($con, $_POST['password']);
    //     $cpassword = mysqli_real_escape_string($con, $_POST['cpassword']);
    //     if($password !== $cpassword){
    //         $errors['password'] = "Confirm password not matched!";
    //     }else{
    //         $code = 0;
    //         $email = $_SESSION['email']; //getting this email using session
    //         $encpass = password_hash($password, PASSWORD_BCRYPT);
    //         $update_pass = "UPDATE usertable SET code = $code, password = '$encpass' WHERE email = '$email'";
    //         $run_query = mysqli_query($con, $update_pass);
    //         if($run_query){
    //             $info = "Please Check your Registered Email Id, We send a link for change the password
    //                       Thank you!";
    //             $_SESSION['info'] = $info;
    //             header('Location: password-changed.php');
    //         }else{
    //             $errors['db-error'] = "Failed to change your password!";
    //         }
    //     }
    // }

    //reset -password link
   
if($_SERVER["REQUEST_METHOD"] == "POST"){
if (isset($_POST['change-password'])) {
    $email = mysqli_real_escape_string($con, $_POST['email']);
    // Check if user exists
    $check_email = "SELECT * FROM usertable WHERE email='$email'";
    $run_sql = mysqli_query($con, $check_email);
    if (mysqli_num_rows($run_sql) > 0) {
        $code = rand(999999, 111111);  // Generate a random code or token
        $insert_code = "UPDATE usertable SET code = $code WHERE email = '$email'";
        $run_query = mysqli_query($con, $insert_code);
        if ($run_query) {
            $subject = "Password Reset Link";
            $message = "Here is your password reset link: 
            <a href='localhost/Login and Signup Form with Email Verification - PHP/reset_password.php?token=$code&email=$email'>Reset Password</a>";
            $headers = "From: sonalikachandra79@gmail.com\r\n";
            $headers .= "Content-type: text/html\r\n";
            mail($email, $subject, $message, $headers);
            $_SESSION['info'] = "We've sent a password reset link to your email - $email";
            header('Location: login-user.php');
            exit();
        } else {
            $errors['db-error'] = "Failed to process your request!";
        }
    } else {
        $errors['email'] = "This email address does not exist!";
    }

}

}

    
   //if login now button click
    if(isset($_POST['login-now'])){
        header('Location: login-user.php');
    }
?>