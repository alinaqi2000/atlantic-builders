<div class="popup-modal1">
    <div class="modal" id="menu-popup">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="common-heading">
                        <h4 class="mt0 mb0">Request A Quote</h4>
                    </div>
                    <button type="button" class="closes" data-dismiss="modal">
                        &times;
                    </button>
                </div>
                <!-- Modal body -->
                <div class="modal-body">
                    <div class="form-block fdgn2 mt10 mb10">
                        <form action="#" method="post" data-url="<?= $path . 'send-contact-message' ?>" data-type="feedback" class="contact-form feedback">
                            <div class="fieldsets row">
                                <div class="col-md-12">
                                    <input type="text" placeholder="Full Name" required name="fullname" />
                                </div>
                                <div class="col-md-12">
                                    <input type="email" placeholder="Email Address" required name="email" />
                                </div>
                                <div class="col-md-12">
                                    <input type="number" placeholder="Contact Number" required name="phone_no" />
                                </div>
                                <div class="col-md-12">
                                    <input type="text" placeholder="Subject" required name="subject" />
                                </div>
                                <div class="col-md-12">
                                    <textarea placeholder="Message" required name="message"></textarea>
                                </div>
                            </div>
                            <div class="fieldsets mt20 pb20">
                                <button type="submit" class="lnk btn-main submit bg-btn3">
                                    <img id="btn-loader" style="height: 25px;display:none;" src="<?= $path ?>assets/images/illustrations/btn-loader.svg" alt="Please wait...">
                                    <span class="submit-text">Submit <i class="fas fa-chevron-right fa-icon"></i></span>


                                    <span class="circle"></span>
                                </button>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>