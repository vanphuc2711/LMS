   <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Add Teacher</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
								<form method="post">
								<!--
										<label>Photo:</label>
										<div class="control-group">
                                          <div class="controls">
                                               <input class="input-file uniform_on" id="fileInput" type="file" required>
                                          </div>
                                        </div>
									-->	
										
										  
                   <div class="control-group">
                                          <div class="controls">
                                            <input class="input focused" name="username" id="focusedInput" type="text" placeholder = "Username">
                                          </div>
                                        </div>
                   <div class="control-group">
                                          <div class="controls">
                                            <input class="input focused" name="password" id="focusedInput" type="text" placeholder = "Password">
                                          </div>
                                        </div>                    
										<div class="control-group">
                                          <div class="controls">
                                            <input class="input focused" name="firstname" id="focusedInput" type="text" placeholder = "Firstname">
                                          </div>
                                        </div>
										
										<div class="control-group">
                                          <div class="controls">
                                            <input class="input focused" name="lastname" id="focusedInput" type="text" placeholder = "Lastname">
                                          </div>
                                        </div>
										
										
									
											<div class="control-group">
                                          <div class="controls">
												<button name="save" class="btn btn-info"><i class="icon-plus-sign icon-large"></i></button>

                                          </div>
                                        </div>
                                </form>
								</div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
					
					
					    <?php
                            if (isset($_POST['save'])) {
                           
                                $firstname = $_POST['firstname'];
                                $lastname = $_POST['lastname'];
                                $username = $_POST['username'];
                                $password = $_POST['password'];
								
								
								$query = mysqli_query($conn,"select * from teacher where firstname = '$firstname' and lastname = '$lastname' and username = '$username' and password = '$password' ")or die(mysqli_error());
								$count = mysqli_num_rows($query);
								
								if ($count > 0){ ?>
								<script>
								alert('Data Already Exist');
								</script>
								<?php
								}else{

                                mysqli_query($conn,"insert into teacher (firstname,lastname,location,username,password)
								values ('$firstname','$lastname','uploads/NO-IMAGE-AVAILABLE.jpg','$username','$password')         
								") or die(mysqli_error()); ?>
								<script>
							 	window.location = "teachers.php"; 
								</script>
								<?php   }} ?>
						 
						 