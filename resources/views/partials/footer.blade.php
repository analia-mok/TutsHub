<footer>
  <div class="footer__inner-wrapper">
    {{ menu('footer')}}
    <div class="footer__right-content"><!--
    --><span><!--
      -->Copyright &copy; @php echo \Carbon\Carbon::now()->format('Y') @endphp {{ setting('site.title') }}<!--
      --></span><!-- 
    --></div>
  </div>
</footer>