
<style type="text/css">
    body { padding:0; margin:0;}
    #logo { position: absolute;right:-250; width:250px;height:250px; }
    #moshe { position: absolute; top: 33px; right:-250; width:250px;height:250px; border-radius: 50px; }
</style>
<div>
    <div>
        <img id='logo' src='/assets/images/logo.jpg' />
        <img id='moshe' src='/assets/images/moshe.jpeg' />
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
            .to("#moshe", 0.3, { right:50, autoAlpha: 1, ease: "power1.out(1.7)" }, 'logo-in')
            .to("#logo", 0.3, { right:350, autoAlpha: 1, delay:0.2, ease: "power1.in(1.7)" }, 'logo-in');
            
        }

        window.onload = init;

    </script>