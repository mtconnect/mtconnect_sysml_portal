---
title: "Transformation"
parent: "XArm7Model Package"
grand_parent: "Kinematics Simulation Package"
nav_order: 8
layout: default
---

# Transformation

## Constraints

<table><thead><tr><th>Error Message</th><th>OCL Expression</th></tr></thead><tbody>

<tr><td markdown="block">

constraints

</td><td markdown="block">

```
var outx,outy,outz,outux,outuy,outuz;
var anglist = angin.split('|||');
var ux,uy,uz,angle,vector;

var xu2,yu2,zu2,xt2,yt2,zt2;
xu2 = xu;
yu2 = yu;
zu2 = zu;
xt2 = xt;
yt2 = yt;
zt2 = zt;                                  
                               
              
if(anglist.length >= 2) {
  anglist.pop();
  for (var i = 0; i < anglist.length; i++) {
    angle = parseFloat(anglist[i].split('|')[0]);
    vector = anglist[i].split('|')[1];
    ux = parseFloat(vector.split(',')[0]);
    uy = parseFloat(vector.split(',')[1]);
    uz = parseFloat(vector.split(',')[2]);

    outx = xt2*Math.cos(angle*Math.PI/180) + (uy*zt2 -uz*yt2)*Math.sin(angle*Math.PI/180) + (1-Math.cos(angle*Math.PI/180))*(ux*xt2+uy*yt2+uz*zt2)*ux;
    outy = yt2*Math.cos(angle*Math.PI/180) + (uz*xt2 -ux*zt2)*Math.sin(angle*Math.PI/180) + (1-Math.cos(angle*Math.PI/180))*(ux*xt2+uy*yt2+uz*zt2)*uy;
    outz = zt2*Math.cos(angle*Math.PI/180) + (ux*yt2 -uy*xt2)*Math.sin(angle*Math.PI/180) + (1-Math.cos(angle*Math.PI/180))*(ux*xt2+uy*yt2+uz*zt2)*uz;
    xt2 = outx
    yt2 = outy
    zt2 = outz
  
    outux = xu2*Math.cos(angle*Math.PI/180) + (uy*zu2 -uz*yu2)*Math.sin(angle*Math.PI/180) + (1-Math.cos(angle*Math.PI/180))*(ux*xu2+uy*yu2+uz*zu2)*ux;
    outuy = yu2*Math.cos(angle*Math.PI/180) + (uz*xu2 -ux*zu2)*Math.sin(angle*Math.PI/180) + (1-Math.cos(angle*Math.PI/180))*(ux*xu2+uy*yu2+uz*zu2)*uy;
    outuz = zu2*Math.cos(angle*Math.PI/180) + (ux*yu2 -uy*xu2)*Math.sin(angle*Math.PI/180) + (1-Math.cos(angle*Math.PI/180))*(ux*xu2+uy*yu2+uz*zu2)*uz;
    xu2 = outux
    yu2 = outuy
    zu2 = outuz
}           

}


xout = xin + xt2;
yout = yin + yt2;
zout = zin + zt2; 

aout = ain + xr + ang*xu;
bout = bin + yr + ang*yu;
cout = cin + zr + ang*zu;

var angles = '';
if(ang != 0) { 
angles = angin + ang.toString()+'|'+xu2.toString()+ ','+yu2.toString()+ ','+zu2.toString() + '|||';  
angout = angles;                                                                                
} else if(ang == 0){
angout = angin;
}
```

</td></tr>

</tbody></table>
