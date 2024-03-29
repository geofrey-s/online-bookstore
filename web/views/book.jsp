<c:forEach items="${books}" var="book">
				<div class="col-md-3">
					<div class="book">
						<div class="book-img">
							<c:if test="${book.discount != 0}"><span>Save ${book.discount}%</span></c:if>
							
							<a href="book-details?id=${book.id}"><img src="${book.thumb_url}" class="center"  height="200" alt=""></a>
						</div>
						<div class="book-body">
							<h5 class="book-title"><a href="book-details?id=${book.id}">${book.title}</a> </h5>
							<p class="book-text">${book.computeDescription()}<br>
								<span class="text-danger">$${book.computeDiscountedPrice()}</span>
								<c:if test="${book.price ne book.computeDiscountedPrice()}"><strike>$${book.price}</strike></c:if> </p>
							<a href="book-details?id=${book.id}" class="btn btn-warning btn-sm"><i class="fas fa-shopping-cart"></i> Add to cart</a>
						</div>
					</div>
				</div>