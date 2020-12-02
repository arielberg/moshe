<script>
    let basePath = location.origin ;
    
    let matchGitHubPages = window.location.href.match([/(.*)github.io\\/([^/]*)/ ]);
    if ( matchGitHubPages ) {
        basePath  = basePath.replace( location.origin , matchGitHubPages[0] );
              
    }

    fetch( basePath + '/search/success.json')
        .then(res=>res.json())
        .then(res=>res.reverse())
        .then( res => {
            res
            .forEach( jsonItem => { 
                if ( null == jsonItem.date ) { 
                    jsonItem.dt = 0;
                }
                else {
                    jsonItem.dt = Date.parse(jsonItem.date );
                }
            });
            console.log(res);
            res
                .sort((a,b)=>{ return b.dt - a.dt })
                .forEach( jsonItem=>{
                    let itemDiv = document.createElement('div');
                    let itemURL = basePath+'/'+(jsonItem.href ? jsonItem.href : 'post/' + jsonItem.id);
                    itemDiv.className = "result-card";
                    let itemImage = document.createElement('img');
                    itemImage.src = basePath + '/'+ (jsonItem.image?jsonItem.image:'assets/images/post_default.jpeg')
                    itemImage.onclick = e => { window.location = itemURL }
                    itemImage.style.cursor = 'pointer';
                    itemDiv.append(itemImage);
                    let itemContent = document.createElement('div');
                    let itemTitle = document.createElement('h3');
                    itemTitle.style.cursor = 'pointer';
                    itemTitle.innerText = jsonItem.title;
                    itemContent.append(itemTitle);
                    let itemTeaser = document.createElement('span');
                    itemTeaser.innerText = jsonItem.body.replace(/<[^>]+>/g, '').substring(0, 250);
                    itemContent.append(itemTeaser);
                    let link = document.createElement('a');
                    link.href = itemURL;
                    link.className = 'readMore';
                    link.innerText = 'קרא עוד';
                    itemContent.append(link);
                    itemDiv.append(itemContent);
                    document.getElementById('main').appendChild(itemDiv);
            })
        });
</script>