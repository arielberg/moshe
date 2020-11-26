<style type="text/css">
    body { padding:0; margin:0;}
    #logo { position: relative; opacity: 0; right:-150; width:280px;height:250px; }
    #moshe { position: relative; opacity: 0; top: 33px; right:-100px; width:250px; height:250px; border-radius: 50px; z-index: 1; }
</style>
<div>
    <div>
        <img id='moshe' src='/assets/images/moshe.jpeg' />
        <img id='logo' src='/assets/images/logo_full.jpg' />        
    </div>
    <div id="work">
        <div id="i1">
            njzurho
        </div>
        <div id="i2">
        </div>
    </div>
</div>
<script src="https://s0.2mdn.net/ads/studio/cached_libs/tweenmax_1.19.1_92cf05aba6ca4ea5cbc62b5a7cb924e3_min.js"></script>

    <script type="text/javascript">

    
            function init() {
            var tl4 = new TimelineMax();

            tl4
            .add('logo-in')
            .to("#moshe", 0.3, { right:1, opacity: 1, width:200, autoAlpha: 1, ease: "power1.out(1.7)" }, 'logo-in')
            .to("#logo", 0.3, { right:50, opacity: 1, width:250, autoAlpha: 1, delay:0.1, ease: "power1.in(1.7)" }, 'logo-in');
            
        }

        window.onload = init;

    </script>