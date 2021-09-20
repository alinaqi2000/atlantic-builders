$(document).ready(function () {
    async function showAlertMsg(type, message) {
        let options = {
            title: 'Success!',
            text: message,
            imageUrl: BASE_URL + "assets/img/illustrations/message-sent.png",
            imageHeight: 150,
            confirmButtonColor: '#07a9e3',
            imageAlt: 'Message sent successfully'
        }
        switch (type) {
            case 'error':
                options = {
                    title: 'Error!',
                    text: message,
                    imageUrl: BASE_URL + "assets/img/illustrations/error.png",
                    imageHeight: 150,
                    confirmButtonColor: '#07a9e3',
                    imageAlt: 'Error'
                }
                break;
            default:
                break;
        }
        return await Swal.fire(options).then();
    }

    function submitForm(form_element) {
        const type = $(form_element).data("type");
        $.ajax({
            url: $(form_element).data("url"),
            method: "POST",
            dataType: "JSON",
            data: $(form_element).serializeArray(),
            beforeSend: () => {
                $("." + type + " .submit .submit-text").hide();
                $("." + type + " .submit #btn-loader").show();
                $("." + type + " .submit").attr("disabled", true);
            },
            success: (resp) => {
                $("." + type + " .submit .submit-text").show();
                $("." + type + " .submit #btn-loader").hide();
                $("." + type + " .submit").attr("disabled", false);

                showAlertMsg("success", "Message sent successfully");
                $('#menu-popup').modal('hide');
                (async () => {
                    let {
                        isConfirmed
                    } = await showAlertMsg(resp['status'] ? "success" : "error", resp['message']).then((resp) => resp);
                    if (!resp['status'] && isConfirmed && type == 'feedback') {
                        $('#menu-popup').modal('show');
                    }
                    if (resp['status']) {
                        $(form_element).trigger("reset");
                    }
                })();
            },
            error: (error) => {
                $("." + type + " .submit .submit-text").show();
                $("." + type + " .submit #btn-loader").hide();
                showAlertMsg("error", "Something went wrong");
                $('#menu-popup').modal('hide');
            }
        });
    }
    $(document).on("submit", ".contact-form", function (e) {
        e.preventDefault();
        submitForm(e.target);
    });
});