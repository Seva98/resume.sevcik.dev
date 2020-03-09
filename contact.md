---
title: Contact
layout: post
---
<script src='https://www.google.com/recaptcha/api.js'></script>
<div id="main-content">
	<div class="section">
		<div class="container">
		<h1>Get in touch!</h1>
			<form action="https://wodtimecalculator.com/blog/contact-send.php" method="post">
				<div class="field">
					<label for="email" class="label"><span style="color:red">&#42;</span>Email address</label>
					<input type="email" class="input" id="email" name="email" aria-describedby="emailHelp" placeholder="Enter email">
					<small id="emailHelp" class="help">We'll never share your email with anyone else.</small>
				</div>
				<div class="field">
					<label for="subject" class="label"><span style="color:red">&#42;</span>Subject</label>
					<input type="text" class="input" id="subject" name="subject">
				</div>
				<div class="field">
					<label for="content" class="label"><span style="color:red">&#42;</span>What would you like to ask us?</label>
					<textarea class="input" id="content" rows="3" name="content"></textarea>
				</div>
				<div class="g-recaptcha" data-sitekey="6LeUzAgUAAAAADNc-TI9QLYD3dAGdDFRNd1Cf9aA"></div>		
				<button type="submit" class="button is-prim">Submit</button>
			</form>
		</div>
	</div>
</div>