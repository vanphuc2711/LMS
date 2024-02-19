   <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Add Student</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
								<form id="add_student" method="post">
								
								        <div class="control-group">
                                   
                                          <div class="controls">
                                            <select  name="class_name" class="" placeholder="Class Name" required>
                                             	
											<?php
											$cys_query = mysqli_query($conn,"select * from class order by class_name");
              
											while($cys_row = mysqli_fetch_array($cys_query)){
											
											?>
											<option value="<?php echo $cys_row['class_id']; ?>"><?php echo $cys_row['class_name']; ?></option>
											<?php } ?>
                                            </select>
                                          </div>
                                        </div>
								
										<div class="control-group">
                                          <div class="controls">
                                            <input name="username" class="input focused" id="focusedInput" type="text" placeholder = "ID Number" required>
                                          </div>
                                        </div>

										<div class="control-group">
                                          <div class="controls">
                                            <input name="password" class="input focused" id="focusedInput" type="text" placeholder = "Password" required>
                                          </div>
                                        </div>
										
										<div class="control-group">
                                          <div class="controls">
                                            <input name="firstname" class="input focused" id="focusedInput" type="text" placeholder = "Firstname" required>
                                          </div>
                                        </div>
										
										<div class="control-group">
                                          <div class="controls">
                                            <input  name="lastname" class="input focused" id="focusedInput" type="text" placeholder = "Lastname" required>
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
                           
                                $class_id = $_POST['class_id'];
								                $firstname = $_POST['firstname'];
                                $lastname = $_POST['lastname'];
                                $username = $_POST['username'];
                                $password = $_POST['password'];
								
								
								$query = mysqli_query($conn,"select * from student where firstname = '$firstname' and lastname = '$lastname' and username = '$username' and password = '$password' ")or die(mysqli_error());
								$count = mysqli_num_rows($query);
								
								if ($count > 0){ ?>
								<script>
								alert('Data Already Exist');
								</script>
								<?php
								}else{

                                mysqli_query($conn,"insert into student (firstname,lastname,username,password,class_id)
								values ('$firstname','$lastname','$username','$password','class_id')         
								") or die(mysqli_error()); ?>
								<script>
							 	window.location = "students.php"; 
								</script>
								<?php   }} ?>		
