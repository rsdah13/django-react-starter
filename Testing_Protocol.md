Testing:
    Types:
        -UI tests
        -Functional tests
        -Regression Testing
        -Load testing
        -Security testing
        -Compatibility testing

    Test objects:
        -Custom views and extended view logic
        -Models and their methods
        -Custom helpers, middleware, etc.
        -Template rendering

        Avoid testing:
            -Built in Django views/admin
            -files like `urls.py` and `settings.py`
            -Classes based mostly on highly generic built-ins
                (i.e. don't test:
                    `
                    class Legal(TemplateView):
                        template_namem = "legal.html"
                    `
                Unit test:
                    `
                    def is_valid(item):
                        return item and len(item)
                    `
                Integration test (against a databse)
                    `
                    def open_post(pk):
                        Post.objects.filter(
                                pk = pk
                            ).update(
                                open = True)
                        return Response()
                    `

                )