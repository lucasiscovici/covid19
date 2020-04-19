def run(filename):
    try:
        from IPython.utils.contexts import preserve_keys
        s=get_ipython()
        with preserve_keys(s.user_ns, '__file__',):
            s.user_ns['__file__'] = filename
            s.safe_execfile_ipy(filename,raise_exceptions=True)
    except Exception as e:
        from IPython.display import display, HTML
        display(HTML("""
<script>
alert('PB de SetUp !!')
</script>
"""))
        raise e