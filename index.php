<?php
	include("./include.php");
?>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width">
		
		<title><?php echo $site_title; ?></title>
		
		<!-- link to the stylesheets -->
		<link rel="stylesheet" type="text/css" href="./main.css"></link>
	</head>
	
	<body>
		
		<div id="wrapper">
			
			<div id="top_header">

				<div id="logo">
					<h1><a href="<?php echo SITE_ADDR;?>">search engine</a></h1>
				</div>
			</div>

			<div id="main" class="shadow-box"><div id="content">
				
				<center>
				<form action="" method="GET" name="">
					<table>
						<tr>
							<td><input type="text" name="k" placeholder="youtube" autocomplete="off"></td>
							<td><input type="submit" name="" value="Cari" ></td>
						</tr>
					</table>
				</form>
				</center>

				<?php

					// CHECK TO SEE IF THE KEYWORDS WERE PROVIDED
					if (isset($_GET['k']) && $_GET['k'] != ''){
						
						// save the keywords from the url
						$k = trim($_GET['k']);

						// create a base query and words string
						$query_string = "SELECT * FROM search_engine WHERE ";
						$display_words = "";

						// seperate each of the keywords
						$keywords = explode(' ', $k); 
						foreach($keywords as $word){
							$query_string .= " keywords LIKE '%".$word."%' OR ";
							$display_words .= $word." ";
						}
						$query_string = substr($query_string, 0, strlen($query_string) - 3);

						// connect to the database
						$conn = mysqli_connect(DB_SERVER, DB_USER, DB_PASS, DB_NAME);

						$query = mysqli_query($conn, $query_string);
						$result_count = mysqli_num_rows($query);

						// check to see if any results were returned
						if ($result_count > 0){
							
							// display search result count to user
							echo '<br /><div class="right"><b><u>'.$result_count.'</u></b> hasil ditemukan</div>';
							echo 'Anda mencari <i>'.$display_words.'</i> <hr /><br />';

							echo '<table class="search">';

							// display all the search results to the user
							while ($row = mysqli_fetch_assoc($query)){
								
								echo '<tr>
									<td><h3><a href="'.$row['url'].'">'.$row['title'].'</a></h3></td>
								</tr>
								<tr>
									<td>'.$row['blurb'].'</td>
								</tr>
								<tr>
									<td><i>'.$row['url'].'</i></td>
								</tr>';
							}

							echo '</table>';
						}
						else
							echo 'Tidak ditemukan.';
					}
					else
						echo '';
				?>

			</div></div>

			<div id="footer">
				
				<div class="clear"></div>
			</div>

		</div>

	</body>
</html>