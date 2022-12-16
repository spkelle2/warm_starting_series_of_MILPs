* Problem:    1st_phase
* Class:      MIP
* Rows:       475
* Columns:    166 (128 integer, 112 binary)
* Non-zeros:  1458
* Format:     Free MPS
*
NAME graphdraw-gemcutter
ROWS
 N drawing
 E choose1[Rubygem,User]
 E choose1[Rubygem,WebHook]
 E choose1[Rubygem,Subscription]
 E choose1[Rubygem,Ownership]
 E choose1[Rubygem,Linkset]
 E choose1[Rubygem,Version]
 E choose1[Rubygem,Dependency]
 E choose1[User,WebHook]
 E choose1[User,Subscription]
 E choose1[User,Ownership]
 E choose1[User,Linkset]
 E choose1[User,Version]
 E choose1[User,Dependency]
 E choose1[WebHook,Subscription]
 E choose1[WebHook,Ownership]
 E choose1[WebHook,Linkset]
 E choose1[WebHook,Version]
 E choose1[WebHook,Dependency]
 E choose1[Subscription,Ownership]
 E choose1[Subscription,Linkset]
 E choose1[Subscription,Version]
 E choose1[Subscription,Dependency]
 E choose1[Ownership,Linkset]
 E choose1[Ownership,Version]
 E choose1[Ownership,Dependency]
 E choose1[Linkset,Version]
 E choose1[Linkset,Dependency]
 E choose1[Version,Dependency]
 G centerDistAxis1[r,Rubygem]
 G centerDistAxis1[r,User]
 G centerDistAxis1[r,WebHook]
 G centerDistAxis1[r,Subscription]
 G centerDistAxis1[r,Ownership]
 G centerDistAxis1[r,Linkset]
 G centerDistAxis1[r,Version]
 G centerDistAxis1[r,Dependency]
 G centerDistAxis1[c,Rubygem]
 G centerDistAxis1[c,User]
 G centerDistAxis1[c,WebHook]
 G centerDistAxis1[c,Subscription]
 G centerDistAxis1[c,Ownership]
 G centerDistAxis1[c,Linkset]
 G centerDistAxis1[c,Version]
 G centerDistAxis1[c,Dependency]
 G centerDistAxis2[r,Rubygem]
 G centerDistAxis2[r,User]
 G centerDistAxis2[r,WebHook]
 G centerDistAxis2[r,Subscription]
 G centerDistAxis2[r,Ownership]
 G centerDistAxis2[r,Linkset]
 G centerDistAxis2[r,Version]
 G centerDistAxis2[r,Dependency]
 G centerDistAxis2[c,Rubygem]
 G centerDistAxis2[c,User]
 G centerDistAxis2[c,WebHook]
 G centerDistAxis2[c,Subscription]
 G centerDistAxis2[c,Ownership]
 G centerDistAxis2[c,Linkset]
 G centerDistAxis2[c,Version]
 G centerDistAxis2[c,Dependency]
 G axisVdifLB[r,Rubygem,User]
 G axisVdifLB[r,Rubygem,WebHook]
 G axisVdifLB[r,Rubygem,Subscription]
 G axisVdifLB[r,Rubygem,Ownership]
 G axisVdifLB[r,Rubygem,Linkset]
 G axisVdifLB[r,Rubygem,Version]
 G axisVdifLB[r,Rubygem,Dependency]
 G axisVdifLB[r,User,WebHook]
 G axisVdifLB[r,User,Subscription]
 G axisVdifLB[r,User,Ownership]
 G axisVdifLB[r,User,Linkset]
 G axisVdifLB[r,User,Version]
 G axisVdifLB[r,User,Dependency]
 G axisVdifLB[r,WebHook,Subscription]
 G axisVdifLB[r,WebHook,Ownership]
 G axisVdifLB[r,WebHook,Linkset]
 G axisVdifLB[r,WebHook,Version]
 G axisVdifLB[r,WebHook,Dependency]
 G axisVdifLB[r,Subscription,Ownership]
 G axisVdifLB[r,Subscription,Linkset]
 G axisVdifLB[r,Subscription,Version]
 G axisVdifLB[r,Subscription,Dependency]
 G axisVdifLB[r,Ownership,Linkset]
 G axisVdifLB[r,Ownership,Version]
 G axisVdifLB[r,Ownership,Dependency]
 G axisVdifLB[r,Linkset,Version]
 G axisVdifLB[r,Linkset,Dependency]
 G axisVdifLB[r,Version,Dependency]
 G axisVdifLB[c,Rubygem,User]
 G axisVdifLB[c,Rubygem,WebHook]
 G axisVdifLB[c,Rubygem,Subscription]
 G axisVdifLB[c,Rubygem,Ownership]
 G axisVdifLB[c,Rubygem,Linkset]
 G axisVdifLB[c,Rubygem,Version]
 G axisVdifLB[c,Rubygem,Dependency]
 G axisVdifLB[c,User,WebHook]
 G axisVdifLB[c,User,Subscription]
 G axisVdifLB[c,User,Ownership]
 G axisVdifLB[c,User,Linkset]
 G axisVdifLB[c,User,Version]
 G axisVdifLB[c,User,Dependency]
 G axisVdifLB[c,WebHook,Subscription]
 G axisVdifLB[c,WebHook,Ownership]
 G axisVdifLB[c,WebHook,Linkset]
 G axisVdifLB[c,WebHook,Version]
 G axisVdifLB[c,WebHook,Dependency]
 G axisVdifLB[c,Subscription,Ownership]
 G axisVdifLB[c,Subscription,Linkset]
 G axisVdifLB[c,Subscription,Version]
 G axisVdifLB[c,Subscription,Dependency]
 G axisVdifLB[c,Ownership,Linkset]
 G axisVdifLB[c,Ownership,Version]
 G axisVdifLB[c,Ownership,Dependency]
 G axisVdifLB[c,Linkset,Version]
 G axisVdifLB[c,Linkset,Dependency]
 G axisVdifLB[c,Version,Dependency]
 G axisVdifRT[r,Rubygem,User]
 G axisVdifRT[r,Rubygem,WebHook]
 G axisVdifRT[r,Rubygem,Subscription]
 G axisVdifRT[r,Rubygem,Ownership]
 G axisVdifRT[r,Rubygem,Linkset]
 G axisVdifRT[r,Rubygem,Version]
 G axisVdifRT[r,Rubygem,Dependency]
 G axisVdifRT[r,User,WebHook]
 G axisVdifRT[r,User,Subscription]
 G axisVdifRT[r,User,Ownership]
 G axisVdifRT[r,User,Linkset]
 G axisVdifRT[r,User,Version]
 G axisVdifRT[r,User,Dependency]
 G axisVdifRT[r,WebHook,Subscription]
 G axisVdifRT[r,WebHook,Ownership]
 G axisVdifRT[r,WebHook,Linkset]
 G axisVdifRT[r,WebHook,Version]
 G axisVdifRT[r,WebHook,Dependency]
 G axisVdifRT[r,Subscription,Ownership]
 G axisVdifRT[r,Subscription,Linkset]
 G axisVdifRT[r,Subscription,Version]
 G axisVdifRT[r,Subscription,Dependency]
 G axisVdifRT[r,Ownership,Linkset]
 G axisVdifRT[r,Ownership,Version]
 G axisVdifRT[r,Ownership,Dependency]
 G axisVdifRT[r,Linkset,Version]
 G axisVdifRT[r,Linkset,Dependency]
 G axisVdifRT[r,Version,Dependency]
 G axisVdifRT[c,Rubygem,User]
 G axisVdifRT[c,Rubygem,WebHook]
 G axisVdifRT[c,Rubygem,Subscription]
 G axisVdifRT[c,Rubygem,Ownership]
 G axisVdifRT[c,Rubygem,Linkset]
 G axisVdifRT[c,Rubygem,Version]
 G axisVdifRT[c,Rubygem,Dependency]
 G axisVdifRT[c,User,WebHook]
 G axisVdifRT[c,User,Subscription]
 G axisVdifRT[c,User,Ownership]
 G axisVdifRT[c,User,Linkset]
 G axisVdifRT[c,User,Version]
 G axisVdifRT[c,User,Dependency]
 G axisVdifRT[c,WebHook,Subscription]
 G axisVdifRT[c,WebHook,Ownership]
 G axisVdifRT[c,WebHook,Linkset]
 G axisVdifRT[c,WebHook,Version]
 G axisVdifRT[c,WebHook,Dependency]
 G axisVdifRT[c,Subscription,Ownership]
 G axisVdifRT[c,Subscription,Linkset]
 G axisVdifRT[c,Subscription,Version]
 G axisVdifRT[c,Subscription,Dependency]
 G axisVdifRT[c,Ownership,Linkset]
 G axisVdifRT[c,Ownership,Version]
 G axisVdifRT[c,Ownership,Dependency]
 G axisVdifRT[c,Linkset,Version]
 G axisVdifRT[c,Linkset,Dependency]
 G axisVdifRT[c,Version,Dependency]
 G compDistAxis1[r,Rubygem,User]
 G compDistAxis1[r,User,WebHook]
 G compDistAxis1[r,User,Subscription]
 G compDistAxis1[r,User,Ownership]
 G compDistAxis1[r,Rubygem,Subscription]
 G compDistAxis1[r,Rubygem,WebHook]
 G compDistAxis1[r,Rubygem,Linkset]
 G compDistAxis1[r,Rubygem,Ownership]
 G compDistAxis1[r,Rubygem,Version]
 G compDistAxis1[r,Rubygem,Dependency]
 G compDistAxis1[r,Version,Dependency]
 G compDistAxis1[c,Rubygem,User]
 G compDistAxis1[c,User,WebHook]
 G compDistAxis1[c,User,Subscription]
 G compDistAxis1[c,User,Ownership]
 G compDistAxis1[c,Rubygem,Subscription]
 G compDistAxis1[c,Rubygem,WebHook]
 G compDistAxis1[c,Rubygem,Linkset]
 G compDistAxis1[c,Rubygem,Ownership]
 G compDistAxis1[c,Rubygem,Version]
 G compDistAxis1[c,Rubygem,Dependency]
 G compDistAxis1[c,Version,Dependency]
 G compDistAxis2[r,Rubygem,User]
 G compDistAxis2[r,User,WebHook]
 G compDistAxis2[r,User,Subscription]
 G compDistAxis2[r,User,Ownership]
 G compDistAxis2[r,Rubygem,Subscription]
 G compDistAxis2[r,Rubygem,WebHook]
 G compDistAxis2[r,Rubygem,Linkset]
 G compDistAxis2[r,Rubygem,Ownership]
 G compDistAxis2[r,Rubygem,Version]
 G compDistAxis2[r,Rubygem,Dependency]
 G compDistAxis2[r,Version,Dependency]
 G compDistAxis2[c,Rubygem,User]
 G compDistAxis2[c,User,WebHook]
 G compDistAxis2[c,User,Subscription]
 G compDistAxis2[c,User,Ownership]
 G compDistAxis2[c,Rubygem,Subscription]
 G compDistAxis2[c,Rubygem,WebHook]
 G compDistAxis2[c,Rubygem,Linkset]
 G compDistAxis2[c,Rubygem,Ownership]
 G compDistAxis2[c,Rubygem,Version]
 G compDistAxis2[c,Rubygem,Dependency]
 G compDistAxis2[c,Version,Dependency]
 G DistSumLB[Rubygem,User]
 G DistSumLB[User,WebHook]
 G DistSumLB[User,Subscription]
 G DistSumLB[User,Ownership]
 G DistSumLB[Rubygem,Subscription]
 G DistSumLB[Rubygem,WebHook]
 G DistSumLB[Rubygem,Linkset]
 G DistSumLB[Rubygem,Ownership]
 G DistSumLB[Rubygem,Version]
 G DistSumLB[Rubygem,Dependency]
 G DistSumLB[Version,Dependency]
 G CenterDistSumLB
 G DistAxisLB1[r,Rubygem,User]
 G DistAxisLB1[r,User,WebHook]
 G DistAxisLB1[r,User,Subscription]
 G DistAxisLB1[r,User,Ownership]
 G DistAxisLB1[r,Rubygem,Subscription]
 G DistAxisLB1[r,Rubygem,WebHook]
 G DistAxisLB1[r,Rubygem,Linkset]
 G DistAxisLB1[r,Rubygem,Ownership]
 G DistAxisLB1[r,Rubygem,Version]
 G DistAxisLB1[r,Rubygem,Dependency]
 G DistAxisLB1[r,Version,Dependency]
 G DistAxisLB1[c,Rubygem,User]
 G DistAxisLB1[c,User,WebHook]
 G DistAxisLB1[c,User,Subscription]
 G DistAxisLB1[c,User,Ownership]
 G DistAxisLB1[c,Rubygem,Subscription]
 G DistAxisLB1[c,Rubygem,WebHook]
 G DistAxisLB1[c,Rubygem,Linkset]
 G DistAxisLB1[c,Rubygem,Ownership]
 G DistAxisLB1[c,Rubygem,Version]
 G DistAxisLB1[c,Rubygem,Dependency]
 G DistAxisLB1[c,Version,Dependency]
 L triangle1[Rubygem,User,WebHook,r]
 L triangle1[Rubygem,User,WebHook,c]
 L triangle1[Rubygem,User,Subscription,r]
 L triangle1[Rubygem,User,Subscription,c]
 L triangle1[Rubygem,User,Ownership,r]
 L triangle1[Rubygem,User,Ownership,c]
 L triangle1[Rubygem,User,Linkset,r]
 L triangle1[Rubygem,User,Linkset,c]
 L triangle1[Rubygem,User,Version,r]
 L triangle1[Rubygem,User,Version,c]
 L triangle1[Rubygem,User,Dependency,r]
 L triangle1[Rubygem,User,Dependency,c]
 L triangle1[Rubygem,WebHook,Subscription,r]
 L triangle1[Rubygem,WebHook,Subscription,c]
 L triangle1[Rubygem,WebHook,Ownership,r]
 L triangle1[Rubygem,WebHook,Ownership,c]
 L triangle1[Rubygem,WebHook,Linkset,r]
 L triangle1[Rubygem,WebHook,Linkset,c]
 L triangle1[Rubygem,WebHook,Version,r]
 L triangle1[Rubygem,WebHook,Version,c]
 L triangle1[Rubygem,WebHook,Dependency,r]
 L triangle1[Rubygem,WebHook,Dependency,c]
 L triangle1[Rubygem,Subscription,Ownership,r]
 L triangle1[Rubygem,Subscription,Ownership,c]
 L triangle1[Rubygem,Subscription,Linkset,r]
 L triangle1[Rubygem,Subscription,Linkset,c]
 L triangle1[Rubygem,Subscription,Version,r]
 L triangle1[Rubygem,Subscription,Version,c]
 L triangle1[Rubygem,Subscription,Dependency,r]
 L triangle1[Rubygem,Subscription,Dependency,c]
 L triangle1[Rubygem,Ownership,Linkset,r]
 L triangle1[Rubygem,Ownership,Linkset,c]
 L triangle1[Rubygem,Ownership,Version,r]
 L triangle1[Rubygem,Ownership,Version,c]
 L triangle1[Rubygem,Ownership,Dependency,r]
 L triangle1[Rubygem,Ownership,Dependency,c]
 L triangle1[Rubygem,Linkset,Version,r]
 L triangle1[Rubygem,Linkset,Version,c]
 L triangle1[Rubygem,Linkset,Dependency,r]
 L triangle1[Rubygem,Linkset,Dependency,c]
 L triangle1[Rubygem,Version,Dependency,r]
 L triangle1[Rubygem,Version,Dependency,c]
 L triangle1[User,WebHook,Subscription,r]
 L triangle1[User,WebHook,Subscription,c]
 L triangle1[User,WebHook,Ownership,r]
 L triangle1[User,WebHook,Ownership,c]
 L triangle1[User,WebHook,Linkset,r]
 L triangle1[User,WebHook,Linkset,c]
 L triangle1[User,WebHook,Version,r]
 L triangle1[User,WebHook,Version,c]
 L triangle1[User,WebHook,Dependency,r]
 L triangle1[User,WebHook,Dependency,c]
 L triangle1[User,Subscription,Ownership,r]
 L triangle1[User,Subscription,Ownership,c]
 L triangle1[User,Subscription,Linkset,r]
 L triangle1[User,Subscription,Linkset,c]
 L triangle1[User,Subscription,Version,r]
 L triangle1[User,Subscription,Version,c]
 L triangle1[User,Subscription,Dependency,r]
 L triangle1[User,Subscription,Dependency,c]
 L triangle1[User,Ownership,Linkset,r]
 L triangle1[User,Ownership,Linkset,c]
 L triangle1[User,Ownership,Version,r]
 L triangle1[User,Ownership,Version,c]
 L triangle1[User,Ownership,Dependency,r]
 L triangle1[User,Ownership,Dependency,c]
 L triangle1[User,Linkset,Version,r]
 L triangle1[User,Linkset,Version,c]
 L triangle1[User,Linkset,Dependency,r]
 L triangle1[User,Linkset,Dependency,c]
 L triangle1[User,Version,Dependency,r]
 L triangle1[User,Version,Dependency,c]
 L triangle1[WebHook,Subscription,Ownership,r]
 L triangle1[WebHook,Subscription,Ownership,c]
 L triangle1[WebHook,Subscription,Linkset,r]
 L triangle1[WebHook,Subscription,Linkset,c]
 L triangle1[WebHook,Subscription,Version,r]
 L triangle1[WebHook,Subscription,Version,c]
 L triangle1[WebHook,Subscription,Dependency,r]
 L triangle1[WebHook,Subscription,Dependency,c]
 L triangle1[WebHook,Ownership,Linkset,r]
 L triangle1[WebHook,Ownership,Linkset,c]
 L triangle1[WebHook,Ownership,Version,r]
 L triangle1[WebHook,Ownership,Version,c]
 L triangle1[WebHook,Ownership,Dependency,r]
 L triangle1[WebHook,Ownership,Dependency,c]
 L triangle1[WebHook,Linkset,Version,r]
 L triangle1[WebHook,Linkset,Version,c]
 L triangle1[WebHook,Linkset,Dependency,r]
 L triangle1[WebHook,Linkset,Dependency,c]
 L triangle1[WebHook,Version,Dependency,r]
 L triangle1[WebHook,Version,Dependency,c]
 L triangle1[Subscription,Ownership,Linkset,r]
 L triangle1[Subscription,Ownership,Linkset,c]
 L triangle1[Subscription,Ownership,Version,r]
 L triangle1[Subscription,Ownership,Version,c]
 L triangle1[Subscription,Ownership,Dependency,r]
 L triangle1[Subscription,Ownership,Dependency,c]
 L triangle1[Subscription,Linkset,Version,r]
 L triangle1[Subscription,Linkset,Version,c]
 L triangle1[Subscription,Linkset,Dependency,r]
 L triangle1[Subscription,Linkset,Dependency,c]
 L triangle1[Subscription,Version,Dependency,r]
 L triangle1[Subscription,Version,Dependency,c]
 L triangle1[Ownership,Linkset,Version,r]
 L triangle1[Ownership,Linkset,Version,c]
 L triangle1[Ownership,Linkset,Dependency,r]
 L triangle1[Ownership,Linkset,Dependency,c]
 L triangle1[Ownership,Version,Dependency,r]
 L triangle1[Ownership,Version,Dependency,c]
 L triangle1[Linkset,Version,Dependency,r]
 L triangle1[Linkset,Version,Dependency,c]
 L triangle2[Rubygem,User,WebHook,r]
 L triangle2[Rubygem,User,WebHook,c]
 L triangle2[Rubygem,User,Subscription,r]
 L triangle2[Rubygem,User,Subscription,c]
 L triangle2[Rubygem,User,Ownership,r]
 L triangle2[Rubygem,User,Ownership,c]
 L triangle2[Rubygem,User,Linkset,r]
 L triangle2[Rubygem,User,Linkset,c]
 L triangle2[Rubygem,User,Version,r]
 L triangle2[Rubygem,User,Version,c]
 L triangle2[Rubygem,User,Dependency,r]
 L triangle2[Rubygem,User,Dependency,c]
 L triangle2[Rubygem,WebHook,Subscription,r]
 L triangle2[Rubygem,WebHook,Subscription,c]
 L triangle2[Rubygem,WebHook,Ownership,r]
 L triangle2[Rubygem,WebHook,Ownership,c]
 L triangle2[Rubygem,WebHook,Linkset,r]
 L triangle2[Rubygem,WebHook,Linkset,c]
 L triangle2[Rubygem,WebHook,Version,r]
 L triangle2[Rubygem,WebHook,Version,c]
 L triangle2[Rubygem,WebHook,Dependency,r]
 L triangle2[Rubygem,WebHook,Dependency,c]
 L triangle2[Rubygem,Subscription,Ownership,r]
 L triangle2[Rubygem,Subscription,Ownership,c]
 L triangle2[Rubygem,Subscription,Linkset,r]
 L triangle2[Rubygem,Subscription,Linkset,c]
 L triangle2[Rubygem,Subscription,Version,r]
 L triangle2[Rubygem,Subscription,Version,c]
 L triangle2[Rubygem,Subscription,Dependency,r]
 L triangle2[Rubygem,Subscription,Dependency,c]
 L triangle2[Rubygem,Ownership,Linkset,r]
 L triangle2[Rubygem,Ownership,Linkset,c]
 L triangle2[Rubygem,Ownership,Version,r]
 L triangle2[Rubygem,Ownership,Version,c]
 L triangle2[Rubygem,Ownership,Dependency,r]
 L triangle2[Rubygem,Ownership,Dependency,c]
 L triangle2[Rubygem,Linkset,Version,r]
 L triangle2[Rubygem,Linkset,Version,c]
 L triangle2[Rubygem,Linkset,Dependency,r]
 L triangle2[Rubygem,Linkset,Dependency,c]
 L triangle2[Rubygem,Version,Dependency,r]
 L triangle2[Rubygem,Version,Dependency,c]
 L triangle2[User,WebHook,Subscription,r]
 L triangle2[User,WebHook,Subscription,c]
 L triangle2[User,WebHook,Ownership,r]
 L triangle2[User,WebHook,Ownership,c]
 L triangle2[User,WebHook,Linkset,r]
 L triangle2[User,WebHook,Linkset,c]
 L triangle2[User,WebHook,Version,r]
 L triangle2[User,WebHook,Version,c]
 L triangle2[User,WebHook,Dependency,r]
 L triangle2[User,WebHook,Dependency,c]
 L triangle2[User,Subscription,Ownership,r]
 L triangle2[User,Subscription,Ownership,c]
 L triangle2[User,Subscription,Linkset,r]
 L triangle2[User,Subscription,Linkset,c]
 L triangle2[User,Subscription,Version,r]
 L triangle2[User,Subscription,Version,c]
 L triangle2[User,Subscription,Dependency,r]
 L triangle2[User,Subscription,Dependency,c]
 L triangle2[User,Ownership,Linkset,r]
 L triangle2[User,Ownership,Linkset,c]
 L triangle2[User,Ownership,Version,r]
 L triangle2[User,Ownership,Version,c]
 L triangle2[User,Ownership,Dependency,r]
 L triangle2[User,Ownership,Dependency,c]
 L triangle2[User,Linkset,Version,r]
 L triangle2[User,Linkset,Version,c]
 L triangle2[User,Linkset,Dependency,r]
 L triangle2[User,Linkset,Dependency,c]
 L triangle2[User,Version,Dependency,r]
 L triangle2[User,Version,Dependency,c]
 L triangle2[WebHook,Subscription,Ownership,r]
 L triangle2[WebHook,Subscription,Ownership,c]
 L triangle2[WebHook,Subscription,Linkset,r]
 L triangle2[WebHook,Subscription,Linkset,c]
 L triangle2[WebHook,Subscription,Version,r]
 L triangle2[WebHook,Subscription,Version,c]
 L triangle2[WebHook,Subscription,Dependency,r]
 L triangle2[WebHook,Subscription,Dependency,c]
 L triangle2[WebHook,Ownership,Linkset,r]
 L triangle2[WebHook,Ownership,Linkset,c]
 L triangle2[WebHook,Ownership,Version,r]
 L triangle2[WebHook,Ownership,Version,c]
 L triangle2[WebHook,Ownership,Dependency,r]
 L triangle2[WebHook,Ownership,Dependency,c]
 L triangle2[WebHook,Linkset,Version,r]
 L triangle2[WebHook,Linkset,Version,c]
 L triangle2[WebHook,Linkset,Dependency,r]
 L triangle2[WebHook,Linkset,Dependency,c]
 L triangle2[WebHook,Version,Dependency,r]
 L triangle2[WebHook,Version,Dependency,c]
 L triangle2[Subscription,Ownership,Linkset,r]
 L triangle2[Subscription,Ownership,Linkset,c]
 L triangle2[Subscription,Ownership,Version,r]
 L triangle2[Subscription,Ownership,Version,c]
 L triangle2[Subscription,Ownership,Dependency,r]
 L triangle2[Subscription,Ownership,Dependency,c]
 L triangle2[Subscription,Linkset,Version,r]
 L triangle2[Subscription,Linkset,Version,c]
 L triangle2[Subscription,Linkset,Dependency,r]
 L triangle2[Subscription,Linkset,Dependency,c]
 L triangle2[Subscription,Version,Dependency,r]
 L triangle2[Subscription,Version,Dependency,c]
 L triangle2[Ownership,Linkset,Version,r]
 L triangle2[Ownership,Linkset,Version,c]
 L triangle2[Ownership,Linkset,Dependency,r]
 L triangle2[Ownership,Linkset,Dependency,c]
 L triangle2[Ownership,Version,Dependency,r]
 L triangle2[Ownership,Version,Dependency,c]
 L triangle2[Linkset,Version,Dependency,r]
 L triangle2[Linkset,Version,Dependency,c]
COLUMNS
 M0000001 'MARKER' 'INTORG'
 x[r,Rubygem] centerDistAxis1[r,Rubygem] 1 centerDistAxis2[r,Rubygem] -1
 x[r,Rubygem] axisVdifLB[r,Rubygem,User] -1 axisVdifLB[r,Rubygem,WebHook] -1
 x[r,Rubygem] axisVdifLB[r,Rubygem,Subscription] -1 axisVdifLB[r,Rubygem,Ownership] -1
 x[r,Rubygem] axisVdifLB[r,Rubygem,Linkset] -1 axisVdifLB[r,Rubygem,Version] -1
 x[r,Rubygem] axisVdifLB[r,Rubygem,Dependency] -1 axisVdifRT[r,Rubygem,User] 1
 x[r,Rubygem] axisVdifRT[r,Rubygem,WebHook] 1 axisVdifRT[r,Rubygem,Subscription] 1
 x[r,Rubygem] axisVdifRT[r,Rubygem,Ownership] 1 axisVdifRT[r,Rubygem,Linkset] 1
 x[r,Rubygem] axisVdifRT[r,Rubygem,Version] 1 axisVdifRT[r,Rubygem,Dependency] 1
 x[r,Rubygem] compDistAxis1[r,Rubygem,User] -1 compDistAxis1[r,Rubygem,Subscription] -1
 x[r,Rubygem] compDistAxis1[r,Rubygem,WebHook] -1 compDistAxis1[r,Rubygem,Linkset] -1
 x[r,Rubygem] compDistAxis1[r,Rubygem,Ownership] -1 compDistAxis1[r,Rubygem,Version] -1
 x[r,Rubygem] compDistAxis1[r,Rubygem,Dependency] -1 compDistAxis2[r,Rubygem,User] 1
 x[r,Rubygem] compDistAxis2[r,Rubygem,Subscription] 1 compDistAxis2[r,Rubygem,WebHook] 1
 x[r,Rubygem] compDistAxis2[r,Rubygem,Linkset] 1 compDistAxis2[r,Rubygem,Ownership] 1
 x[r,Rubygem] compDistAxis2[r,Rubygem,Version] 1 compDistAxis2[r,Rubygem,Dependency] 1
 x[r,User] centerDistAxis1[r,User] 1 centerDistAxis2[r,User] -1
 x[r,User] axisVdifLB[r,Rubygem,User] 1 axisVdifLB[r,User,WebHook] -1
 x[r,User] axisVdifLB[r,User,Subscription] -1 axisVdifLB[r,User,Ownership] -1
 x[r,User] axisVdifLB[r,User,Linkset] -1 axisVdifLB[r,User,Version] -1
 x[r,User] axisVdifLB[r,User,Dependency] -1 axisVdifRT[r,Rubygem,User] -1
 x[r,User] axisVdifRT[r,User,WebHook] 1 axisVdifRT[r,User,Subscription] 1
 x[r,User] axisVdifRT[r,User,Ownership] 1 axisVdifRT[r,User,Linkset] 1
 x[r,User] axisVdifRT[r,User,Version] 1 axisVdifRT[r,User,Dependency] 1
 x[r,User] compDistAxis1[r,Rubygem,User] 1 compDistAxis1[r,User,WebHook] -1
 x[r,User] compDistAxis1[r,User,Subscription] -1 compDistAxis1[r,User,Ownership] -1
 x[r,User] compDistAxis2[r,Rubygem,User] -1 compDistAxis2[r,User,WebHook] 1
 x[r,User] compDistAxis2[r,User,Subscription] 1 compDistAxis2[r,User,Ownership] 1
 x[r,WebHook] centerDistAxis1[r,WebHook] 1 centerDistAxis2[r,WebHook] -1
 x[r,WebHook] axisVdifLB[r,Rubygem,WebHook] 1 axisVdifLB[r,User,WebHook] 1
 x[r,WebHook] axisVdifLB[r,WebHook,Subscription] -1 axisVdifLB[r,WebHook,Ownership] -1
 x[r,WebHook] axisVdifLB[r,WebHook,Linkset] -1 axisVdifLB[r,WebHook,Version] -1
 x[r,WebHook] axisVdifLB[r,WebHook,Dependency] -1 axisVdifRT[r,Rubygem,WebHook] -1
 x[r,WebHook] axisVdifRT[r,User,WebHook] -1 axisVdifRT[r,WebHook,Subscription] 1
 x[r,WebHook] axisVdifRT[r,WebHook,Ownership] 1 axisVdifRT[r,WebHook,Linkset] 1
 x[r,WebHook] axisVdifRT[r,WebHook,Version] 1 axisVdifRT[r,WebHook,Dependency] 1
 x[r,WebHook] compDistAxis1[r,User,WebHook] 1 compDistAxis1[r,Rubygem,WebHook] 1
 x[r,WebHook] compDistAxis2[r,User,WebHook] -1 compDistAxis2[r,Rubygem,WebHook] -1
 x[r,Subscription] centerDistAxis1[r,Subscription] 1 centerDistAxis2[r,Subscription] -1
 x[r,Subscription] axisVdifLB[r,Rubygem,Subscription] 1 axisVdifLB[r,User,Subscription] 1
 x[r,Subscription] axisVdifLB[r,WebHook,Subscription] 1 axisVdifLB[r,Subscription,Ownership] -1
 x[r,Subscription] axisVdifLB[r,Subscription,Linkset] -1 axisVdifLB[r,Subscription,Version] -1
 x[r,Subscription] axisVdifLB[r,Subscription,Dependency] -1 axisVdifRT[r,Rubygem,Subscription] -1
 x[r,Subscription] axisVdifRT[r,User,Subscription] -1 axisVdifRT[r,WebHook,Subscription] -1
 x[r,Subscription] axisVdifRT[r,Subscription,Ownership] 1 axisVdifRT[r,Subscription,Linkset] 1
 x[r,Subscription] axisVdifRT[r,Subscription,Version] 1 axisVdifRT[r,Subscription,Dependency] 1
 x[r,Subscription] compDistAxis1[r,User,Subscription] 1 compDistAxis1[r,Rubygem,Subscription] 1
 x[r,Subscription] compDistAxis2[r,User,Subscription] -1 compDistAxis2[r,Rubygem,Subscription] -1
 x[r,Ownership] centerDistAxis1[r,Ownership] 1 centerDistAxis2[r,Ownership] -1
 x[r,Ownership] axisVdifLB[r,Rubygem,Ownership] 1 axisVdifLB[r,User,Ownership] 1
 x[r,Ownership] axisVdifLB[r,WebHook,Ownership] 1 axisVdifLB[r,Subscription,Ownership] 1
 x[r,Ownership] axisVdifLB[r,Ownership,Linkset] -1 axisVdifLB[r,Ownership,Version] -1
 x[r,Ownership] axisVdifLB[r,Ownership,Dependency] -1 axisVdifRT[r,Rubygem,Ownership] -1
 x[r,Ownership] axisVdifRT[r,User,Ownership] -1 axisVdifRT[r,WebHook,Ownership] -1
 x[r,Ownership] axisVdifRT[r,Subscription,Ownership] -1 axisVdifRT[r,Ownership,Linkset] 1
 x[r,Ownership] axisVdifRT[r,Ownership,Version] 1 axisVdifRT[r,Ownership,Dependency] 1
 x[r,Ownership] compDistAxis1[r,User,Ownership] 1 compDistAxis1[r,Rubygem,Ownership] 1
 x[r,Ownership] compDistAxis2[r,User,Ownership] -1 compDistAxis2[r,Rubygem,Ownership] -1
 x[r,Linkset] centerDistAxis1[r,Linkset] 1 centerDistAxis2[r,Linkset] -1
 x[r,Linkset] axisVdifLB[r,Rubygem,Linkset] 1 axisVdifLB[r,User,Linkset] 1
 x[r,Linkset] axisVdifLB[r,WebHook,Linkset] 1 axisVdifLB[r,Subscription,Linkset] 1
 x[r,Linkset] axisVdifLB[r,Ownership,Linkset] 1 axisVdifLB[r,Linkset,Version] -1
 x[r,Linkset] axisVdifLB[r,Linkset,Dependency] -1 axisVdifRT[r,Rubygem,Linkset] -1
 x[r,Linkset] axisVdifRT[r,User,Linkset] -1 axisVdifRT[r,WebHook,Linkset] -1
 x[r,Linkset] axisVdifRT[r,Subscription,Linkset] -1 axisVdifRT[r,Ownership,Linkset] -1
 x[r,Linkset] axisVdifRT[r,Linkset,Version] 1 axisVdifRT[r,Linkset,Dependency] 1
 x[r,Linkset] compDistAxis1[r,Rubygem,Linkset] 1 compDistAxis2[r,Rubygem,Linkset] -1
 x[r,Version] centerDistAxis1[r,Version] 1 centerDistAxis2[r,Version] -1
 x[r,Version] axisVdifLB[r,Rubygem,Version] 1 axisVdifLB[r,User,Version] 1
 x[r,Version] axisVdifLB[r,WebHook,Version] 1 axisVdifLB[r,Subscription,Version] 1
 x[r,Version] axisVdifLB[r,Ownership,Version] 1 axisVdifLB[r,Linkset,Version] 1
 x[r,Version] axisVdifLB[r,Version,Dependency] -1 axisVdifRT[r,Rubygem,Version] -1
 x[r,Version] axisVdifRT[r,User,Version] -1 axisVdifRT[r,WebHook,Version] -1
 x[r,Version] axisVdifRT[r,Subscription,Version] -1 axisVdifRT[r,Ownership,Version] -1
 x[r,Version] axisVdifRT[r,Linkset,Version] -1 axisVdifRT[r,Version,Dependency] 1
 x[r,Version] compDistAxis1[r,Rubygem,Version] 1 compDistAxis1[r,Version,Dependency] -1
 x[r,Version] compDistAxis2[r,Rubygem,Version] -1 compDistAxis2[r,Version,Dependency] 1
 x[r,Dependency] centerDistAxis1[r,Dependency] 1 centerDistAxis2[r,Dependency] -1
 x[r,Dependency] axisVdifLB[r,Rubygem,Dependency] 1 axisVdifLB[r,User,Dependency] 1
 x[r,Dependency] axisVdifLB[r,WebHook,Dependency] 1 axisVdifLB[r,Subscription,Dependency] 1
 x[r,Dependency] axisVdifLB[r,Ownership,Dependency] 1 axisVdifLB[r,Linkset,Dependency] 1
 x[r,Dependency] axisVdifLB[r,Version,Dependency] 1 axisVdifRT[r,Rubygem,Dependency] -1
 x[r,Dependency] axisVdifRT[r,User,Dependency] -1 axisVdifRT[r,WebHook,Dependency] -1
 x[r,Dependency] axisVdifRT[r,Subscription,Dependency] -1 axisVdifRT[r,Ownership,Dependency] -1
 x[r,Dependency] axisVdifRT[r,Linkset,Dependency] -1 axisVdifRT[r,Version,Dependency] -1
 x[r,Dependency] compDistAxis1[r,Rubygem,Dependency] 1 compDistAxis1[r,Version,Dependency] 1
 x[r,Dependency] compDistAxis2[r,Rubygem,Dependency] -1 compDistAxis2[r,Version,Dependency] -1
 x[c,Rubygem] centerDistAxis1[c,Rubygem] 1 centerDistAxis2[c,Rubygem] -1
 x[c,Rubygem] axisVdifLB[c,Rubygem,User] -1 axisVdifLB[c,Rubygem,WebHook] -1
 x[c,Rubygem] axisVdifLB[c,Rubygem,Subscription] -1 axisVdifLB[c,Rubygem,Ownership] -1
 x[c,Rubygem] axisVdifLB[c,Rubygem,Linkset] -1 axisVdifLB[c,Rubygem,Version] -1
 x[c,Rubygem] axisVdifLB[c,Rubygem,Dependency] -1 axisVdifRT[c,Rubygem,User] 1
 x[c,Rubygem] axisVdifRT[c,Rubygem,WebHook] 1 axisVdifRT[c,Rubygem,Subscription] 1
 x[c,Rubygem] axisVdifRT[c,Rubygem,Ownership] 1 axisVdifRT[c,Rubygem,Linkset] 1
 x[c,Rubygem] axisVdifRT[c,Rubygem,Version] 1 axisVdifRT[c,Rubygem,Dependency] 1
 x[c,Rubygem] compDistAxis1[c,Rubygem,User] -1 compDistAxis1[c,Rubygem,Subscription] -1
 x[c,Rubygem] compDistAxis1[c,Rubygem,WebHook] -1 compDistAxis1[c,Rubygem,Linkset] -1
 x[c,Rubygem] compDistAxis1[c,Rubygem,Ownership] -1 compDistAxis1[c,Rubygem,Version] -1
 x[c,Rubygem] compDistAxis1[c,Rubygem,Dependency] -1 compDistAxis2[c,Rubygem,User] 1
 x[c,Rubygem] compDistAxis2[c,Rubygem,Subscription] 1 compDistAxis2[c,Rubygem,WebHook] 1
 x[c,Rubygem] compDistAxis2[c,Rubygem,Linkset] 1 compDistAxis2[c,Rubygem,Ownership] 1
 x[c,Rubygem] compDistAxis2[c,Rubygem,Version] 1 compDistAxis2[c,Rubygem,Dependency] 1
 x[c,User] centerDistAxis1[c,User] 1 centerDistAxis2[c,User] -1
 x[c,User] axisVdifLB[c,Rubygem,User] 1 axisVdifLB[c,User,WebHook] -1
 x[c,User] axisVdifLB[c,User,Subscription] -1 axisVdifLB[c,User,Ownership] -1
 x[c,User] axisVdifLB[c,User,Linkset] -1 axisVdifLB[c,User,Version] -1
 x[c,User] axisVdifLB[c,User,Dependency] -1 axisVdifRT[c,Rubygem,User] -1
 x[c,User] axisVdifRT[c,User,WebHook] 1 axisVdifRT[c,User,Subscription] 1
 x[c,User] axisVdifRT[c,User,Ownership] 1 axisVdifRT[c,User,Linkset] 1
 x[c,User] axisVdifRT[c,User,Version] 1 axisVdifRT[c,User,Dependency] 1
 x[c,User] compDistAxis1[c,Rubygem,User] 1 compDistAxis1[c,User,WebHook] -1
 x[c,User] compDistAxis1[c,User,Subscription] -1 compDistAxis1[c,User,Ownership] -1
 x[c,User] compDistAxis2[c,Rubygem,User] -1 compDistAxis2[c,User,WebHook] 1
 x[c,User] compDistAxis2[c,User,Subscription] 1 compDistAxis2[c,User,Ownership] 1
 x[c,WebHook] centerDistAxis1[c,WebHook] 1 centerDistAxis2[c,WebHook] -1
 x[c,WebHook] axisVdifLB[c,Rubygem,WebHook] 1 axisVdifLB[c,User,WebHook] 1
 x[c,WebHook] axisVdifLB[c,WebHook,Subscription] -1 axisVdifLB[c,WebHook,Ownership] -1
 x[c,WebHook] axisVdifLB[c,WebHook,Linkset] -1 axisVdifLB[c,WebHook,Version] -1
 x[c,WebHook] axisVdifLB[c,WebHook,Dependency] -1 axisVdifRT[c,Rubygem,WebHook] -1
 x[c,WebHook] axisVdifRT[c,User,WebHook] -1 axisVdifRT[c,WebHook,Subscription] 1
 x[c,WebHook] axisVdifRT[c,WebHook,Ownership] 1 axisVdifRT[c,WebHook,Linkset] 1
 x[c,WebHook] axisVdifRT[c,WebHook,Version] 1 axisVdifRT[c,WebHook,Dependency] 1
 x[c,WebHook] compDistAxis1[c,User,WebHook] 1 compDistAxis1[c,Rubygem,WebHook] 1
 x[c,WebHook] compDistAxis2[c,User,WebHook] -1 compDistAxis2[c,Rubygem,WebHook] -1
 x[c,Subscription] centerDistAxis1[c,Subscription] 1 centerDistAxis2[c,Subscription] -1
 x[c,Subscription] axisVdifLB[c,Rubygem,Subscription] 1 axisVdifLB[c,User,Subscription] 1
 x[c,Subscription] axisVdifLB[c,WebHook,Subscription] 1 axisVdifLB[c,Subscription,Ownership] -1
 x[c,Subscription] axisVdifLB[c,Subscription,Linkset] -1 axisVdifLB[c,Subscription,Version] -1
 x[c,Subscription] axisVdifLB[c,Subscription,Dependency] -1 axisVdifRT[c,Rubygem,Subscription] -1
 x[c,Subscription] axisVdifRT[c,User,Subscription] -1 axisVdifRT[c,WebHook,Subscription] -1
 x[c,Subscription] axisVdifRT[c,Subscription,Ownership] 1 axisVdifRT[c,Subscription,Linkset] 1
 x[c,Subscription] axisVdifRT[c,Subscription,Version] 1 axisVdifRT[c,Subscription,Dependency] 1
 x[c,Subscription] compDistAxis1[c,User,Subscription] 1 compDistAxis1[c,Rubygem,Subscription] 1
 x[c,Subscription] compDistAxis2[c,User,Subscription] -1 compDistAxis2[c,Rubygem,Subscription] -1
 x[c,Ownership] centerDistAxis1[c,Ownership] 1 centerDistAxis2[c,Ownership] -1
 x[c,Ownership] axisVdifLB[c,Rubygem,Ownership] 1 axisVdifLB[c,User,Ownership] 1
 x[c,Ownership] axisVdifLB[c,WebHook,Ownership] 1 axisVdifLB[c,Subscription,Ownership] 1
 x[c,Ownership] axisVdifLB[c,Ownership,Linkset] -1 axisVdifLB[c,Ownership,Version] -1
 x[c,Ownership] axisVdifLB[c,Ownership,Dependency] -1 axisVdifRT[c,Rubygem,Ownership] -1
 x[c,Ownership] axisVdifRT[c,User,Ownership] -1 axisVdifRT[c,WebHook,Ownership] -1
 x[c,Ownership] axisVdifRT[c,Subscription,Ownership] -1 axisVdifRT[c,Ownership,Linkset] 1
 x[c,Ownership] axisVdifRT[c,Ownership,Version] 1 axisVdifRT[c,Ownership,Dependency] 1
 x[c,Ownership] compDistAxis1[c,User,Ownership] 1 compDistAxis1[c,Rubygem,Ownership] 1
 x[c,Ownership] compDistAxis2[c,User,Ownership] -1 compDistAxis2[c,Rubygem,Ownership] -1
 x[c,Linkset] centerDistAxis1[c,Linkset] 1 centerDistAxis2[c,Linkset] -1
 x[c,Linkset] axisVdifLB[c,Rubygem,Linkset] 1 axisVdifLB[c,User,Linkset] 1
 x[c,Linkset] axisVdifLB[c,WebHook,Linkset] 1 axisVdifLB[c,Subscription,Linkset] 1
 x[c,Linkset] axisVdifLB[c,Ownership,Linkset] 1 axisVdifLB[c,Linkset,Version] -1
 x[c,Linkset] axisVdifLB[c,Linkset,Dependency] -1 axisVdifRT[c,Rubygem,Linkset] -1
 x[c,Linkset] axisVdifRT[c,User,Linkset] -1 axisVdifRT[c,WebHook,Linkset] -1
 x[c,Linkset] axisVdifRT[c,Subscription,Linkset] -1 axisVdifRT[c,Ownership,Linkset] -1
 x[c,Linkset] axisVdifRT[c,Linkset,Version] 1 axisVdifRT[c,Linkset,Dependency] 1
 x[c,Linkset] compDistAxis1[c,Rubygem,Linkset] 1 compDistAxis2[c,Rubygem,Linkset] -1
 x[c,Version] centerDistAxis1[c,Version] 1 centerDistAxis2[c,Version] -1
 x[c,Version] axisVdifLB[c,Rubygem,Version] 1 axisVdifLB[c,User,Version] 1
 x[c,Version] axisVdifLB[c,WebHook,Version] 1 axisVdifLB[c,Subscription,Version] 1
 x[c,Version] axisVdifLB[c,Ownership,Version] 1 axisVdifLB[c,Linkset,Version] 1
 x[c,Version] axisVdifLB[c,Version,Dependency] -1 axisVdifRT[c,Rubygem,Version] -1
 x[c,Version] axisVdifRT[c,User,Version] -1 axisVdifRT[c,WebHook,Version] -1
 x[c,Version] axisVdifRT[c,Subscription,Version] -1 axisVdifRT[c,Ownership,Version] -1
 x[c,Version] axisVdifRT[c,Linkset,Version] -1 axisVdifRT[c,Version,Dependency] 1
 x[c,Version] compDistAxis1[c,Rubygem,Version] 1 compDistAxis1[c,Version,Dependency] -1
 x[c,Version] compDistAxis2[c,Rubygem,Version] -1 compDistAxis2[c,Version,Dependency] 1
 x[c,Dependency] centerDistAxis1[c,Dependency] 1 centerDistAxis2[c,Dependency] -1
 x[c,Dependency] axisVdifLB[c,Rubygem,Dependency] 1 axisVdifLB[c,User,Dependency] 1
 x[c,Dependency] axisVdifLB[c,WebHook,Dependency] 1 axisVdifLB[c,Subscription,Dependency] 1
 x[c,Dependency] axisVdifLB[c,Ownership,Dependency] 1 axisVdifLB[c,Linkset,Dependency] 1
 x[c,Dependency] axisVdifLB[c,Version,Dependency] 1 axisVdifRT[c,Rubygem,Dependency] -1
 x[c,Dependency] axisVdifRT[c,User,Dependency] -1 axisVdifRT[c,WebHook,Dependency] -1
 x[c,Dependency] axisVdifRT[c,Subscription,Dependency] -1 axisVdifRT[c,Ownership,Dependency] -1
 x[c,Dependency] axisVdifRT[c,Linkset,Dependency] -1 axisVdifRT[c,Version,Dependency] -1
 x[c,Dependency] compDistAxis1[c,Rubygem,Dependency] 1 compDistAxis1[c,Version,Dependency] 1
 x[c,Dependency] compDistAxis2[c,Rubygem,Dependency] -1 compDistAxis2[c,Version,Dependency] -1
 M0000002 'MARKER' 'INTEND'
 center_dist[r,Rubygem] drawing 1 centerDistAxis1[r,Rubygem] 1
 center_dist[r,Rubygem] centerDistAxis2[r,Rubygem] 1 CenterDistSumLB 1
 center_dist[r,User] drawing 1 centerDistAxis1[r,User] 1
 center_dist[r,User] centerDistAxis2[r,User] 1 CenterDistSumLB 1
 center_dist[r,WebHook] drawing 1 centerDistAxis1[r,WebHook] 1
 center_dist[r,WebHook] centerDistAxis2[r,WebHook] 1 CenterDistSumLB 1
 center_dist[r,Subscription] drawing 1 centerDistAxis1[r,Subscription] 1
 center_dist[r,Subscription] centerDistAxis2[r,Subscription] 1 CenterDistSumLB 1
 center_dist[r,Ownership] drawing 1 centerDistAxis1[r,Ownership] 1
 center_dist[r,Ownership] centerDistAxis2[r,Ownership] 1 CenterDistSumLB 1
 center_dist[r,Linkset] drawing 1 centerDistAxis1[r,Linkset] 1
 center_dist[r,Linkset] centerDistAxis2[r,Linkset] 1 CenterDistSumLB 1
 center_dist[r,Version] drawing 1 centerDistAxis1[r,Version] 1
 center_dist[r,Version] centerDistAxis2[r,Version] 1 CenterDistSumLB 1
 center_dist[r,Dependency] drawing 1 centerDistAxis1[r,Dependency] 1
 center_dist[r,Dependency] centerDistAxis2[r,Dependency] 1 CenterDistSumLB 1
 center_dist[c,Rubygem] drawing 1 centerDistAxis1[c,Rubygem] 1
 center_dist[c,Rubygem] centerDistAxis2[c,Rubygem] 1 CenterDistSumLB 1
 center_dist[c,User] drawing 1 centerDistAxis1[c,User] 1
 center_dist[c,User] centerDistAxis2[c,User] 1 CenterDistSumLB 1
 center_dist[c,WebHook] drawing 1 centerDistAxis1[c,WebHook] 1
 center_dist[c,WebHook] centerDistAxis2[c,WebHook] 1 CenterDistSumLB 1
 center_dist[c,Subscription] drawing 1 centerDistAxis1[c,Subscription] 1
 center_dist[c,Subscription] centerDistAxis2[c,Subscription] 1 CenterDistSumLB 1
 center_dist[c,Ownership] drawing 1 centerDistAxis1[c,Ownership] 1
 center_dist[c,Ownership] centerDistAxis2[c,Ownership] 1 CenterDistSumLB 1
 center_dist[c,Linkset] drawing 1 centerDistAxis1[c,Linkset] 1
 center_dist[c,Linkset] centerDistAxis2[c,Linkset] 1 CenterDistSumLB 1
 center_dist[c,Version] drawing 1 centerDistAxis1[c,Version] 1
 center_dist[c,Version] centerDistAxis2[c,Version] 1 CenterDistSumLB 1
 center_dist[c,Dependency] drawing 1 centerDistAxis1[c,Dependency] 1
 center_dist[c,Dependency] centerDistAxis2[c,Dependency] 1 CenterDistSumLB 1
 dist[r,Rubygem,User] drawing 64 compDistAxis1[r,Rubygem,User] 1
 dist[r,Rubygem,User] compDistAxis2[r,Rubygem,User] 1 DistSumLB[Rubygem,User] 1
 dist[r,Rubygem,User] DistAxisLB1[r,Rubygem,User] 1
 dist[r,User,WebHook] drawing 64 compDistAxis1[r,User,WebHook] 1
 dist[r,User,WebHook] compDistAxis2[r,User,WebHook] 1 DistSumLB[User,WebHook] 1
 dist[r,User,WebHook] DistAxisLB1[r,User,WebHook] 1
 dist[r,User,Subscription] drawing 64 compDistAxis1[r,User,Subscription] 1
 dist[r,User,Subscription] compDistAxis2[r,User,Subscription] 1 DistSumLB[User,Subscription] 1
 dist[r,User,Subscription] DistAxisLB1[r,User,Subscription] 1
 dist[r,User,Ownership] drawing 64 compDistAxis1[r,User,Ownership] 1
 dist[r,User,Ownership] compDistAxis2[r,User,Ownership] 1 DistSumLB[User,Ownership] 1
 dist[r,User,Ownership] DistAxisLB1[r,User,Ownership] 1
 dist[r,Rubygem,Subscription] drawing 64 compDistAxis1[r,Rubygem,Subscription] 1
 dist[r,Rubygem,Subscription] compDistAxis2[r,Rubygem,Subscription] 1 DistSumLB[Rubygem,Subscription] 1
 dist[r,Rubygem,Subscription] DistAxisLB1[r,Rubygem,Subscription] 1
 dist[r,Rubygem,WebHook] drawing 64 compDistAxis1[r,Rubygem,WebHook] 1
 dist[r,Rubygem,WebHook] compDistAxis2[r,Rubygem,WebHook] 1 DistSumLB[Rubygem,WebHook] 1
 dist[r,Rubygem,WebHook] DistAxisLB1[r,Rubygem,WebHook] 1
 dist[r,Rubygem,Linkset] drawing 64 compDistAxis1[r,Rubygem,Linkset] 1
 dist[r,Rubygem,Linkset] compDistAxis2[r,Rubygem,Linkset] 1 DistSumLB[Rubygem,Linkset] 1
 dist[r,Rubygem,Linkset] DistAxisLB1[r,Rubygem,Linkset] 1
 dist[r,Rubygem,Ownership] drawing 64 compDistAxis1[r,Rubygem,Ownership] 1
 dist[r,Rubygem,Ownership] compDistAxis2[r,Rubygem,Ownership] 1 DistSumLB[Rubygem,Ownership] 1
 dist[r,Rubygem,Ownership] DistAxisLB1[r,Rubygem,Ownership] 1
 dist[r,Rubygem,Version] drawing 64 compDistAxis1[r,Rubygem,Version] 1
 dist[r,Rubygem,Version] compDistAxis2[r,Rubygem,Version] 1 DistSumLB[Rubygem,Version] 1
 dist[r,Rubygem,Version] DistAxisLB1[r,Rubygem,Version] 1
 dist[r,Rubygem,Dependency] drawing 64 compDistAxis1[r,Rubygem,Dependency] 1
 dist[r,Rubygem,Dependency] compDistAxis2[r,Rubygem,Dependency] 1 DistSumLB[Rubygem,Dependency] 1
 dist[r,Rubygem,Dependency] DistAxisLB1[r,Rubygem,Dependency] 1
 dist[r,Version,Dependency] drawing 64 compDistAxis1[r,Version,Dependency] 1
 dist[r,Version,Dependency] compDistAxis2[r,Version,Dependency] 1 DistSumLB[Version,Dependency] 1
 dist[r,Version,Dependency] DistAxisLB1[r,Version,Dependency] 1
 dist[c,Rubygem,User] drawing 64 compDistAxis1[c,Rubygem,User] 1
 dist[c,Rubygem,User] compDistAxis2[c,Rubygem,User] 1 DistSumLB[Rubygem,User] 1
 dist[c,Rubygem,User] DistAxisLB1[c,Rubygem,User] 1
 dist[c,User,WebHook] drawing 64 compDistAxis1[c,User,WebHook] 1
 dist[c,User,WebHook] compDistAxis2[c,User,WebHook] 1 DistSumLB[User,WebHook] 1
 dist[c,User,WebHook] DistAxisLB1[c,User,WebHook] 1
 dist[c,User,Subscription] drawing 64 compDistAxis1[c,User,Subscription] 1
 dist[c,User,Subscription] compDistAxis2[c,User,Subscription] 1 DistSumLB[User,Subscription] 1
 dist[c,User,Subscription] DistAxisLB1[c,User,Subscription] 1
 dist[c,User,Ownership] drawing 64 compDistAxis1[c,User,Ownership] 1
 dist[c,User,Ownership] compDistAxis2[c,User,Ownership] 1 DistSumLB[User,Ownership] 1
 dist[c,User,Ownership] DistAxisLB1[c,User,Ownership] 1
 dist[c,Rubygem,Subscription] drawing 64 compDistAxis1[c,Rubygem,Subscription] 1
 dist[c,Rubygem,Subscription] compDistAxis2[c,Rubygem,Subscription] 1 DistSumLB[Rubygem,Subscription] 1
 dist[c,Rubygem,Subscription] DistAxisLB1[c,Rubygem,Subscription] 1
 dist[c,Rubygem,WebHook] drawing 64 compDistAxis1[c,Rubygem,WebHook] 1
 dist[c,Rubygem,WebHook] compDistAxis2[c,Rubygem,WebHook] 1 DistSumLB[Rubygem,WebHook] 1
 dist[c,Rubygem,WebHook] DistAxisLB1[c,Rubygem,WebHook] 1
 dist[c,Rubygem,Linkset] drawing 64 compDistAxis1[c,Rubygem,Linkset] 1
 dist[c,Rubygem,Linkset] compDistAxis2[c,Rubygem,Linkset] 1 DistSumLB[Rubygem,Linkset] 1
 dist[c,Rubygem,Linkset] DistAxisLB1[c,Rubygem,Linkset] 1
 dist[c,Rubygem,Ownership] drawing 64 compDistAxis1[c,Rubygem,Ownership] 1
 dist[c,Rubygem,Ownership] compDistAxis2[c,Rubygem,Ownership] 1 DistSumLB[Rubygem,Ownership] 1
 dist[c,Rubygem,Ownership] DistAxisLB1[c,Rubygem,Ownership] 1
 dist[c,Rubygem,Version] drawing 64 compDistAxis1[c,Rubygem,Version] 1
 dist[c,Rubygem,Version] compDistAxis2[c,Rubygem,Version] 1 DistSumLB[Rubygem,Version] 1
 dist[c,Rubygem,Version] DistAxisLB1[c,Rubygem,Version] 1
 dist[c,Rubygem,Dependency] drawing 64 compDistAxis1[c,Rubygem,Dependency] 1
 dist[c,Rubygem,Dependency] compDistAxis2[c,Rubygem,Dependency] 1 DistSumLB[Rubygem,Dependency] 1
 dist[c,Rubygem,Dependency] DistAxisLB1[c,Rubygem,Dependency] 1
 dist[c,Version,Dependency] drawing 64 compDistAxis1[c,Version,Dependency] 1
 dist[c,Version,Dependency] compDistAxis2[c,Version,Dependency] 1 DistSumLB[Version,Dependency] 1
 dist[c,Version,Dependency] DistAxisLB1[c,Version,Dependency] 1
 M0000003 'MARKER' 'INTORG'
 zV[r,rt,Rubygem,User] choose1[Rubygem,User] 1 axisVdifRT[r,Rubygem,User] -40
 zV[r,rt,Rubygem,User] DistAxisLB1[c,Rubygem,User] 11.5 triangle1[Rubygem,User,WebHook,r] 1
 zV[r,rt,Rubygem,User] triangle1[Rubygem,User,Subscription,r] 1 triangle1[Rubygem,User,Ownership,r] 1
 zV[r,rt,Rubygem,User] triangle1[Rubygem,User,Linkset,r] 1 triangle1[Rubygem,User,Version,r] 1
 zV[r,rt,Rubygem,User] triangle1[Rubygem,User,Dependency,r] 1
 zV[c,rt,Rubygem,User] choose1[Rubygem,User] 1 axisVdifRT[c,Rubygem,User] -45
 zV[c,rt,Rubygem,User] DistAxisLB1[r,Rubygem,User] 7 triangle1[Rubygem,User,WebHook,c] 1
 zV[c,rt,Rubygem,User] triangle1[Rubygem,User,Subscription,c] 1 triangle1[Rubygem,User,Ownership,c] 1
 zV[c,rt,Rubygem,User] triangle1[Rubygem,User,Linkset,c] 1 triangle1[Rubygem,User,Version,c] 1
 zV[c,rt,Rubygem,User] triangle1[Rubygem,User,Dependency,c] 1
 zV[r,lb,Rubygem,User] choose1[Rubygem,User] 1 axisVdifLB[r,Rubygem,User] -36
 zV[r,lb,Rubygem,User] DistAxisLB1[c,Rubygem,User] 11.5 triangle2[Rubygem,User,WebHook,r] 1
 zV[r,lb,Rubygem,User] triangle2[Rubygem,User,Subscription,r] 1 triangle2[Rubygem,User,Ownership,r] 1
 zV[r,lb,Rubygem,User] triangle2[Rubygem,User,Linkset,r] 1 triangle2[Rubygem,User,Version,r] 1
 zV[r,lb,Rubygem,User] triangle2[Rubygem,User,Dependency,r] 1
 zV[c,lb,Rubygem,User] choose1[Rubygem,User] 1 axisVdifLB[c,Rubygem,User] -40
 zV[c,lb,Rubygem,User] DistAxisLB1[r,Rubygem,User] 7 triangle2[Rubygem,User,WebHook,c] 1
 zV[c,lb,Rubygem,User] triangle2[Rubygem,User,Subscription,c] 1 triangle2[Rubygem,User,Ownership,c] 1
 zV[c,lb,Rubygem,User] triangle2[Rubygem,User,Linkset,c] 1 triangle2[Rubygem,User,Version,c] 1
 zV[c,lb,Rubygem,User] triangle2[Rubygem,User,Dependency,c] 1
 zV[r,rt,Rubygem,WebHook] choose1[Rubygem,WebHook] 1 axisVdifRT[r,Rubygem,WebHook] -36
 zV[r,rt,Rubygem,WebHook] DistAxisLB1[c,Rubygem,WebHook] 10 triangle1[Rubygem,WebHook,Subscription,r] 1
 zV[r,rt,Rubygem,WebHook] triangle1[Rubygem,WebHook,Ownership,r] 1 triangle1[Rubygem,WebHook,Linkset,r] 1
 zV[r,rt,Rubygem,WebHook] triangle1[Rubygem,WebHook,Version,r] 1 triangle1[Rubygem,WebHook,Dependency,r] 1
 zV[r,rt,Rubygem,WebHook] triangle2[Rubygem,User,WebHook,r] 1
 zV[c,rt,Rubygem,WebHook] choose1[Rubygem,WebHook] 1 axisVdifRT[c,Rubygem,WebHook] -42
 zV[c,rt,Rubygem,WebHook] DistAxisLB1[r,Rubygem,WebHook] 5 triangle1[Rubygem,WebHook,Subscription,c] 1
 zV[c,rt,Rubygem,WebHook] triangle1[Rubygem,WebHook,Ownership,c] 1 triangle1[Rubygem,WebHook,Linkset,c] 1
 zV[c,rt,Rubygem,WebHook] triangle1[Rubygem,WebHook,Version,c] 1 triangle1[Rubygem,WebHook,Dependency,c] 1
 zV[c,rt,Rubygem,WebHook] triangle2[Rubygem,User,WebHook,c] 1
 zV[r,lb,Rubygem,WebHook] choose1[Rubygem,WebHook] 1 axisVdifLB[r,Rubygem,WebHook] -36
 zV[r,lb,Rubygem,WebHook] DistAxisLB1[c,Rubygem,WebHook] 10 triangle1[Rubygem,User,WebHook,r] 1
 zV[r,lb,Rubygem,WebHook] triangle2[Rubygem,WebHook,Subscription,r] 1 triangle2[Rubygem,WebHook,Ownership,r] 1
 zV[r,lb,Rubygem,WebHook] triangle2[Rubygem,WebHook,Linkset,r] 1 triangle2[Rubygem,WebHook,Version,r] 1
 zV[r,lb,Rubygem,WebHook] triangle2[Rubygem,WebHook,Dependency,r] 1
 zV[c,lb,Rubygem,WebHook] choose1[Rubygem,WebHook] 1 axisVdifLB[c,Rubygem,WebHook] -40
 zV[c,lb,Rubygem,WebHook] DistAxisLB1[r,Rubygem,WebHook] 5 triangle1[Rubygem,User,WebHook,c] 1
 zV[c,lb,Rubygem,WebHook] triangle2[Rubygem,WebHook,Subscription,c] 1 triangle2[Rubygem,WebHook,Ownership,c] 1
 zV[c,lb,Rubygem,WebHook] triangle2[Rubygem,WebHook,Linkset,c] 1 triangle2[Rubygem,WebHook,Version,c] 1
 zV[c,lb,Rubygem,WebHook] triangle2[Rubygem,WebHook,Dependency,c] 1
 zV[r,rt,Rubygem,Subscription] choose1[Rubygem,Subscription] 1 axisVdifRT[r,Rubygem,Subscription] -35
 zV[r,rt,Rubygem,Subscription] DistAxisLB1[c,Rubygem,Subscription] 8.5 triangle1[Rubygem,Subscription,Ownership,r] 1
 zV[r,rt,Rubygem,Subscription] triangle1[Rubygem,Subscription,Linkset,r] 1 triangle1[Rubygem,Subscription,Version,r] 1
 zV[r,rt,Rubygem,Subscription] triangle1[Rubygem,Subscription,Dependency,r] 1 triangle2[Rubygem,User,Subscription,r] 1
 zV[r,rt,Rubygem,Subscription] triangle2[Rubygem,WebHook,Subscription,r] 1
 zV[c,rt,Rubygem,Subscription] choose1[Rubygem,Subscription] 1 axisVdifRT[c,Rubygem,Subscription] -39
 zV[c,rt,Rubygem,Subscription] DistAxisLB1[r,Rubygem,Subscription] 4.5 triangle1[Rubygem,Subscription,Ownership,c] 1
 zV[c,rt,Rubygem,Subscription] triangle1[Rubygem,Subscription,Linkset,c] 1 triangle1[Rubygem,Subscription,Version,c] 1
 zV[c,rt,Rubygem,Subscription] triangle1[Rubygem,Subscription,Dependency,c] 1 triangle2[Rubygem,User,Subscription,c] 1
 zV[c,rt,Rubygem,Subscription] triangle2[Rubygem,WebHook,Subscription,c] 1
 zV[r,lb,Rubygem,Subscription] choose1[Rubygem,Subscription] 1 axisVdifLB[r,Rubygem,Subscription] -36
 zV[r,lb,Rubygem,Subscription] DistAxisLB1[c,Rubygem,Subscription] 8.5 triangle1[Rubygem,User,Subscription,r] 1
 zV[r,lb,Rubygem,Subscription] triangle1[Rubygem,WebHook,Subscription,r] 1 triangle2[Rubygem,Subscription,Ownership,r] 1
 zV[r,lb,Rubygem,Subscription] triangle2[Rubygem,Subscription,Linkset,r] 1 triangle2[Rubygem,Subscription,Version,r] 1
 zV[r,lb,Rubygem,Subscription] triangle2[Rubygem,Subscription,Dependency,r] 1
 zV[c,lb,Rubygem,Subscription] choose1[Rubygem,Subscription] 1 axisVdifLB[c,Rubygem,Subscription] -40
 zV[c,lb,Rubygem,Subscription] DistAxisLB1[r,Rubygem,Subscription] 4.5 triangle1[Rubygem,User,Subscription,c] 1
 zV[c,lb,Rubygem,Subscription] triangle1[Rubygem,WebHook,Subscription,c] 1 triangle2[Rubygem,Subscription,Ownership,c] 1
 zV[c,lb,Rubygem,Subscription] triangle2[Rubygem,Subscription,Linkset,c] 1 triangle2[Rubygem,Subscription,Version,c] 1
 zV[c,lb,Rubygem,Subscription] triangle2[Rubygem,Subscription,Dependency,c] 1
 zV[r,rt,Rubygem,Ownership] choose1[Rubygem,Ownership] 1 axisVdifRT[r,Rubygem,Ownership] -36
 zV[r,rt,Rubygem,Ownership] DistAxisLB1[c,Rubygem,Ownership] 9 triangle1[Rubygem,Ownership,Linkset,r] 1
 zV[r,rt,Rubygem,Ownership] triangle1[Rubygem,Ownership,Version,r] 1 triangle1[Rubygem,Ownership,Dependency,r] 1
 zV[r,rt,Rubygem,Ownership] triangle2[Rubygem,User,Ownership,r] 1 triangle2[Rubygem,WebHook,Ownership,r] 1
 zV[r,rt,Rubygem,Ownership] triangle2[Rubygem,Subscription,Ownership,r] 1
 zV[c,rt,Rubygem,Ownership] choose1[Rubygem,Ownership] 1 axisVdifRT[c,Rubygem,Ownership] -40
 zV[c,rt,Rubygem,Ownership] DistAxisLB1[r,Rubygem,Ownership] 5 triangle1[Rubygem,Ownership,Linkset,c] 1
 zV[c,rt,Rubygem,Ownership] triangle1[Rubygem,Ownership,Version,c] 1 triangle1[Rubygem,Ownership,Dependency,c] 1
 zV[c,rt,Rubygem,Ownership] triangle2[Rubygem,User,Ownership,c] 1 triangle2[Rubygem,WebHook,Ownership,c] 1
 zV[c,rt,Rubygem,Ownership] triangle2[Rubygem,Subscription,Ownership,c] 1
 zV[r,lb,Rubygem,Ownership] choose1[Rubygem,Ownership] 1 axisVdifLB[r,Rubygem,Ownership] -36
 zV[r,lb,Rubygem,Ownership] DistAxisLB1[c,Rubygem,Ownership] 9 triangle1[Rubygem,User,Ownership,r] 1
 zV[r,lb,Rubygem,Ownership] triangle1[Rubygem,WebHook,Ownership,r] 1 triangle1[Rubygem,Subscription,Ownership,r] 1
 zV[r,lb,Rubygem,Ownership] triangle2[Rubygem,Ownership,Linkset,r] 1 triangle2[Rubygem,Ownership,Version,r] 1
 zV[r,lb,Rubygem,Ownership] triangle2[Rubygem,Ownership,Dependency,r] 1
 zV[c,lb,Rubygem,Ownership] choose1[Rubygem,Ownership] 1 axisVdifLB[c,Rubygem,Ownership] -40
 zV[c,lb,Rubygem,Ownership] DistAxisLB1[r,Rubygem,Ownership] 5 triangle1[Rubygem,User,Ownership,c] 1
 zV[c,lb,Rubygem,Ownership] triangle1[Rubygem,WebHook,Ownership,c] 1 triangle1[Rubygem,Subscription,Ownership,c] 1
 zV[c,lb,Rubygem,Ownership] triangle2[Rubygem,Ownership,Linkset,c] 1 triangle2[Rubygem,Ownership,Version,c] 1
 zV[c,lb,Rubygem,Ownership] triangle2[Rubygem,Ownership,Dependency,c] 1
 zV[r,rt,Rubygem,Linkset] choose1[Rubygem,Linkset] 1 axisVdifRT[r,Rubygem,Linkset] -38
 zV[r,rt,Rubygem,Linkset] DistAxisLB1[c,Rubygem,Linkset] 8 triangle1[Rubygem,Linkset,Version,r] 1
 zV[r,rt,Rubygem,Linkset] triangle1[Rubygem,Linkset,Dependency,r] 1 triangle2[Rubygem,User,Linkset,r] 1
 zV[r,rt,Rubygem,Linkset] triangle2[Rubygem,WebHook,Linkset,r] 1 triangle2[Rubygem,Subscription,Linkset,r] 1
 zV[r,rt,Rubygem,Linkset] triangle2[Rubygem,Ownership,Linkset,r] 1
 zV[c,rt,Rubygem,Linkset] choose1[Rubygem,Linkset] 1 axisVdifRT[c,Rubygem,Linkset] -38
 zV[c,rt,Rubygem,Linkset] DistAxisLB1[r,Rubygem,Linkset] 6 triangle1[Rubygem,Linkset,Version,c] 1
 zV[c,rt,Rubygem,Linkset] triangle1[Rubygem,Linkset,Dependency,c] 1 triangle2[Rubygem,User,Linkset,c] 1
 zV[c,rt,Rubygem,Linkset] triangle2[Rubygem,WebHook,Linkset,c] 1 triangle2[Rubygem,Subscription,Linkset,c] 1
 zV[c,rt,Rubygem,Linkset] triangle2[Rubygem,Ownership,Linkset,c] 1
 zV[r,lb,Rubygem,Linkset] choose1[Rubygem,Linkset] 1 axisVdifLB[r,Rubygem,Linkset] -36
 zV[r,lb,Rubygem,Linkset] DistAxisLB1[c,Rubygem,Linkset] 8 triangle1[Rubygem,User,Linkset,r] 1
 zV[r,lb,Rubygem,Linkset] triangle1[Rubygem,WebHook,Linkset,r] 1 triangle1[Rubygem,Subscription,Linkset,r] 1
 zV[r,lb,Rubygem,Linkset] triangle1[Rubygem,Ownership,Linkset,r] 1 triangle2[Rubygem,Linkset,Version,r] 1
 zV[r,lb,Rubygem,Linkset] triangle2[Rubygem,Linkset,Dependency,r] 1
 zV[c,lb,Rubygem,Linkset] choose1[Rubygem,Linkset] 1 axisVdifLB[c,Rubygem,Linkset] -40
 zV[c,lb,Rubygem,Linkset] DistAxisLB1[r,Rubygem,Linkset] 6 triangle1[Rubygem,User,Linkset,c] 1
 zV[c,lb,Rubygem,Linkset] triangle1[Rubygem,WebHook,Linkset,c] 1 triangle1[Rubygem,Subscription,Linkset,c] 1
 zV[c,lb,Rubygem,Linkset] triangle1[Rubygem,Ownership,Linkset,c] 1 triangle2[Rubygem,Linkset,Version,c] 1
 zV[c,lb,Rubygem,Linkset] triangle2[Rubygem,Linkset,Dependency,c] 1
 zV[r,rt,Rubygem,Version] choose1[Rubygem,Version] 1 axisVdifRT[r,Rubygem,Version] -40
 zV[r,rt,Rubygem,Version] DistAxisLB1[c,Rubygem,Version] 10.5 triangle1[Rubygem,Version,Dependency,r] 1
 zV[r,rt,Rubygem,Version] triangle2[Rubygem,User,Version,r] 1 triangle2[Rubygem,WebHook,Version,r] 1
 zV[r,rt,Rubygem,Version] triangle2[Rubygem,Subscription,Version,r] 1 triangle2[Rubygem,Ownership,Version,r] 1
 zV[r,rt,Rubygem,Version] triangle2[Rubygem,Linkset,Version,r] 1
 zV[c,rt,Rubygem,Version] choose1[Rubygem,Version] 1 axisVdifRT[c,Rubygem,Version] -43
 zV[c,rt,Rubygem,Version] DistAxisLB1[r,Rubygem,Version] 7 triangle1[Rubygem,Version,Dependency,c] 1
 zV[c,rt,Rubygem,Version] triangle2[Rubygem,User,Version,c] 1 triangle2[Rubygem,WebHook,Version,c] 1
 zV[c,rt,Rubygem,Version] triangle2[Rubygem,Subscription,Version,c] 1 triangle2[Rubygem,Ownership,Version,c] 1
 zV[c,rt,Rubygem,Version] triangle2[Rubygem,Linkset,Version,c] 1
 zV[r,lb,Rubygem,Version] choose1[Rubygem,Version] 1 axisVdifLB[r,Rubygem,Version] -36
 zV[r,lb,Rubygem,Version] DistAxisLB1[c,Rubygem,Version] 10.5 triangle1[Rubygem,User,Version,r] 1
 zV[r,lb,Rubygem,Version] triangle1[Rubygem,WebHook,Version,r] 1 triangle1[Rubygem,Subscription,Version,r] 1
 zV[r,lb,Rubygem,Version] triangle1[Rubygem,Ownership,Version,r] 1 triangle1[Rubygem,Linkset,Version,r] 1
 zV[r,lb,Rubygem,Version] triangle2[Rubygem,Version,Dependency,r] 1
 zV[c,lb,Rubygem,Version] choose1[Rubygem,Version] 1 axisVdifLB[c,Rubygem,Version] -40
 zV[c,lb,Rubygem,Version] DistAxisLB1[r,Rubygem,Version] 7 triangle1[Rubygem,User,Version,c] 1
 zV[c,lb,Rubygem,Version] triangle1[Rubygem,WebHook,Version,c] 1 triangle1[Rubygem,Subscription,Version,c] 1
 zV[c,lb,Rubygem,Version] triangle1[Rubygem,Ownership,Version,c] 1 triangle1[Rubygem,Linkset,Version,c] 1
 zV[c,lb,Rubygem,Version] triangle2[Rubygem,Version,Dependency,c] 1
 zV[r,rt,Rubygem,Dependency] choose1[Rubygem,Dependency] 1 axisVdifRT[r,Rubygem,Dependency] -36
 zV[r,rt,Rubygem,Dependency] DistAxisLB1[c,Rubygem,Dependency] 9.5 triangle2[Rubygem,User,Dependency,r] 1
 zV[r,rt,Rubygem,Dependency] triangle2[Rubygem,WebHook,Dependency,r] 1 triangle2[Rubygem,Subscription,Dependency,r] 1
 zV[r,rt,Rubygem,Dependency] triangle2[Rubygem,Ownership,Dependency,r] 1 triangle2[Rubygem,Linkset,Dependency,r] 1
 zV[r,rt,Rubygem,Dependency] triangle2[Rubygem,Version,Dependency,r] 1
 zV[c,rt,Rubygem,Dependency] choose1[Rubygem,Dependency] 1 axisVdifRT[c,Rubygem,Dependency] -41
 zV[c,rt,Rubygem,Dependency] DistAxisLB1[r,Rubygem,Dependency] 5 triangle2[Rubygem,User,Dependency,c] 1
 zV[c,rt,Rubygem,Dependency] triangle2[Rubygem,WebHook,Dependency,c] 1 triangle2[Rubygem,Subscription,Dependency,c] 1
 zV[c,rt,Rubygem,Dependency] triangle2[Rubygem,Ownership,Dependency,c] 1 triangle2[Rubygem,Linkset,Dependency,c] 1
 zV[c,rt,Rubygem,Dependency] triangle2[Rubygem,Version,Dependency,c] 1
 zV[r,lb,Rubygem,Dependency] choose1[Rubygem,Dependency] 1 axisVdifLB[r,Rubygem,Dependency] -36
 zV[r,lb,Rubygem,Dependency] DistAxisLB1[c,Rubygem,Dependency] 9.5 triangle1[Rubygem,User,Dependency,r] 1
 zV[r,lb,Rubygem,Dependency] triangle1[Rubygem,WebHook,Dependency,r] 1 triangle1[Rubygem,Subscription,Dependency,r] 1
 zV[r,lb,Rubygem,Dependency] triangle1[Rubygem,Ownership,Dependency,r] 1 triangle1[Rubygem,Linkset,Dependency,r] 1
 zV[r,lb,Rubygem,Dependency] triangle1[Rubygem,Version,Dependency,r] 1
 zV[c,lb,Rubygem,Dependency] choose1[Rubygem,Dependency] 1 axisVdifLB[c,Rubygem,Dependency] -40
 zV[c,lb,Rubygem,Dependency] DistAxisLB1[r,Rubygem,Dependency] 5 triangle1[Rubygem,User,Dependency,c] 1
 zV[c,lb,Rubygem,Dependency] triangle1[Rubygem,WebHook,Dependency,c] 1 triangle1[Rubygem,Subscription,Dependency,c] 1
 zV[c,lb,Rubygem,Dependency] triangle1[Rubygem,Ownership,Dependency,c] 1 triangle1[Rubygem,Linkset,Dependency,c] 1
 zV[c,lb,Rubygem,Dependency] triangle1[Rubygem,Version,Dependency,c] 1
 zV[r,rt,User,WebHook] choose1[User,WebHook] 1 axisVdifRT[r,User,WebHook] -36
 zV[r,rt,User,WebHook] DistAxisLB1[c,User,WebHook] 12.5 triangle1[Rubygem,User,WebHook,r] 1
 zV[r,rt,User,WebHook] triangle1[User,WebHook,Subscription,r] 1 triangle1[User,WebHook,Ownership,r] 1
 zV[r,rt,User,WebHook] triangle1[User,WebHook,Linkset,r] 1 triangle1[User,WebHook,Version,r] 1
 zV[r,rt,User,WebHook] triangle1[User,WebHook,Dependency,r] 1
 zV[c,rt,User,WebHook] choose1[User,WebHook] 1 axisVdifRT[c,User,WebHook] -42
 zV[c,rt,User,WebHook] DistAxisLB1[r,User,WebHook] 7 triangle1[Rubygem,User,WebHook,c] 1
 zV[c,rt,User,WebHook] triangle1[User,WebHook,Subscription,c] 1 triangle1[User,WebHook,Ownership,c] 1
 zV[c,rt,User,WebHook] triangle1[User,WebHook,Linkset,c] 1 triangle1[User,WebHook,Version,c] 1
 zV[c,rt,User,WebHook] triangle1[User,WebHook,Dependency,c] 1
 zV[r,lb,User,WebHook] choose1[User,WebHook] 1 axisVdifLB[r,User,WebHook] -40
 zV[r,lb,User,WebHook] DistAxisLB1[c,User,WebHook] 12.5 triangle2[Rubygem,User,WebHook,r] 1
 zV[r,lb,User,WebHook] triangle2[User,WebHook,Subscription,r] 1 triangle2[User,WebHook,Ownership,r] 1
 zV[r,lb,User,WebHook] triangle2[User,WebHook,Linkset,r] 1 triangle2[User,WebHook,Version,r] 1
 zV[r,lb,User,WebHook] triangle2[User,WebHook,Dependency,r] 1
 zV[c,lb,User,WebHook] choose1[User,WebHook] 1 axisVdifLB[c,User,WebHook] -45
 zV[c,lb,User,WebHook] DistAxisLB1[r,User,WebHook] 7 triangle2[Rubygem,User,WebHook,c] 1
 zV[c,lb,User,WebHook] triangle2[User,WebHook,Subscription,c] 1 triangle2[User,WebHook,Ownership,c] 1
 zV[c,lb,User,WebHook] triangle2[User,WebHook,Linkset,c] 1 triangle2[User,WebHook,Version,c] 1
 zV[c,lb,User,WebHook] triangle2[User,WebHook,Dependency,c] 1
 zV[r,rt,User,Subscription] choose1[User,Subscription] 1 axisVdifRT[r,User,Subscription] -35
 zV[r,rt,User,Subscription] DistAxisLB1[c,User,Subscription] 11 triangle1[Rubygem,User,Subscription,r] 1
 zV[r,rt,User,Subscription] triangle1[User,Subscription,Ownership,r] 1 triangle1[User,Subscription,Linkset,r] 1
 zV[r,rt,User,Subscription] triangle1[User,Subscription,Version,r] 1 triangle1[User,Subscription,Dependency,r] 1
 zV[r,rt,User,Subscription] triangle2[User,WebHook,Subscription,r] 1
 zV[c,rt,User,Subscription] choose1[User,Subscription] 1 axisVdifRT[c,User,Subscription] -39
 zV[c,rt,User,Subscription] DistAxisLB1[r,User,Subscription] 6.5 triangle1[Rubygem,User,Subscription,c] 1
 zV[c,rt,User,Subscription] triangle1[User,Subscription,Ownership,c] 1 triangle1[User,Subscription,Linkset,c] 1
 zV[c,rt,User,Subscription] triangle1[User,Subscription,Version,c] 1 triangle1[User,Subscription,Dependency,c] 1
 zV[c,rt,User,Subscription] triangle2[User,WebHook,Subscription,c] 1
 zV[r,lb,User,Subscription] choose1[User,Subscription] 1 axisVdifLB[r,User,Subscription] -40
 zV[r,lb,User,Subscription] DistAxisLB1[c,User,Subscription] 11 triangle1[User,WebHook,Subscription,r] 1
 zV[r,lb,User,Subscription] triangle2[Rubygem,User,Subscription,r] 1 triangle2[User,Subscription,Ownership,r] 1
 zV[r,lb,User,Subscription] triangle2[User,Subscription,Linkset,r] 1 triangle2[User,Subscription,Version,r] 1
 zV[r,lb,User,Subscription] triangle2[User,Subscription,Dependency,r] 1
 zV[c,lb,User,Subscription] choose1[User,Subscription] 1 axisVdifLB[c,User,Subscription] -45
 zV[c,lb,User,Subscription] DistAxisLB1[r,User,Subscription] 6.5 triangle1[User,WebHook,Subscription,c] 1
 zV[c,lb,User,Subscription] triangle2[Rubygem,User,Subscription,c] 1 triangle2[User,Subscription,Ownership,c] 1
 zV[c,lb,User,Subscription] triangle2[User,Subscription,Linkset,c] 1 triangle2[User,Subscription,Version,c] 1
 zV[c,lb,User,Subscription] triangle2[User,Subscription,Dependency,c] 1
 zV[r,rt,User,Ownership] choose1[User,Ownership] 1 axisVdifRT[r,User,Ownership] -36
 zV[r,rt,User,Ownership] DistAxisLB1[c,User,Ownership] 11.5 triangle1[Rubygem,User,Ownership,r] 1
 zV[r,rt,User,Ownership] triangle1[User,Ownership,Linkset,r] 1 triangle1[User,Ownership,Version,r] 1
 zV[r,rt,User,Ownership] triangle1[User,Ownership,Dependency,r] 1 triangle2[User,WebHook,Ownership,r] 1
 zV[r,rt,User,Ownership] triangle2[User,Subscription,Ownership,r] 1
 zV[c,rt,User,Ownership] choose1[User,Ownership] 1 axisVdifRT[c,User,Ownership] -40
 zV[c,rt,User,Ownership] DistAxisLB1[r,User,Ownership] 7 triangle1[Rubygem,User,Ownership,c] 1
 zV[c,rt,User,Ownership] triangle1[User,Ownership,Linkset,c] 1 triangle1[User,Ownership,Version,c] 1
 zV[c,rt,User,Ownership] triangle1[User,Ownership,Dependency,c] 1 triangle2[User,WebHook,Ownership,c] 1
 zV[c,rt,User,Ownership] triangle2[User,Subscription,Ownership,c] 1
 zV[r,lb,User,Ownership] choose1[User,Ownership] 1 axisVdifLB[r,User,Ownership] -40
 zV[r,lb,User,Ownership] DistAxisLB1[c,User,Ownership] 11.5 triangle1[User,WebHook,Ownership,r] 1
 zV[r,lb,User,Ownership] triangle1[User,Subscription,Ownership,r] 1 triangle2[Rubygem,User,Ownership,r] 1
 zV[r,lb,User,Ownership] triangle2[User,Ownership,Linkset,r] 1 triangle2[User,Ownership,Version,r] 1
 zV[r,lb,User,Ownership] triangle2[User,Ownership,Dependency,r] 1
 zV[c,lb,User,Ownership] choose1[User,Ownership] 1 axisVdifLB[c,User,Ownership] -45
 zV[c,lb,User,Ownership] DistAxisLB1[r,User,Ownership] 7 triangle1[User,WebHook,Ownership,c] 1
 zV[c,lb,User,Ownership] triangle1[User,Subscription,Ownership,c] 1 triangle2[Rubygem,User,Ownership,c] 1
 zV[c,lb,User,Ownership] triangle2[User,Ownership,Linkset,c] 1 triangle2[User,Ownership,Version,c] 1
 zV[c,lb,User,Ownership] triangle2[User,Ownership,Dependency,c] 1
 zV[r,rt,User,Linkset] choose1[User,Linkset] 1 axisVdifRT[r,User,Linkset] -38
 zV[r,rt,User,Linkset] triangle1[Rubygem,User,Linkset,r] 1 triangle1[User,Linkset,Version,r] 1
 zV[r,rt,User,Linkset] triangle1[User,Linkset,Dependency,r] 1 triangle2[User,WebHook,Linkset,r] 1
 zV[r,rt,User,Linkset] triangle2[User,Subscription,Linkset,r] 1 triangle2[User,Ownership,Linkset,r] 1
 zV[c,rt,User,Linkset] choose1[User,Linkset] 1 axisVdifRT[c,User,Linkset] -38
 zV[c,rt,User,Linkset] triangle1[Rubygem,User,Linkset,c] 1 triangle1[User,Linkset,Version,c] 1
 zV[c,rt,User,Linkset] triangle1[User,Linkset,Dependency,c] 1 triangle2[User,WebHook,Linkset,c] 1
 zV[c,rt,User,Linkset] triangle2[User,Subscription,Linkset,c] 1 triangle2[User,Ownership,Linkset,c] 1
 zV[r,lb,User,Linkset] choose1[User,Linkset] 1 axisVdifLB[r,User,Linkset] -40
 zV[r,lb,User,Linkset] triangle1[User,WebHook,Linkset,r] 1 triangle1[User,Subscription,Linkset,r] 1
 zV[r,lb,User,Linkset] triangle1[User,Ownership,Linkset,r] 1 triangle2[Rubygem,User,Linkset,r] 1
 zV[r,lb,User,Linkset] triangle2[User,Linkset,Version,r] 1 triangle2[User,Linkset,Dependency,r] 1
 zV[c,lb,User,Linkset] choose1[User,Linkset] 1 axisVdifLB[c,User,Linkset] -45
 zV[c,lb,User,Linkset] triangle1[User,WebHook,Linkset,c] 1 triangle1[User,Subscription,Linkset,c] 1
 zV[c,lb,User,Linkset] triangle1[User,Ownership,Linkset,c] 1 triangle2[Rubygem,User,Linkset,c] 1
 zV[c,lb,User,Linkset] triangle2[User,Linkset,Version,c] 1 triangle2[User,Linkset,Dependency,c] 1
 zV[r,rt,User,Version] choose1[User,Version] 1 axisVdifRT[r,User,Version] -40
 zV[r,rt,User,Version] triangle1[Rubygem,User,Version,r] 1 triangle1[User,Version,Dependency,r] 1
 zV[r,rt,User,Version] triangle2[User,WebHook,Version,r] 1 triangle2[User,Subscription,Version,r] 1
 zV[r,rt,User,Version] triangle2[User,Ownership,Version,r] 1 triangle2[User,Linkset,Version,r] 1
 zV[c,rt,User,Version] choose1[User,Version] 1 axisVdifRT[c,User,Version] -43
 zV[c,rt,User,Version] triangle1[Rubygem,User,Version,c] 1 triangle1[User,Version,Dependency,c] 1
 zV[c,rt,User,Version] triangle2[User,WebHook,Version,c] 1 triangle2[User,Subscription,Version,c] 1
 zV[c,rt,User,Version] triangle2[User,Ownership,Version,c] 1 triangle2[User,Linkset,Version,c] 1
 zV[r,lb,User,Version] choose1[User,Version] 1 axisVdifLB[r,User,Version] -40
 zV[r,lb,User,Version] triangle1[User,WebHook,Version,r] 1 triangle1[User,Subscription,Version,r] 1
 zV[r,lb,User,Version] triangle1[User,Ownership,Version,r] 1 triangle1[User,Linkset,Version,r] 1
 zV[r,lb,User,Version] triangle2[Rubygem,User,Version,r] 1 triangle2[User,Version,Dependency,r] 1
 zV[c,lb,User,Version] choose1[User,Version] 1 axisVdifLB[c,User,Version] -45
 zV[c,lb,User,Version] triangle1[User,WebHook,Version,c] 1 triangle1[User,Subscription,Version,c] 1
 zV[c,lb,User,Version] triangle1[User,Ownership,Version,c] 1 triangle1[User,Linkset,Version,c] 1
 zV[c,lb,User,Version] triangle2[Rubygem,User,Version,c] 1 triangle2[User,Version,Dependency,c] 1
 zV[r,rt,User,Dependency] choose1[User,Dependency] 1 axisVdifRT[r,User,Dependency] -36
 zV[r,rt,User,Dependency] triangle1[Rubygem,User,Dependency,r] 1 triangle2[User,WebHook,Dependency,r] 1
 zV[r,rt,User,Dependency] triangle2[User,Subscription,Dependency,r] 1 triangle2[User,Ownership,Dependency,r] 1
 zV[r,rt,User,Dependency] triangle2[User,Linkset,Dependency,r] 1 triangle2[User,Version,Dependency,r] 1
 zV[c,rt,User,Dependency] choose1[User,Dependency] 1 axisVdifRT[c,User,Dependency] -41
 zV[c,rt,User,Dependency] triangle1[Rubygem,User,Dependency,c] 1 triangle2[User,WebHook,Dependency,c] 1
 zV[c,rt,User,Dependency] triangle2[User,Subscription,Dependency,c] 1 triangle2[User,Ownership,Dependency,c] 1
 zV[c,rt,User,Dependency] triangle2[User,Linkset,Dependency,c] 1 triangle2[User,Version,Dependency,c] 1
 zV[r,lb,User,Dependency] choose1[User,Dependency] 1 axisVdifLB[r,User,Dependency] -40
 zV[r,lb,User,Dependency] triangle1[User,WebHook,Dependency,r] 1 triangle1[User,Subscription,Dependency,r] 1
 zV[r,lb,User,Dependency] triangle1[User,Ownership,Dependency,r] 1 triangle1[User,Linkset,Dependency,r] 1
 zV[r,lb,User,Dependency] triangle1[User,Version,Dependency,r] 1 triangle2[Rubygem,User,Dependency,r] 1
 zV[c,lb,User,Dependency] choose1[User,Dependency] 1 axisVdifLB[c,User,Dependency] -45
 zV[c,lb,User,Dependency] triangle1[User,WebHook,Dependency,c] 1 triangle1[User,Subscription,Dependency,c] 1
 zV[c,lb,User,Dependency] triangle1[User,Ownership,Dependency,c] 1 triangle1[User,Linkset,Dependency,c] 1
 zV[c,lb,User,Dependency] triangle1[User,Version,Dependency,c] 1 triangle2[Rubygem,User,Dependency,c] 1
 zV[r,rt,WebHook,Subscription] choose1[WebHook,Subscription] 1 axisVdifRT[r,WebHook,Subscription] -35
 zV[r,rt,WebHook,Subscription] triangle1[Rubygem,WebHook,Subscription,r] 1 triangle1[User,WebHook,Subscription,r] 1
 zV[r,rt,WebHook,Subscription] triangle1[WebHook,Subscription,Ownership,r] 1 triangle1[WebHook,Subscription,Linkset,r] 1
 zV[r,rt,WebHook,Subscription] triangle1[WebHook,Subscription,Version,r] 1 triangle1[WebHook,Subscription,Dependency,r] 1
 zV[c,rt,WebHook,Subscription] choose1[WebHook,Subscription] 1 axisVdifRT[c,WebHook,Subscription] -39
 zV[c,rt,WebHook,Subscription] triangle1[Rubygem,WebHook,Subscription,c] 1 triangle1[User,WebHook,Subscription,c] 1
 zV[c,rt,WebHook,Subscription] triangle1[WebHook,Subscription,Ownership,c] 1 triangle1[WebHook,Subscription,Linkset,c] 1
 zV[c,rt,WebHook,Subscription] triangle1[WebHook,Subscription,Version,c] 1 triangle1[WebHook,Subscription,Dependency,c] 1
 zV[r,lb,WebHook,Subscription] choose1[WebHook,Subscription] 1 axisVdifLB[r,WebHook,Subscription] -36
 zV[r,lb,WebHook,Subscription] triangle2[Rubygem,WebHook,Subscription,r] 1 triangle2[User,WebHook,Subscription,r] 1
 zV[r,lb,WebHook,Subscription] triangle2[WebHook,Subscription,Ownership,r] 1 triangle2[WebHook,Subscription,Linkset,r] 1
 zV[r,lb,WebHook,Subscription] triangle2[WebHook,Subscription,Version,r] 1 triangle2[WebHook,Subscription,Dependency,r] 1
 zV[c,lb,WebHook,Subscription] choose1[WebHook,Subscription] 1 axisVdifLB[c,WebHook,Subscription] -42
 zV[c,lb,WebHook,Subscription] triangle2[Rubygem,WebHook,Subscription,c] 1 triangle2[User,WebHook,Subscription,c] 1
 zV[c,lb,WebHook,Subscription] triangle2[WebHook,Subscription,Ownership,c] 1 triangle2[WebHook,Subscription,Linkset,c] 1
 zV[c,lb,WebHook,Subscription] triangle2[WebHook,Subscription,Version,c] 1 triangle2[WebHook,Subscription,Dependency,c] 1
 zV[r,rt,WebHook,Ownership] choose1[WebHook,Ownership] 1 axisVdifRT[r,WebHook,Ownership] -36
 zV[r,rt,WebHook,Ownership] triangle1[Rubygem,WebHook,Ownership,r] 1 triangle1[User,WebHook,Ownership,r] 1
 zV[r,rt,WebHook,Ownership] triangle1[WebHook,Ownership,Linkset,r] 1 triangle1[WebHook,Ownership,Version,r] 1
 zV[r,rt,WebHook,Ownership] triangle1[WebHook,Ownership,Dependency,r] 1 triangle2[WebHook,Subscription,Ownership,r] 1
 zV[c,rt,WebHook,Ownership] choose1[WebHook,Ownership] 1 axisVdifRT[c,WebHook,Ownership] -40
 zV[c,rt,WebHook,Ownership] triangle1[Rubygem,WebHook,Ownership,c] 1 triangle1[User,WebHook,Ownership,c] 1
 zV[c,rt,WebHook,Ownership] triangle1[WebHook,Ownership,Linkset,c] 1 triangle1[WebHook,Ownership,Version,c] 1
 zV[c,rt,WebHook,Ownership] triangle1[WebHook,Ownership,Dependency,c] 1 triangle2[WebHook,Subscription,Ownership,c] 1
 zV[r,lb,WebHook,Ownership] choose1[WebHook,Ownership] 1 axisVdifLB[r,WebHook,Ownership] -36
 zV[r,lb,WebHook,Ownership] triangle1[WebHook,Subscription,Ownership,r] 1 triangle2[Rubygem,WebHook,Ownership,r] 1
 zV[r,lb,WebHook,Ownership] triangle2[User,WebHook,Ownership,r] 1 triangle2[WebHook,Ownership,Linkset,r] 1
 zV[r,lb,WebHook,Ownership] triangle2[WebHook,Ownership,Version,r] 1 triangle2[WebHook,Ownership,Dependency,r] 1
 zV[c,lb,WebHook,Ownership] choose1[WebHook,Ownership] 1 axisVdifLB[c,WebHook,Ownership] -42
 zV[c,lb,WebHook,Ownership] triangle1[WebHook,Subscription,Ownership,c] 1 triangle2[Rubygem,WebHook,Ownership,c] 1
 zV[c,lb,WebHook,Ownership] triangle2[User,WebHook,Ownership,c] 1 triangle2[WebHook,Ownership,Linkset,c] 1
 zV[c,lb,WebHook,Ownership] triangle2[WebHook,Ownership,Version,c] 1 triangle2[WebHook,Ownership,Dependency,c] 1
 zV[r,rt,WebHook,Linkset] choose1[WebHook,Linkset] 1 axisVdifRT[r,WebHook,Linkset] -38
 zV[r,rt,WebHook,Linkset] triangle1[Rubygem,WebHook,Linkset,r] 1 triangle1[User,WebHook,Linkset,r] 1
 zV[r,rt,WebHook,Linkset] triangle1[WebHook,Linkset,Version,r] 1 triangle1[WebHook,Linkset,Dependency,r] 1
 zV[r,rt,WebHook,Linkset] triangle2[WebHook,Subscription,Linkset,r] 1 triangle2[WebHook,Ownership,Linkset,r] 1
 zV[c,rt,WebHook,Linkset] choose1[WebHook,Linkset] 1 axisVdifRT[c,WebHook,Linkset] -38
 zV[c,rt,WebHook,Linkset] triangle1[Rubygem,WebHook,Linkset,c] 1 triangle1[User,WebHook,Linkset,c] 1
 zV[c,rt,WebHook,Linkset] triangle1[WebHook,Linkset,Version,c] 1 triangle1[WebHook,Linkset,Dependency,c] 1
 zV[c,rt,WebHook,Linkset] triangle2[WebHook,Subscription,Linkset,c] 1 triangle2[WebHook,Ownership,Linkset,c] 1
 zV[r,lb,WebHook,Linkset] choose1[WebHook,Linkset] 1 axisVdifLB[r,WebHook,Linkset] -36
 zV[r,lb,WebHook,Linkset] triangle1[WebHook,Subscription,Linkset,r] 1 triangle1[WebHook,Ownership,Linkset,r] 1
 zV[r,lb,WebHook,Linkset] triangle2[Rubygem,WebHook,Linkset,r] 1 triangle2[User,WebHook,Linkset,r] 1
 zV[r,lb,WebHook,Linkset] triangle2[WebHook,Linkset,Version,r] 1 triangle2[WebHook,Linkset,Dependency,r] 1
 zV[c,lb,WebHook,Linkset] choose1[WebHook,Linkset] 1 axisVdifLB[c,WebHook,Linkset] -42
 zV[c,lb,WebHook,Linkset] triangle1[WebHook,Subscription,Linkset,c] 1 triangle1[WebHook,Ownership,Linkset,c] 1
 zV[c,lb,WebHook,Linkset] triangle2[Rubygem,WebHook,Linkset,c] 1 triangle2[User,WebHook,Linkset,c] 1
 zV[c,lb,WebHook,Linkset] triangle2[WebHook,Linkset,Version,c] 1 triangle2[WebHook,Linkset,Dependency,c] 1
 zV[r,rt,WebHook,Version] choose1[WebHook,Version] 1 axisVdifRT[r,WebHook,Version] -40
 zV[r,rt,WebHook,Version] triangle1[Rubygem,WebHook,Version,r] 1 triangle1[User,WebHook,Version,r] 1
 zV[r,rt,WebHook,Version] triangle1[WebHook,Version,Dependency,r] 1 triangle2[WebHook,Subscription,Version,r] 1
 zV[r,rt,WebHook,Version] triangle2[WebHook,Ownership,Version,r] 1 triangle2[WebHook,Linkset,Version,r] 1
 zV[c,rt,WebHook,Version] choose1[WebHook,Version] 1 axisVdifRT[c,WebHook,Version] -43
 zV[c,rt,WebHook,Version] triangle1[Rubygem,WebHook,Version,c] 1 triangle1[User,WebHook,Version,c] 1
 zV[c,rt,WebHook,Version] triangle1[WebHook,Version,Dependency,c] 1 triangle2[WebHook,Subscription,Version,c] 1
 zV[c,rt,WebHook,Version] triangle2[WebHook,Ownership,Version,c] 1 triangle2[WebHook,Linkset,Version,c] 1
 zV[r,lb,WebHook,Version] choose1[WebHook,Version] 1 axisVdifLB[r,WebHook,Version] -36
 zV[r,lb,WebHook,Version] triangle1[WebHook,Subscription,Version,r] 1 triangle1[WebHook,Ownership,Version,r] 1
 zV[r,lb,WebHook,Version] triangle1[WebHook,Linkset,Version,r] 1 triangle2[Rubygem,WebHook,Version,r] 1
 zV[r,lb,WebHook,Version] triangle2[User,WebHook,Version,r] 1 triangle2[WebHook,Version,Dependency,r] 1
 zV[c,lb,WebHook,Version] choose1[WebHook,Version] 1 axisVdifLB[c,WebHook,Version] -42
 zV[c,lb,WebHook,Version] triangle1[WebHook,Subscription,Version,c] 1 triangle1[WebHook,Ownership,Version,c] 1
 zV[c,lb,WebHook,Version] triangle1[WebHook,Linkset,Version,c] 1 triangle2[Rubygem,WebHook,Version,c] 1
 zV[c,lb,WebHook,Version] triangle2[User,WebHook,Version,c] 1 triangle2[WebHook,Version,Dependency,c] 1
 zV[r,rt,WebHook,Dependency] choose1[WebHook,Dependency] 1 axisVdifRT[r,WebHook,Dependency] -36
 zV[r,rt,WebHook,Dependency] triangle1[Rubygem,WebHook,Dependency,r] 1 triangle1[User,WebHook,Dependency,r] 1
 zV[r,rt,WebHook,Dependency] triangle2[WebHook,Subscription,Dependency,r] 1 triangle2[WebHook,Ownership,Dependency,r] 1
 zV[r,rt,WebHook,Dependency] triangle2[WebHook,Linkset,Dependency,r] 1 triangle2[WebHook,Version,Dependency,r] 1
 zV[c,rt,WebHook,Dependency] choose1[WebHook,Dependency] 1 axisVdifRT[c,WebHook,Dependency] -41
 zV[c,rt,WebHook,Dependency] triangle1[Rubygem,WebHook,Dependency,c] 1 triangle1[User,WebHook,Dependency,c] 1
 zV[c,rt,WebHook,Dependency] triangle2[WebHook,Subscription,Dependency,c] 1 triangle2[WebHook,Ownership,Dependency,c] 1
 zV[c,rt,WebHook,Dependency] triangle2[WebHook,Linkset,Dependency,c] 1 triangle2[WebHook,Version,Dependency,c] 1
 zV[r,lb,WebHook,Dependency] choose1[WebHook,Dependency] 1 axisVdifLB[r,WebHook,Dependency] -36
 zV[r,lb,WebHook,Dependency] triangle1[WebHook,Subscription,Dependency,r] 1 triangle1[WebHook,Ownership,Dependency,r] 1
 zV[r,lb,WebHook,Dependency] triangle1[WebHook,Linkset,Dependency,r] 1 triangle1[WebHook,Version,Dependency,r] 1
 zV[r,lb,WebHook,Dependency] triangle2[Rubygem,WebHook,Dependency,r] 1 triangle2[User,WebHook,Dependency,r] 1
 zV[c,lb,WebHook,Dependency] choose1[WebHook,Dependency] 1 axisVdifLB[c,WebHook,Dependency] -42
 zV[c,lb,WebHook,Dependency] triangle1[WebHook,Subscription,Dependency,c] 1 triangle1[WebHook,Ownership,Dependency,c] 1
 zV[c,lb,WebHook,Dependency] triangle1[WebHook,Linkset,Dependency,c] 1 triangle1[WebHook,Version,Dependency,c] 1
 zV[c,lb,WebHook,Dependency] triangle2[Rubygem,WebHook,Dependency,c] 1 triangle2[User,WebHook,Dependency,c] 1
 zV[r,rt,Subscription,Ownership] choose1[Subscription,Ownership] 1 axisVdifRT[r,Subscription,Ownership] -36
 zV[r,rt,Subscription,Ownership] triangle1[Rubygem,Subscription,Ownership,r] 1 triangle1[User,Subscription,Ownership,r] 1
 zV[r,rt,Subscription,Ownership] triangle1[WebHook,Subscription,Ownership,r] 1 triangle1[Subscription,Ownership,Linkset,r] 1
 zV[r,rt,Subscription,Ownership] triangle1[Subscription,Ownership,Version,r] 1 triangle1[Subscription,Ownership,Dependency,r] 1
 zV[c,rt,Subscription,Ownership] choose1[Subscription,Ownership] 1 axisVdifRT[c,Subscription,Ownership] -40
 zV[c,rt,Subscription,Ownership] triangle1[Rubygem,Subscription,Ownership,c] 1 triangle1[User,Subscription,Ownership,c] 1
 zV[c,rt,Subscription,Ownership] triangle1[WebHook,Subscription,Ownership,c] 1 triangle1[Subscription,Ownership,Linkset,c] 1
 zV[c,rt,Subscription,Ownership] triangle1[Subscription,Ownership,Version,c] 1 triangle1[Subscription,Ownership,Dependency,c] 1
 zV[r,lb,Subscription,Ownership] choose1[Subscription,Ownership] 1 axisVdifLB[r,Subscription,Ownership] -35
 zV[r,lb,Subscription,Ownership] triangle2[Rubygem,Subscription,Ownership,r] 1 triangle2[User,Subscription,Ownership,r] 1
 zV[r,lb,Subscription,Ownership] triangle2[WebHook,Subscription,Ownership,r] 1 triangle2[Subscription,Ownership,Linkset,r] 1
 zV[r,lb,Subscription,Ownership] triangle2[Subscription,Ownership,Version,r] 1 triangle2[Subscription,Ownership,Dependency,r] 1
 zV[c,lb,Subscription,Ownership] choose1[Subscription,Ownership] 1 axisVdifLB[c,Subscription,Ownership] -39
 zV[c,lb,Subscription,Ownership] triangle2[Rubygem,Subscription,Ownership,c] 1 triangle2[User,Subscription,Ownership,c] 1
 zV[c,lb,Subscription,Ownership] triangle2[WebHook,Subscription,Ownership,c] 1 triangle2[Subscription,Ownership,Linkset,c] 1
 zV[c,lb,Subscription,Ownership] triangle2[Subscription,Ownership,Version,c] 1 triangle2[Subscription,Ownership,Dependency,c] 1
 zV[r,rt,Subscription,Linkset] choose1[Subscription,Linkset] 1 axisVdifRT[r,Subscription,Linkset] -38
 zV[r,rt,Subscription,Linkset] triangle1[Rubygem,Subscription,Linkset,r] 1 triangle1[User,Subscription,Linkset,r] 1
 zV[r,rt,Subscription,Linkset] triangle1[WebHook,Subscription,Linkset,r] 1 triangle1[Subscription,Linkset,Version,r] 1
 zV[r,rt,Subscription,Linkset] triangle1[Subscription,Linkset,Dependency,r] 1 triangle2[Subscription,Ownership,Linkset,r] 1
 zV[c,rt,Subscription,Linkset] choose1[Subscription,Linkset] 1 axisVdifRT[c,Subscription,Linkset] -38
 zV[c,rt,Subscription,Linkset] triangle1[Rubygem,Subscription,Linkset,c] 1 triangle1[User,Subscription,Linkset,c] 1
 zV[c,rt,Subscription,Linkset] triangle1[WebHook,Subscription,Linkset,c] 1 triangle1[Subscription,Linkset,Version,c] 1
 zV[c,rt,Subscription,Linkset] triangle1[Subscription,Linkset,Dependency,c] 1 triangle2[Subscription,Ownership,Linkset,c] 1
 zV[r,lb,Subscription,Linkset] choose1[Subscription,Linkset] 1 axisVdifLB[r,Subscription,Linkset] -35
 zV[r,lb,Subscription,Linkset] triangle1[Subscription,Ownership,Linkset,r] 1 triangle2[Rubygem,Subscription,Linkset,r] 1
 zV[r,lb,Subscription,Linkset] triangle2[User,Subscription,Linkset,r] 1 triangle2[WebHook,Subscription,Linkset,r] 1
 zV[r,lb,Subscription,Linkset] triangle2[Subscription,Linkset,Version,r] 1 triangle2[Subscription,Linkset,Dependency,r] 1
 zV[c,lb,Subscription,Linkset] choose1[Subscription,Linkset] 1 axisVdifLB[c,Subscription,Linkset] -39
 zV[c,lb,Subscription,Linkset] triangle1[Subscription,Ownership,Linkset,c] 1 triangle2[Rubygem,Subscription,Linkset,c] 1
 zV[c,lb,Subscription,Linkset] triangle2[User,Subscription,Linkset,c] 1 triangle2[WebHook,Subscription,Linkset,c] 1
 zV[c,lb,Subscription,Linkset] triangle2[Subscription,Linkset,Version,c] 1 triangle2[Subscription,Linkset,Dependency,c] 1
 zV[r,rt,Subscription,Version] choose1[Subscription,Version] 1 axisVdifRT[r,Subscription,Version] -40
 zV[r,rt,Subscription,Version] triangle1[Rubygem,Subscription,Version,r] 1 triangle1[User,Subscription,Version,r] 1
 zV[r,rt,Subscription,Version] triangle1[WebHook,Subscription,Version,r] 1 triangle1[Subscription,Version,Dependency,r] 1
 zV[r,rt,Subscription,Version] triangle2[Subscription,Ownership,Version,r] 1 triangle2[Subscription,Linkset,Version,r] 1
 zV[c,rt,Subscription,Version] choose1[Subscription,Version] 1 axisVdifRT[c,Subscription,Version] -43
 zV[c,rt,Subscription,Version] triangle1[Rubygem,Subscription,Version,c] 1 triangle1[User,Subscription,Version,c] 1
 zV[c,rt,Subscription,Version] triangle1[WebHook,Subscription,Version,c] 1 triangle1[Subscription,Version,Dependency,c] 1
 zV[c,rt,Subscription,Version] triangle2[Subscription,Ownership,Version,c] 1 triangle2[Subscription,Linkset,Version,c] 1
 zV[r,lb,Subscription,Version] choose1[Subscription,Version] 1 axisVdifLB[r,Subscription,Version] -35
 zV[r,lb,Subscription,Version] triangle1[Subscription,Ownership,Version,r] 1 triangle1[Subscription,Linkset,Version,r] 1
 zV[r,lb,Subscription,Version] triangle2[Rubygem,Subscription,Version,r] 1 triangle2[User,Subscription,Version,r] 1
 zV[r,lb,Subscription,Version] triangle2[WebHook,Subscription,Version,r] 1 triangle2[Subscription,Version,Dependency,r] 1
 zV[c,lb,Subscription,Version] choose1[Subscription,Version] 1 axisVdifLB[c,Subscription,Version] -39
 zV[c,lb,Subscription,Version] triangle1[Subscription,Ownership,Version,c] 1 triangle1[Subscription,Linkset,Version,c] 1
 zV[c,lb,Subscription,Version] triangle2[Rubygem,Subscription,Version,c] 1 triangle2[User,Subscription,Version,c] 1
 zV[c,lb,Subscription,Version] triangle2[WebHook,Subscription,Version,c] 1 triangle2[Subscription,Version,Dependency,c] 1
 zV[r,rt,Subscription,Dependency] choose1[Subscription,Dependency] 1 axisVdifRT[r,Subscription,Dependency] -36
 zV[r,rt,Subscription,Dependency] triangle1[Rubygem,Subscription,Dependency,r] 1 triangle1[User,Subscription,Dependency,r] 1
 zV[r,rt,Subscription,Dependency] triangle1[WebHook,Subscription,Dependency,r] 1 triangle2[Subscription,Ownership,Dependency,r] 1
 zV[r,rt,Subscription,Dependency] triangle2[Subscription,Linkset,Dependency,r] 1 triangle2[Subscription,Version,Dependency,r] 1
 zV[c,rt,Subscription,Dependency] choose1[Subscription,Dependency] 1 axisVdifRT[c,Subscription,Dependency] -41
 zV[c,rt,Subscription,Dependency] triangle1[Rubygem,Subscription,Dependency,c] 1 triangle1[User,Subscription,Dependency,c] 1
 zV[c,rt,Subscription,Dependency] triangle1[WebHook,Subscription,Dependency,c] 1 triangle2[Subscription,Ownership,Dependency,c] 1
 zV[c,rt,Subscription,Dependency] triangle2[Subscription,Linkset,Dependency,c] 1 triangle2[Subscription,Version,Dependency,c] 1
 zV[r,lb,Subscription,Dependency] choose1[Subscription,Dependency] 1 axisVdifLB[r,Subscription,Dependency] -35
 zV[r,lb,Subscription,Dependency] triangle1[Subscription,Ownership,Dependency,r] 1 triangle1[Subscription,Linkset,Dependency,r] 1
 zV[r,lb,Subscription,Dependency] triangle1[Subscription,Version,Dependency,r] 1 triangle2[Rubygem,Subscription,Dependency,r] 1
 zV[r,lb,Subscription,Dependency] triangle2[User,Subscription,Dependency,r] 1 triangle2[WebHook,Subscription,Dependency,r] 1
 zV[c,lb,Subscription,Dependency] choose1[Subscription,Dependency] 1 axisVdifLB[c,Subscription,Dependency] -39
 zV[c,lb,Subscription,Dependency] triangle1[Subscription,Ownership,Dependency,c] 1 triangle1[Subscription,Linkset,Dependency,c] 1
 zV[c,lb,Subscription,Dependency] triangle1[Subscription,Version,Dependency,c] 1 triangle2[Rubygem,Subscription,Dependency,c] 1
 zV[c,lb,Subscription,Dependency] triangle2[User,Subscription,Dependency,c] 1 triangle2[WebHook,Subscription,Dependency,c] 1
 zV[r,rt,Ownership,Linkset] choose1[Ownership,Linkset] 1 axisVdifRT[r,Ownership,Linkset] -38
 zV[r,rt,Ownership,Linkset] triangle1[Rubygem,Ownership,Linkset,r] 1 triangle1[User,Ownership,Linkset,r] 1
 zV[r,rt,Ownership,Linkset] triangle1[WebHook,Ownership,Linkset,r] 1 triangle1[Subscription,Ownership,Linkset,r] 1
 zV[r,rt,Ownership,Linkset] triangle1[Ownership,Linkset,Version,r] 1 triangle1[Ownership,Linkset,Dependency,r] 1
 zV[c,rt,Ownership,Linkset] choose1[Ownership,Linkset] 1 axisVdifRT[c,Ownership,Linkset] -38
 zV[c,rt,Ownership,Linkset] triangle1[Rubygem,Ownership,Linkset,c] 1 triangle1[User,Ownership,Linkset,c] 1
 zV[c,rt,Ownership,Linkset] triangle1[WebHook,Ownership,Linkset,c] 1 triangle1[Subscription,Ownership,Linkset,c] 1
 zV[c,rt,Ownership,Linkset] triangle1[Ownership,Linkset,Version,c] 1 triangle1[Ownership,Linkset,Dependency,c] 1
 zV[r,lb,Ownership,Linkset] choose1[Ownership,Linkset] 1 axisVdifLB[r,Ownership,Linkset] -36
 zV[r,lb,Ownership,Linkset] triangle2[Rubygem,Ownership,Linkset,r] 1 triangle2[User,Ownership,Linkset,r] 1
 zV[r,lb,Ownership,Linkset] triangle2[WebHook,Ownership,Linkset,r] 1 triangle2[Subscription,Ownership,Linkset,r] 1
 zV[r,lb,Ownership,Linkset] triangle2[Ownership,Linkset,Version,r] 1 triangle2[Ownership,Linkset,Dependency,r] 1
 zV[c,lb,Ownership,Linkset] choose1[Ownership,Linkset] 1 axisVdifLB[c,Ownership,Linkset] -40
 zV[c,lb,Ownership,Linkset] triangle2[Rubygem,Ownership,Linkset,c] 1 triangle2[User,Ownership,Linkset,c] 1
 zV[c,lb,Ownership,Linkset] triangle2[WebHook,Ownership,Linkset,c] 1 triangle2[Subscription,Ownership,Linkset,c] 1
 zV[c,lb,Ownership,Linkset] triangle2[Ownership,Linkset,Version,c] 1 triangle2[Ownership,Linkset,Dependency,c] 1
 zV[r,rt,Ownership,Version] choose1[Ownership,Version] 1 axisVdifRT[r,Ownership,Version] -40
 zV[r,rt,Ownership,Version] triangle1[Rubygem,Ownership,Version,r] 1 triangle1[User,Ownership,Version,r] 1
 zV[r,rt,Ownership,Version] triangle1[WebHook,Ownership,Version,r] 1 triangle1[Subscription,Ownership,Version,r] 1
 zV[r,rt,Ownership,Version] triangle1[Ownership,Version,Dependency,r] 1 triangle2[Ownership,Linkset,Version,r] 1
 zV[c,rt,Ownership,Version] choose1[Ownership,Version] 1 axisVdifRT[c,Ownership,Version] -43
 zV[c,rt,Ownership,Version] triangle1[Rubygem,Ownership,Version,c] 1 triangle1[User,Ownership,Version,c] 1
 zV[c,rt,Ownership,Version] triangle1[WebHook,Ownership,Version,c] 1 triangle1[Subscription,Ownership,Version,c] 1
 zV[c,rt,Ownership,Version] triangle1[Ownership,Version,Dependency,c] 1 triangle2[Ownership,Linkset,Version,c] 1
 zV[r,lb,Ownership,Version] choose1[Ownership,Version] 1 axisVdifLB[r,Ownership,Version] -36
 zV[r,lb,Ownership,Version] triangle1[Ownership,Linkset,Version,r] 1 triangle2[Rubygem,Ownership,Version,r] 1
 zV[r,lb,Ownership,Version] triangle2[User,Ownership,Version,r] 1 triangle2[WebHook,Ownership,Version,r] 1
 zV[r,lb,Ownership,Version] triangle2[Subscription,Ownership,Version,r] 1 triangle2[Ownership,Version,Dependency,r] 1
 zV[c,lb,Ownership,Version] choose1[Ownership,Version] 1 axisVdifLB[c,Ownership,Version] -40
 zV[c,lb,Ownership,Version] triangle1[Ownership,Linkset,Version,c] 1 triangle2[Rubygem,Ownership,Version,c] 1
 zV[c,lb,Ownership,Version] triangle2[User,Ownership,Version,c] 1 triangle2[WebHook,Ownership,Version,c] 1
 zV[c,lb,Ownership,Version] triangle2[Subscription,Ownership,Version,c] 1 triangle2[Ownership,Version,Dependency,c] 1
 zV[r,rt,Ownership,Dependency] choose1[Ownership,Dependency] 1 axisVdifRT[r,Ownership,Dependency] -36
 zV[r,rt,Ownership,Dependency] triangle1[Rubygem,Ownership,Dependency,r] 1 triangle1[User,Ownership,Dependency,r] 1
 zV[r,rt,Ownership,Dependency] triangle1[WebHook,Ownership,Dependency,r] 1 triangle1[Subscription,Ownership,Dependency,r] 1
 zV[r,rt,Ownership,Dependency] triangle2[Ownership,Linkset,Dependency,r] 1 triangle2[Ownership,Version,Dependency,r] 1
 zV[c,rt,Ownership,Dependency] choose1[Ownership,Dependency] 1 axisVdifRT[c,Ownership,Dependency] -41
 zV[c,rt,Ownership,Dependency] triangle1[Rubygem,Ownership,Dependency,c] 1 triangle1[User,Ownership,Dependency,c] 1
 zV[c,rt,Ownership,Dependency] triangle1[WebHook,Ownership,Dependency,c] 1 triangle1[Subscription,Ownership,Dependency,c] 1
 zV[c,rt,Ownership,Dependency] triangle2[Ownership,Linkset,Dependency,c] 1 triangle2[Ownership,Version,Dependency,c] 1
 zV[r,lb,Ownership,Dependency] choose1[Ownership,Dependency] 1 axisVdifLB[r,Ownership,Dependency] -36
 zV[r,lb,Ownership,Dependency] triangle1[Ownership,Linkset,Dependency,r] 1 triangle1[Ownership,Version,Dependency,r] 1
 zV[r,lb,Ownership,Dependency] triangle2[Rubygem,Ownership,Dependency,r] 1 triangle2[User,Ownership,Dependency,r] 1
 zV[r,lb,Ownership,Dependency] triangle2[WebHook,Ownership,Dependency,r] 1 triangle2[Subscription,Ownership,Dependency,r] 1
 zV[c,lb,Ownership,Dependency] choose1[Ownership,Dependency] 1 axisVdifLB[c,Ownership,Dependency] -40
 zV[c,lb,Ownership,Dependency] triangle1[Ownership,Linkset,Dependency,c] 1 triangle1[Ownership,Version,Dependency,c] 1
 zV[c,lb,Ownership,Dependency] triangle2[Rubygem,Ownership,Dependency,c] 1 triangle2[User,Ownership,Dependency,c] 1
 zV[c,lb,Ownership,Dependency] triangle2[WebHook,Ownership,Dependency,c] 1 triangle2[Subscription,Ownership,Dependency,c] 1
 zV[r,rt,Linkset,Version] choose1[Linkset,Version] 1 axisVdifRT[r,Linkset,Version] -40
 zV[r,rt,Linkset,Version] triangle1[Rubygem,Linkset,Version,r] 1 triangle1[User,Linkset,Version,r] 1
 zV[r,rt,Linkset,Version] triangle1[WebHook,Linkset,Version,r] 1 triangle1[Subscription,Linkset,Version,r] 1
 zV[r,rt,Linkset,Version] triangle1[Ownership,Linkset,Version,r] 1 triangle1[Linkset,Version,Dependency,r] 1
 zV[c,rt,Linkset,Version] choose1[Linkset,Version] 1 axisVdifRT[c,Linkset,Version] -43
 zV[c,rt,Linkset,Version] triangle1[Rubygem,Linkset,Version,c] 1 triangle1[User,Linkset,Version,c] 1
 zV[c,rt,Linkset,Version] triangle1[WebHook,Linkset,Version,c] 1 triangle1[Subscription,Linkset,Version,c] 1
 zV[c,rt,Linkset,Version] triangle1[Ownership,Linkset,Version,c] 1 triangle1[Linkset,Version,Dependency,c] 1
 zV[r,lb,Linkset,Version] choose1[Linkset,Version] 1 axisVdifLB[r,Linkset,Version] -38
 zV[r,lb,Linkset,Version] triangle2[Rubygem,Linkset,Version,r] 1 triangle2[User,Linkset,Version,r] 1
 zV[r,lb,Linkset,Version] triangle2[WebHook,Linkset,Version,r] 1 triangle2[Subscription,Linkset,Version,r] 1
 zV[r,lb,Linkset,Version] triangle2[Ownership,Linkset,Version,r] 1 triangle2[Linkset,Version,Dependency,r] 1
 zV[c,lb,Linkset,Version] choose1[Linkset,Version] 1 axisVdifLB[c,Linkset,Version] -38
 zV[c,lb,Linkset,Version] triangle2[Rubygem,Linkset,Version,c] 1 triangle2[User,Linkset,Version,c] 1
 zV[c,lb,Linkset,Version] triangle2[WebHook,Linkset,Version,c] 1 triangle2[Subscription,Linkset,Version,c] 1
 zV[c,lb,Linkset,Version] triangle2[Ownership,Linkset,Version,c] 1 triangle2[Linkset,Version,Dependency,c] 1
 zV[r,rt,Linkset,Dependency] choose1[Linkset,Dependency] 1 axisVdifRT[r,Linkset,Dependency] -36
 zV[r,rt,Linkset,Dependency] triangle1[Rubygem,Linkset,Dependency,r] 1 triangle1[User,Linkset,Dependency,r] 1
 zV[r,rt,Linkset,Dependency] triangle1[WebHook,Linkset,Dependency,r] 1 triangle1[Subscription,Linkset,Dependency,r] 1
 zV[r,rt,Linkset,Dependency] triangle1[Ownership,Linkset,Dependency,r] 1 triangle2[Linkset,Version,Dependency,r] 1
 zV[c,rt,Linkset,Dependency] choose1[Linkset,Dependency] 1 axisVdifRT[c,Linkset,Dependency] -41
 zV[c,rt,Linkset,Dependency] triangle1[Rubygem,Linkset,Dependency,c] 1 triangle1[User,Linkset,Dependency,c] 1
 zV[c,rt,Linkset,Dependency] triangle1[WebHook,Linkset,Dependency,c] 1 triangle1[Subscription,Linkset,Dependency,c] 1
 zV[c,rt,Linkset,Dependency] triangle1[Ownership,Linkset,Dependency,c] 1 triangle2[Linkset,Version,Dependency,c] 1
 zV[r,lb,Linkset,Dependency] choose1[Linkset,Dependency] 1 axisVdifLB[r,Linkset,Dependency] -38
 zV[r,lb,Linkset,Dependency] triangle1[Linkset,Version,Dependency,r] 1 triangle2[Rubygem,Linkset,Dependency,r] 1
 zV[r,lb,Linkset,Dependency] triangle2[User,Linkset,Dependency,r] 1 triangle2[WebHook,Linkset,Dependency,r] 1
 zV[r,lb,Linkset,Dependency] triangle2[Subscription,Linkset,Dependency,r] 1 triangle2[Ownership,Linkset,Dependency,r] 1
 zV[c,lb,Linkset,Dependency] choose1[Linkset,Dependency] 1 axisVdifLB[c,Linkset,Dependency] -38
 zV[c,lb,Linkset,Dependency] triangle1[Linkset,Version,Dependency,c] 1 triangle2[Rubygem,Linkset,Dependency,c] 1
 zV[c,lb,Linkset,Dependency] triangle2[User,Linkset,Dependency,c] 1 triangle2[WebHook,Linkset,Dependency,c] 1
 zV[c,lb,Linkset,Dependency] triangle2[Subscription,Linkset,Dependency,c] 1 triangle2[Ownership,Linkset,Dependency,c] 1
 zV[r,rt,Version,Dependency] choose1[Version,Dependency] 1 axisVdifRT[r,Version,Dependency] -36
 zV[r,rt,Version,Dependency] DistAxisLB1[c,Version,Dependency] 11 triangle1[Rubygem,Version,Dependency,r] 1
 zV[r,rt,Version,Dependency] triangle1[User,Version,Dependency,r] 1 triangle1[WebHook,Version,Dependency,r] 1
 zV[r,rt,Version,Dependency] triangle1[Subscription,Version,Dependency,r] 1 triangle1[Ownership,Version,Dependency,r] 1
 zV[r,rt,Version,Dependency] triangle1[Linkset,Version,Dependency,r] 1
 zV[c,rt,Version,Dependency] choose1[Version,Dependency] 1 axisVdifRT[c,Version,Dependency] -41
 zV[c,rt,Version,Dependency] DistAxisLB1[r,Version,Dependency] 7 triangle1[Rubygem,Version,Dependency,c] 1
 zV[c,rt,Version,Dependency] triangle1[User,Version,Dependency,c] 1 triangle1[WebHook,Version,Dependency,c] 1
 zV[c,rt,Version,Dependency] triangle1[Subscription,Version,Dependency,c] 1 triangle1[Ownership,Version,Dependency,c] 1
 zV[c,rt,Version,Dependency] triangle1[Linkset,Version,Dependency,c] 1
 zV[r,lb,Version,Dependency] choose1[Version,Dependency] 1 axisVdifLB[r,Version,Dependency] -40
 zV[r,lb,Version,Dependency] DistAxisLB1[c,Version,Dependency] 11 triangle2[Rubygem,Version,Dependency,r] 1
 zV[r,lb,Version,Dependency] triangle2[User,Version,Dependency,r] 1 triangle2[WebHook,Version,Dependency,r] 1
 zV[r,lb,Version,Dependency] triangle2[Subscription,Version,Dependency,r] 1 triangle2[Ownership,Version,Dependency,r] 1
 zV[r,lb,Version,Dependency] triangle2[Linkset,Version,Dependency,r] 1
 zV[c,lb,Version,Dependency] choose1[Version,Dependency] 1 axisVdifLB[c,Version,Dependency] -43
 zV[c,lb,Version,Dependency] DistAxisLB1[r,Version,Dependency] 7 triangle2[Rubygem,Version,Dependency,c] 1
 zV[c,lb,Version,Dependency] triangle2[User,Version,Dependency,c] 1 triangle2[WebHook,Version,Dependency,c] 1
 zV[c,lb,Version,Dependency] triangle2[Subscription,Version,Dependency,c] 1 triangle2[Ownership,Version,Dependency,c] 1
 zV[c,lb,Version,Dependency] triangle2[Linkset,Version,Dependency,c] 1
 M0000004 'MARKER' 'INTEND'
RHS
 RHS1 choose1[Rubygem,User] 1 choose1[Rubygem,WebHook] 1
 RHS1 choose1[Rubygem,Subscription] 1 choose1[Rubygem,Ownership] 1
 RHS1 choose1[Rubygem,Linkset] 1 choose1[Rubygem,Version] 1
 RHS1 choose1[Rubygem,Dependency] 1 choose1[User,WebHook] 1
 RHS1 choose1[User,Subscription] 1 choose1[User,Ownership] 1
 RHS1 choose1[User,Linkset] 1 choose1[User,Version] 1
 RHS1 choose1[User,Dependency] 1 choose1[WebHook,Subscription] 1
 RHS1 choose1[WebHook,Ownership] 1 choose1[WebHook,Linkset] 1
 RHS1 choose1[WebHook,Version] 1 choose1[WebHook,Dependency] 1
 RHS1 choose1[Subscription,Ownership] 1 choose1[Subscription,Linkset] 1
 RHS1 choose1[Subscription,Version] 1 choose1[Subscription,Dependency] 1
 RHS1 choose1[Ownership,Linkset] 1 choose1[Ownership,Version] 1
 RHS1 choose1[Ownership,Dependency] 1 choose1[Linkset,Version] 1
 RHS1 choose1[Linkset,Dependency] 1 choose1[Version,Dependency] 1
 RHS1 centerDistAxis1[r,Rubygem] 14 centerDistAxis1[r,User] 12
 RHS1 centerDistAxis1[r,WebHook] 14 centerDistAxis1[r,Subscription] 14.5
 RHS1 centerDistAxis1[r,Ownership] 14 centerDistAxis1[r,Linkset] 13
 RHS1 centerDistAxis1[r,Version] 12 centerDistAxis1[r,Dependency] 14
 RHS1 centerDistAxis1[c,Rubygem] 12 centerDistAxis1[c,User] 9.5
 RHS1 centerDistAxis1[c,WebHook] 11 centerDistAxis1[c,Subscription] 12.5
 RHS1 centerDistAxis1[c,Ownership] 12 centerDistAxis1[c,Linkset] 13
 RHS1 centerDistAxis1[c,Version] 10.5 centerDistAxis1[c,Dependency] 11.5
 RHS1 centerDistAxis2[r,Rubygem] -14 centerDistAxis2[r,User] -12
 RHS1 centerDistAxis2[r,WebHook] -14 centerDistAxis2[r,Subscription] -14.5
 RHS1 centerDistAxis2[r,Ownership] -14 centerDistAxis2[r,Linkset] -13
 RHS1 centerDistAxis2[r,Version] -12 centerDistAxis2[r,Dependency] -14
 RHS1 centerDistAxis2[c,Rubygem] -12 centerDistAxis2[c,User] -9.5
 RHS1 centerDistAxis2[c,WebHook] -11 centerDistAxis2[c,Subscription] -12.5
 RHS1 centerDistAxis2[c,Ownership] -12 centerDistAxis2[c,Linkset] -13
 RHS1 centerDistAxis2[c,Version] -10.5 centerDistAxis2[c,Dependency] -11.5
 RHS1 axisVdifLB[r,Rubygem,User] -31 axisVdifLB[r,Rubygem,WebHook] -31
 RHS1 axisVdifLB[r,Rubygem,Subscription] -31 axisVdifLB[r,Rubygem,Ownership] -31
 RHS1 axisVdifLB[r,Rubygem,Linkset] -31 axisVdifLB[r,Rubygem,Version] -31
 RHS1 axisVdifLB[r,Rubygem,Dependency] -31 axisVdifLB[r,User,WebHook] -31
 RHS1 axisVdifLB[r,User,Subscription] -31 axisVdifLB[r,User,Ownership] -31
 RHS1 axisVdifLB[r,User,Linkset] -31 axisVdifLB[r,User,Version] -31
 RHS1 axisVdifLB[r,User,Dependency] -31 axisVdifLB[r,WebHook,Subscription] -31
 RHS1 axisVdifLB[r,WebHook,Ownership] -31 axisVdifLB[r,WebHook,Linkset] -31
 RHS1 axisVdifLB[r,WebHook,Version] -31 axisVdifLB[r,WebHook,Dependency] -31
 RHS1 axisVdifLB[r,Subscription,Ownership] -31 axisVdifLB[r,Subscription,Linkset] -31
 RHS1 axisVdifLB[r,Subscription,Version] -31 axisVdifLB[r,Subscription,Dependency] -31
 RHS1 axisVdifLB[r,Ownership,Linkset] -31 axisVdifLB[r,Ownership,Version] -31
 RHS1 axisVdifLB[r,Ownership,Dependency] -31 axisVdifLB[r,Linkset,Version] -31
 RHS1 axisVdifLB[r,Linkset,Dependency] -31 axisVdifLB[r,Version,Dependency] -31
 RHS1 axisVdifLB[c,Rubygem,User] -31 axisVdifLB[c,Rubygem,WebHook] -31
 RHS1 axisVdifLB[c,Rubygem,Subscription] -31 axisVdifLB[c,Rubygem,Ownership] -31
 RHS1 axisVdifLB[c,Rubygem,Linkset] -31 axisVdifLB[c,Rubygem,Version] -31
 RHS1 axisVdifLB[c,Rubygem,Dependency] -31 axisVdifLB[c,User,WebHook] -31
 RHS1 axisVdifLB[c,User,Subscription] -31 axisVdifLB[c,User,Ownership] -31
 RHS1 axisVdifLB[c,User,Linkset] -31 axisVdifLB[c,User,Version] -31
 RHS1 axisVdifLB[c,User,Dependency] -31 axisVdifLB[c,WebHook,Subscription] -31
 RHS1 axisVdifLB[c,WebHook,Ownership] -31 axisVdifLB[c,WebHook,Linkset] -31
 RHS1 axisVdifLB[c,WebHook,Version] -31 axisVdifLB[c,WebHook,Dependency] -31
 RHS1 axisVdifLB[c,Subscription,Ownership] -31 axisVdifLB[c,Subscription,Linkset] -31
 RHS1 axisVdifLB[c,Subscription,Version] -31 axisVdifLB[c,Subscription,Dependency] -31
 RHS1 axisVdifLB[c,Ownership,Linkset] -31 axisVdifLB[c,Ownership,Version] -31
 RHS1 axisVdifLB[c,Ownership,Dependency] -31 axisVdifLB[c,Linkset,Version] -31
 RHS1 axisVdifLB[c,Linkset,Dependency] -31 axisVdifLB[c,Version,Dependency] -31
 RHS1 axisVdifRT[r,Rubygem,User] -31 axisVdifRT[r,Rubygem,WebHook] -31
 RHS1 axisVdifRT[r,Rubygem,Subscription] -31 axisVdifRT[r,Rubygem,Ownership] -31
 RHS1 axisVdifRT[r,Rubygem,Linkset] -31 axisVdifRT[r,Rubygem,Version] -31
 RHS1 axisVdifRT[r,Rubygem,Dependency] -31 axisVdifRT[r,User,WebHook] -31
 RHS1 axisVdifRT[r,User,Subscription] -31 axisVdifRT[r,User,Ownership] -31
 RHS1 axisVdifRT[r,User,Linkset] -31 axisVdifRT[r,User,Version] -31
 RHS1 axisVdifRT[r,User,Dependency] -31 axisVdifRT[r,WebHook,Subscription] -31
 RHS1 axisVdifRT[r,WebHook,Ownership] -31 axisVdifRT[r,WebHook,Linkset] -31
 RHS1 axisVdifRT[r,WebHook,Version] -31 axisVdifRT[r,WebHook,Dependency] -31
 RHS1 axisVdifRT[r,Subscription,Ownership] -31 axisVdifRT[r,Subscription,Linkset] -31
 RHS1 axisVdifRT[r,Subscription,Version] -31 axisVdifRT[r,Subscription,Dependency] -31
 RHS1 axisVdifRT[r,Ownership,Linkset] -31 axisVdifRT[r,Ownership,Version] -31
 RHS1 axisVdifRT[r,Ownership,Dependency] -31 axisVdifRT[r,Linkset,Version] -31
 RHS1 axisVdifRT[r,Linkset,Dependency] -31 axisVdifRT[r,Version,Dependency] -31
 RHS1 axisVdifRT[c,Rubygem,User] -31 axisVdifRT[c,Rubygem,WebHook] -31
 RHS1 axisVdifRT[c,Rubygem,Subscription] -31 axisVdifRT[c,Rubygem,Ownership] -31
 RHS1 axisVdifRT[c,Rubygem,Linkset] -31 axisVdifRT[c,Rubygem,Version] -31
 RHS1 axisVdifRT[c,Rubygem,Dependency] -31 axisVdifRT[c,User,WebHook] -31
 RHS1 axisVdifRT[c,User,Subscription] -31 axisVdifRT[c,User,Ownership] -31
 RHS1 axisVdifRT[c,User,Linkset] -31 axisVdifRT[c,User,Version] -31
 RHS1 axisVdifRT[c,User,Dependency] -31 axisVdifRT[c,WebHook,Subscription] -31
 RHS1 axisVdifRT[c,WebHook,Ownership] -31 axisVdifRT[c,WebHook,Linkset] -31
 RHS1 axisVdifRT[c,WebHook,Version] -31 axisVdifRT[c,WebHook,Dependency] -31
 RHS1 axisVdifRT[c,Subscription,Ownership] -31 axisVdifRT[c,Subscription,Linkset] -31
 RHS1 axisVdifRT[c,Subscription,Version] -31 axisVdifRT[c,Subscription,Dependency] -31
 RHS1 axisVdifRT[c,Ownership,Linkset] -31 axisVdifRT[c,Ownership,Version] -31
 RHS1 axisVdifRT[c,Ownership,Dependency] -31 axisVdifRT[c,Linkset,Version] -31
 RHS1 axisVdifRT[c,Linkset,Dependency] -31 axisVdifRT[c,Version,Dependency] -31
 RHS1 compDistAxis1[r,Rubygem,User] -2 compDistAxis1[r,User,WebHook] 2
 RHS1 compDistAxis1[r,User,Subscription] 2.5 compDistAxis1[r,User,Ownership] 2
 RHS1 compDistAxis1[r,Rubygem,Subscription] 0.5 compDistAxis1[r,Rubygem,Linkset] -1
 RHS1 compDistAxis1[r,Rubygem,Version] -2 compDistAxis1[r,Version,Dependency] 2
 RHS1 compDistAxis1[c,Rubygem,User] -2.5 compDistAxis1[c,User,WebHook] 1.5
 RHS1 compDistAxis1[c,User,Subscription] 3 compDistAxis1[c,User,Ownership] 2.5
 RHS1 compDistAxis1[c,Rubygem,Subscription] 0.5 compDistAxis1[c,Rubygem,WebHook] -1
 RHS1 compDistAxis1[c,Rubygem,Linkset] 1 compDistAxis1[c,Rubygem,Version] -1.5
 RHS1 compDistAxis1[c,Rubygem,Dependency] -0.5 compDistAxis1[c,Version,Dependency] 1
 RHS1 compDistAxis2[r,Rubygem,User] 2 compDistAxis2[r,User,WebHook] -2
 RHS1 compDistAxis2[r,User,Subscription] -2.5 compDistAxis2[r,User,Ownership] -2
 RHS1 compDistAxis2[r,Rubygem,Subscription] -0.5 compDistAxis2[r,Rubygem,Linkset] 1
 RHS1 compDistAxis2[r,Rubygem,Version] 2 compDistAxis2[r,Version,Dependency] -2
 RHS1 compDistAxis2[c,Rubygem,User] 2.5 compDistAxis2[c,User,WebHook] -1.5
 RHS1 compDistAxis2[c,User,Subscription] -3 compDistAxis2[c,User,Ownership] -2.5
 RHS1 compDistAxis2[c,Rubygem,Subscription] -0.5 compDistAxis2[c,Rubygem,WebHook] 1
 RHS1 compDistAxis2[c,Rubygem,Linkset] -1 compDistAxis2[c,Rubygem,Version] 1.5
 RHS1 compDistAxis2[c,Rubygem,Dependency] 0.5 compDistAxis2[c,Version,Dependency] -1
 RHS1 DistSumLB[Rubygem,User] 7 DistSumLB[User,WebHook] 7
 RHS1 DistSumLB[User,Subscription] 6.5 DistSumLB[User,Ownership] 7
 RHS1 DistSumLB[Rubygem,Subscription] 4.5 DistSumLB[Rubygem,WebHook] 5
 RHS1 DistSumLB[Rubygem,Linkset] 6 DistSumLB[Rubygem,Ownership] 5
 RHS1 DistSumLB[Rubygem,Version] 7 DistSumLB[Rubygem,Dependency] 5
 RHS1 DistSumLB[Version,Dependency] 7 CenterDistSumLB 22
 RHS1 DistAxisLB1[r,Rubygem,User] 7 DistAxisLB1[r,User,WebHook] 7
 RHS1 DistAxisLB1[r,User,Subscription] 6.5 DistAxisLB1[r,User,Ownership] 7
 RHS1 DistAxisLB1[r,Rubygem,Subscription] 4.5 DistAxisLB1[r,Rubygem,WebHook] 5
 RHS1 DistAxisLB1[r,Rubygem,Linkset] 6 DistAxisLB1[r,Rubygem,Ownership] 5
 RHS1 DistAxisLB1[r,Rubygem,Version] 7 DistAxisLB1[r,Rubygem,Dependency] 5
 RHS1 DistAxisLB1[r,Version,Dependency] 7 DistAxisLB1[c,Rubygem,User] 11.5
 RHS1 DistAxisLB1[c,User,WebHook] 12.5 DistAxisLB1[c,User,Subscription] 11
 RHS1 DistAxisLB1[c,User,Ownership] 11.5 DistAxisLB1[c,Rubygem,Subscription] 8.5
 RHS1 DistAxisLB1[c,Rubygem,WebHook] 10 DistAxisLB1[c,Rubygem,Linkset] 8
 RHS1 DistAxisLB1[c,Rubygem,Ownership] 9 DistAxisLB1[c,Rubygem,Version] 10.5
 RHS1 DistAxisLB1[c,Rubygem,Dependency] 9.5 DistAxisLB1[c,Version,Dependency] 11
 RHS1 triangle1[Rubygem,User,WebHook,r] 2 triangle1[Rubygem,User,WebHook,c] 2
 RHS1 triangle1[Rubygem,User,Subscription,r] 2 triangle1[Rubygem,User,Subscription,c] 2
 RHS1 triangle1[Rubygem,User,Ownership,r] 2 triangle1[Rubygem,User,Ownership,c] 2
 RHS1 triangle1[Rubygem,User,Linkset,r] 2 triangle1[Rubygem,User,Linkset,c] 2
 RHS1 triangle1[Rubygem,User,Version,r] 2 triangle1[Rubygem,User,Version,c] 2
 RHS1 triangle1[Rubygem,User,Dependency,r] 2 triangle1[Rubygem,User,Dependency,c] 2
 RHS1 triangle1[Rubygem,WebHook,Subscription,r] 2 triangle1[Rubygem,WebHook,Subscription,c] 2
 RHS1 triangle1[Rubygem,WebHook,Ownership,r] 2 triangle1[Rubygem,WebHook,Ownership,c] 2
 RHS1 triangle1[Rubygem,WebHook,Linkset,r] 2 triangle1[Rubygem,WebHook,Linkset,c] 2
 RHS1 triangle1[Rubygem,WebHook,Version,r] 2 triangle1[Rubygem,WebHook,Version,c] 2
 RHS1 triangle1[Rubygem,WebHook,Dependency,r] 2 triangle1[Rubygem,WebHook,Dependency,c] 2
 RHS1 triangle1[Rubygem,Subscription,Ownership,r] 2 triangle1[Rubygem,Subscription,Ownership,c] 2
 RHS1 triangle1[Rubygem,Subscription,Linkset,r] 2 triangle1[Rubygem,Subscription,Linkset,c] 2
 RHS1 triangle1[Rubygem,Subscription,Version,r] 2 triangle1[Rubygem,Subscription,Version,c] 2
 RHS1 triangle1[Rubygem,Subscription,Dependency,r] 2 triangle1[Rubygem,Subscription,Dependency,c] 2
 RHS1 triangle1[Rubygem,Ownership,Linkset,r] 2 triangle1[Rubygem,Ownership,Linkset,c] 2
 RHS1 triangle1[Rubygem,Ownership,Version,r] 2 triangle1[Rubygem,Ownership,Version,c] 2
 RHS1 triangle1[Rubygem,Ownership,Dependency,r] 2 triangle1[Rubygem,Ownership,Dependency,c] 2
 RHS1 triangle1[Rubygem,Linkset,Version,r] 2 triangle1[Rubygem,Linkset,Version,c] 2
 RHS1 triangle1[Rubygem,Linkset,Dependency,r] 2 triangle1[Rubygem,Linkset,Dependency,c] 2
 RHS1 triangle1[Rubygem,Version,Dependency,r] 2 triangle1[Rubygem,Version,Dependency,c] 2
 RHS1 triangle1[User,WebHook,Subscription,r] 2 triangle1[User,WebHook,Subscription,c] 2
 RHS1 triangle1[User,WebHook,Ownership,r] 2 triangle1[User,WebHook,Ownership,c] 2
 RHS1 triangle1[User,WebHook,Linkset,r] 2 triangle1[User,WebHook,Linkset,c] 2
 RHS1 triangle1[User,WebHook,Version,r] 2 triangle1[User,WebHook,Version,c] 2
 RHS1 triangle1[User,WebHook,Dependency,r] 2 triangle1[User,WebHook,Dependency,c] 2
 RHS1 triangle1[User,Subscription,Ownership,r] 2 triangle1[User,Subscription,Ownership,c] 2
 RHS1 triangle1[User,Subscription,Linkset,r] 2 triangle1[User,Subscription,Linkset,c] 2
 RHS1 triangle1[User,Subscription,Version,r] 2 triangle1[User,Subscription,Version,c] 2
 RHS1 triangle1[User,Subscription,Dependency,r] 2 triangle1[User,Subscription,Dependency,c] 2
 RHS1 triangle1[User,Ownership,Linkset,r] 2 triangle1[User,Ownership,Linkset,c] 2
 RHS1 triangle1[User,Ownership,Version,r] 2 triangle1[User,Ownership,Version,c] 2
 RHS1 triangle1[User,Ownership,Dependency,r] 2 triangle1[User,Ownership,Dependency,c] 2
 RHS1 triangle1[User,Linkset,Version,r] 2 triangle1[User,Linkset,Version,c] 2
 RHS1 triangle1[User,Linkset,Dependency,r] 2 triangle1[User,Linkset,Dependency,c] 2
 RHS1 triangle1[User,Version,Dependency,r] 2 triangle1[User,Version,Dependency,c] 2
 RHS1 triangle1[WebHook,Subscription,Ownership,r] 2 triangle1[WebHook,Subscription,Ownership,c] 2
 RHS1 triangle1[WebHook,Subscription,Linkset,r] 2 triangle1[WebHook,Subscription,Linkset,c] 2
 RHS1 triangle1[WebHook,Subscription,Version,r] 2 triangle1[WebHook,Subscription,Version,c] 2
 RHS1 triangle1[WebHook,Subscription,Dependency,r] 2 triangle1[WebHook,Subscription,Dependency,c] 2
 RHS1 triangle1[WebHook,Ownership,Linkset,r] 2 triangle1[WebHook,Ownership,Linkset,c] 2
 RHS1 triangle1[WebHook,Ownership,Version,r] 2 triangle1[WebHook,Ownership,Version,c] 2
 RHS1 triangle1[WebHook,Ownership,Dependency,r] 2 triangle1[WebHook,Ownership,Dependency,c] 2
 RHS1 triangle1[WebHook,Linkset,Version,r] 2 triangle1[WebHook,Linkset,Version,c] 2
 RHS1 triangle1[WebHook,Linkset,Dependency,r] 2 triangle1[WebHook,Linkset,Dependency,c] 2
 RHS1 triangle1[WebHook,Version,Dependency,r] 2 triangle1[WebHook,Version,Dependency,c] 2
 RHS1 triangle1[Subscription,Ownership,Linkset,r] 2 triangle1[Subscription,Ownership,Linkset,c] 2
 RHS1 triangle1[Subscription,Ownership,Version,r] 2 triangle1[Subscription,Ownership,Version,c] 2
 RHS1 triangle1[Subscription,Ownership,Dependency,r] 2 triangle1[Subscription,Ownership,Dependency,c] 2
 RHS1 triangle1[Subscription,Linkset,Version,r] 2 triangle1[Subscription,Linkset,Version,c] 2
 RHS1 triangle1[Subscription,Linkset,Dependency,r] 2 triangle1[Subscription,Linkset,Dependency,c] 2
 RHS1 triangle1[Subscription,Version,Dependency,r] 2 triangle1[Subscription,Version,Dependency,c] 2
 RHS1 triangle1[Ownership,Linkset,Version,r] 2 triangle1[Ownership,Linkset,Version,c] 2
 RHS1 triangle1[Ownership,Linkset,Dependency,r] 2 triangle1[Ownership,Linkset,Dependency,c] 2
 RHS1 triangle1[Ownership,Version,Dependency,r] 2 triangle1[Ownership,Version,Dependency,c] 2
 RHS1 triangle1[Linkset,Version,Dependency,r] 2 triangle1[Linkset,Version,Dependency,c] 2
 RHS1 triangle2[Rubygem,User,WebHook,r] 2 triangle2[Rubygem,User,WebHook,c] 2
 RHS1 triangle2[Rubygem,User,Subscription,r] 2 triangle2[Rubygem,User,Subscription,c] 2
 RHS1 triangle2[Rubygem,User,Ownership,r] 2 triangle2[Rubygem,User,Ownership,c] 2
 RHS1 triangle2[Rubygem,User,Linkset,r] 2 triangle2[Rubygem,User,Linkset,c] 2
 RHS1 triangle2[Rubygem,User,Version,r] 2 triangle2[Rubygem,User,Version,c] 2
 RHS1 triangle2[Rubygem,User,Dependency,r] 2 triangle2[Rubygem,User,Dependency,c] 2
 RHS1 triangle2[Rubygem,WebHook,Subscription,r] 2 triangle2[Rubygem,WebHook,Subscription,c] 2
 RHS1 triangle2[Rubygem,WebHook,Ownership,r] 2 triangle2[Rubygem,WebHook,Ownership,c] 2
 RHS1 triangle2[Rubygem,WebHook,Linkset,r] 2 triangle2[Rubygem,WebHook,Linkset,c] 2
 RHS1 triangle2[Rubygem,WebHook,Version,r] 2 triangle2[Rubygem,WebHook,Version,c] 2
 RHS1 triangle2[Rubygem,WebHook,Dependency,r] 2 triangle2[Rubygem,WebHook,Dependency,c] 2
 RHS1 triangle2[Rubygem,Subscription,Ownership,r] 2 triangle2[Rubygem,Subscription,Ownership,c] 2
 RHS1 triangle2[Rubygem,Subscription,Linkset,r] 2 triangle2[Rubygem,Subscription,Linkset,c] 2
 RHS1 triangle2[Rubygem,Subscription,Version,r] 2 triangle2[Rubygem,Subscription,Version,c] 2
 RHS1 triangle2[Rubygem,Subscription,Dependency,r] 2 triangle2[Rubygem,Subscription,Dependency,c] 2
 RHS1 triangle2[Rubygem,Ownership,Linkset,r] 2 triangle2[Rubygem,Ownership,Linkset,c] 2
 RHS1 triangle2[Rubygem,Ownership,Version,r] 2 triangle2[Rubygem,Ownership,Version,c] 2
 RHS1 triangle2[Rubygem,Ownership,Dependency,r] 2 triangle2[Rubygem,Ownership,Dependency,c] 2
 RHS1 triangle2[Rubygem,Linkset,Version,r] 2 triangle2[Rubygem,Linkset,Version,c] 2
 RHS1 triangle2[Rubygem,Linkset,Dependency,r] 2 triangle2[Rubygem,Linkset,Dependency,c] 2
 RHS1 triangle2[Rubygem,Version,Dependency,r] 2 triangle2[Rubygem,Version,Dependency,c] 2
 RHS1 triangle2[User,WebHook,Subscription,r] 2 triangle2[User,WebHook,Subscription,c] 2
 RHS1 triangle2[User,WebHook,Ownership,r] 2 triangle2[User,WebHook,Ownership,c] 2
 RHS1 triangle2[User,WebHook,Linkset,r] 2 triangle2[User,WebHook,Linkset,c] 2
 RHS1 triangle2[User,WebHook,Version,r] 2 triangle2[User,WebHook,Version,c] 2
 RHS1 triangle2[User,WebHook,Dependency,r] 2 triangle2[User,WebHook,Dependency,c] 2
 RHS1 triangle2[User,Subscription,Ownership,r] 2 triangle2[User,Subscription,Ownership,c] 2
 RHS1 triangle2[User,Subscription,Linkset,r] 2 triangle2[User,Subscription,Linkset,c] 2
 RHS1 triangle2[User,Subscription,Version,r] 2 triangle2[User,Subscription,Version,c] 2
 RHS1 triangle2[User,Subscription,Dependency,r] 2 triangle2[User,Subscription,Dependency,c] 2
 RHS1 triangle2[User,Ownership,Linkset,r] 2 triangle2[User,Ownership,Linkset,c] 2
 RHS1 triangle2[User,Ownership,Version,r] 2 triangle2[User,Ownership,Version,c] 2
 RHS1 triangle2[User,Ownership,Dependency,r] 2 triangle2[User,Ownership,Dependency,c] 2
 RHS1 triangle2[User,Linkset,Version,r] 2 triangle2[User,Linkset,Version,c] 2
 RHS1 triangle2[User,Linkset,Dependency,r] 2 triangle2[User,Linkset,Dependency,c] 2
 RHS1 triangle2[User,Version,Dependency,r] 2 triangle2[User,Version,Dependency,c] 2
 RHS1 triangle2[WebHook,Subscription,Ownership,r] 2 triangle2[WebHook,Subscription,Ownership,c] 2
 RHS1 triangle2[WebHook,Subscription,Linkset,r] 2 triangle2[WebHook,Subscription,Linkset,c] 2
 RHS1 triangle2[WebHook,Subscription,Version,r] 2 triangle2[WebHook,Subscription,Version,c] 2
 RHS1 triangle2[WebHook,Subscription,Dependency,r] 2 triangle2[WebHook,Subscription,Dependency,c] 2
 RHS1 triangle2[WebHook,Ownership,Linkset,r] 2 triangle2[WebHook,Ownership,Linkset,c] 2
 RHS1 triangle2[WebHook,Ownership,Version,r] 2 triangle2[WebHook,Ownership,Version,c] 2
 RHS1 triangle2[WebHook,Ownership,Dependency,r] 2 triangle2[WebHook,Ownership,Dependency,c] 2
 RHS1 triangle2[WebHook,Linkset,Version,r] 2 triangle2[WebHook,Linkset,Version,c] 2
 RHS1 triangle2[WebHook,Linkset,Dependency,r] 2 triangle2[WebHook,Linkset,Dependency,c] 2
 RHS1 triangle2[WebHook,Version,Dependency,r] 2 triangle2[WebHook,Version,Dependency,c] 2
 RHS1 triangle2[Subscription,Ownership,Linkset,r] 2 triangle2[Subscription,Ownership,Linkset,c] 2
 RHS1 triangle2[Subscription,Ownership,Version,r] 2 triangle2[Subscription,Ownership,Version,c] 2
 RHS1 triangle2[Subscription,Ownership,Dependency,r] 2 triangle2[Subscription,Ownership,Dependency,c] 2
 RHS1 triangle2[Subscription,Linkset,Version,r] 2 triangle2[Subscription,Linkset,Version,c] 2
 RHS1 triangle2[Subscription,Linkset,Dependency,r] 2 triangle2[Subscription,Linkset,Dependency,c] 2
 RHS1 triangle2[Subscription,Version,Dependency,r] 2 triangle2[Subscription,Version,Dependency,c] 2
 RHS1 triangle2[Ownership,Linkset,Version,r] 2 triangle2[Ownership,Linkset,Version,c] 2
 RHS1 triangle2[Ownership,Linkset,Dependency,r] 2 triangle2[Ownership,Linkset,Dependency,c] 2
 RHS1 triangle2[Ownership,Version,Dependency,r] 2 triangle2[Ownership,Version,Dependency,c] 2
 RHS1 triangle2[Linkset,Version,Dependency,r] 2 triangle2[Linkset,Version,Dependency,c] 2
BOUNDS
 LO BND1 x[r,Rubygem] 1
 UP BND1 x[r,Rubygem] 27
 LO BND1 x[r,User] 1
 UP BND1 x[r,User] 23
 LO BND1 x[r,WebHook] 1
 UP BND1 x[r,WebHook] 27
 LO BND1 x[r,Subscription] 1
 UP BND1 x[r,Subscription] 28
 LO BND1 x[r,Ownership] 1
 UP BND1 x[r,Ownership] 27
 LO BND1 x[r,Linkset] 1
 UP BND1 x[r,Linkset] 25
 LO BND1 x[r,Version] 1
 UP BND1 x[r,Version] 23
 LO BND1 x[r,Dependency] 1
 UP BND1 x[r,Dependency] 27
 LO BND1 x[c,Rubygem] 1
 UP BND1 x[c,Rubygem] 23
 LO BND1 x[c,User] 1
 UP BND1 x[c,User] 18
 LO BND1 x[c,WebHook] 1
 UP BND1 x[c,WebHook] 21
 LO BND1 x[c,Subscription] 1
 UP BND1 x[c,Subscription] 24
 LO BND1 x[c,Ownership] 1
 UP BND1 x[c,Ownership] 23
 LO BND1 x[c,Linkset] 1
 UP BND1 x[c,Linkset] 25
 LO BND1 x[c,Version] 1
 UP BND1 x[c,Version] 20
 LO BND1 x[c,Dependency] 1
 UP BND1 x[c,Dependency] 22
 FR BND1 center_dist[r,Rubygem]
 FR BND1 center_dist[r,User]
 FR BND1 center_dist[r,WebHook]
 FR BND1 center_dist[r,Subscription]
 FR BND1 center_dist[r,Ownership]
 FR BND1 center_dist[r,Linkset]
 FR BND1 center_dist[r,Version]
 FR BND1 center_dist[r,Dependency]
 FR BND1 center_dist[c,Rubygem]
 FR BND1 center_dist[c,User]
 FR BND1 center_dist[c,WebHook]
 FR BND1 center_dist[c,Subscription]
 FR BND1 center_dist[c,Ownership]
 FR BND1 center_dist[c,Linkset]
 FR BND1 center_dist[c,Version]
 FR BND1 center_dist[c,Dependency]
 UP BND1 dist[r,Rubygem,User] 33
 UP BND1 dist[r,User,WebHook] 33
 UP BND1 dist[r,User,Subscription] 33.5
 UP BND1 dist[r,User,Ownership] 33
 UP BND1 dist[r,Rubygem,Subscription] 31.5
 UP BND1 dist[r,Rubygem,WebHook] 31
 UP BND1 dist[r,Rubygem,Linkset] 32
 UP BND1 dist[r,Rubygem,Ownership] 31
 UP BND1 dist[r,Rubygem,Version] 33
 UP BND1 dist[r,Rubygem,Dependency] 31
 UP BND1 dist[r,Version,Dependency] 33
 UP BND1 dist[c,Rubygem,User] 33.5
 UP BND1 dist[c,User,WebHook] 32.5
 UP BND1 dist[c,User,Subscription] 34
 UP BND1 dist[c,User,Ownership] 33.5
 UP BND1 dist[c,Rubygem,Subscription] 31.5
 UP BND1 dist[c,Rubygem,WebHook] 32
 UP BND1 dist[c,Rubygem,Linkset] 32
 UP BND1 dist[c,Rubygem,Ownership] 31
 UP BND1 dist[c,Rubygem,Version] 32.5
 UP BND1 dist[c,Rubygem,Dependency] 31.5
 UP BND1 dist[c,Version,Dependency] 32
 UP BND1 zV[r,rt,Rubygem,User] 1
 UP BND1 zV[c,rt,Rubygem,User] 1
 UP BND1 zV[r,lb,Rubygem,User] 1
 UP BND1 zV[c,lb,Rubygem,User] 1
 UP BND1 zV[r,rt,Rubygem,WebHook] 1
 UP BND1 zV[c,rt,Rubygem,WebHook] 1
 UP BND1 zV[r,lb,Rubygem,WebHook] 1
 UP BND1 zV[c,lb,Rubygem,WebHook] 1
 UP BND1 zV[r,rt,Rubygem,Subscription] 1
 UP BND1 zV[c,rt,Rubygem,Subscription] 1
 UP BND1 zV[r,lb,Rubygem,Subscription] 1
 UP BND1 zV[c,lb,Rubygem,Subscription] 1
 UP BND1 zV[r,rt,Rubygem,Ownership] 1
 UP BND1 zV[c,rt,Rubygem,Ownership] 1
 UP BND1 zV[r,lb,Rubygem,Ownership] 1
 UP BND1 zV[c,lb,Rubygem,Ownership] 1
 UP BND1 zV[r,rt,Rubygem,Linkset] 1
 UP BND1 zV[c,rt,Rubygem,Linkset] 1
 UP BND1 zV[r,lb,Rubygem,Linkset] 1
 UP BND1 zV[c,lb,Rubygem,Linkset] 1
 UP BND1 zV[r,rt,Rubygem,Version] 1
 UP BND1 zV[c,rt,Rubygem,Version] 1
 UP BND1 zV[r,lb,Rubygem,Version] 1
 UP BND1 zV[c,lb,Rubygem,Version] 1
 UP BND1 zV[r,rt,Rubygem,Dependency] 1
 UP BND1 zV[c,rt,Rubygem,Dependency] 1
 UP BND1 zV[r,lb,Rubygem,Dependency] 1
 UP BND1 zV[c,lb,Rubygem,Dependency] 1
 UP BND1 zV[r,rt,User,WebHook] 1
 UP BND1 zV[c,rt,User,WebHook] 1
 UP BND1 zV[r,lb,User,WebHook] 1
 UP BND1 zV[c,lb,User,WebHook] 1
 UP BND1 zV[r,rt,User,Subscription] 1
 UP BND1 zV[c,rt,User,Subscription] 1
 UP BND1 zV[r,lb,User,Subscription] 1
 UP BND1 zV[c,lb,User,Subscription] 1
 UP BND1 zV[r,rt,User,Ownership] 1
 UP BND1 zV[c,rt,User,Ownership] 1
 UP BND1 zV[r,lb,User,Ownership] 1
 UP BND1 zV[c,lb,User,Ownership] 1
 UP BND1 zV[r,rt,User,Linkset] 1
 UP BND1 zV[c,rt,User,Linkset] 1
 UP BND1 zV[r,lb,User,Linkset] 1
 UP BND1 zV[c,lb,User,Linkset] 1
 UP BND1 zV[r,rt,User,Version] 1
 UP BND1 zV[c,rt,User,Version] 1
 UP BND1 zV[r,lb,User,Version] 1
 UP BND1 zV[c,lb,User,Version] 1
 UP BND1 zV[r,rt,User,Dependency] 1
 UP BND1 zV[c,rt,User,Dependency] 1
 UP BND1 zV[r,lb,User,Dependency] 1
 UP BND1 zV[c,lb,User,Dependency] 1
 UP BND1 zV[r,rt,WebHook,Subscription] 1
 UP BND1 zV[c,rt,WebHook,Subscription] 1
 UP BND1 zV[r,lb,WebHook,Subscription] 1
 UP BND1 zV[c,lb,WebHook,Subscription] 1
 UP BND1 zV[r,rt,WebHook,Ownership] 1
 UP BND1 zV[c,rt,WebHook,Ownership] 1
 UP BND1 zV[r,lb,WebHook,Ownership] 1
 UP BND1 zV[c,lb,WebHook,Ownership] 1
 UP BND1 zV[r,rt,WebHook,Linkset] 1
 UP BND1 zV[c,rt,WebHook,Linkset] 1
 UP BND1 zV[r,lb,WebHook,Linkset] 1
 UP BND1 zV[c,lb,WebHook,Linkset] 1
 UP BND1 zV[r,rt,WebHook,Version] 1
 UP BND1 zV[c,rt,WebHook,Version] 1
 UP BND1 zV[r,lb,WebHook,Version] 1
 UP BND1 zV[c,lb,WebHook,Version] 1
 UP BND1 zV[r,rt,WebHook,Dependency] 1
 UP BND1 zV[c,rt,WebHook,Dependency] 1
 UP BND1 zV[r,lb,WebHook,Dependency] 1
 UP BND1 zV[c,lb,WebHook,Dependency] 1
 UP BND1 zV[r,rt,Subscription,Ownership] 1
 UP BND1 zV[c,rt,Subscription,Ownership] 1
 UP BND1 zV[r,lb,Subscription,Ownership] 1
 UP BND1 zV[c,lb,Subscription,Ownership] 1
 UP BND1 zV[r,rt,Subscription,Linkset] 1
 UP BND1 zV[c,rt,Subscription,Linkset] 1
 UP BND1 zV[r,lb,Subscription,Linkset] 1
 UP BND1 zV[c,lb,Subscription,Linkset] 1
 UP BND1 zV[r,rt,Subscription,Version] 1
 UP BND1 zV[c,rt,Subscription,Version] 1
 UP BND1 zV[r,lb,Subscription,Version] 1
 UP BND1 zV[c,lb,Subscription,Version] 1
 UP BND1 zV[r,rt,Subscription,Dependency] 1
 UP BND1 zV[c,rt,Subscription,Dependency] 1
 UP BND1 zV[r,lb,Subscription,Dependency] 1
 UP BND1 zV[c,lb,Subscription,Dependency] 1
 UP BND1 zV[r,rt,Ownership,Linkset] 1
 UP BND1 zV[c,rt,Ownership,Linkset] 1
 UP BND1 zV[r,lb,Ownership,Linkset] 1
 UP BND1 zV[c,lb,Ownership,Linkset] 1
 UP BND1 zV[r,rt,Ownership,Version] 1
 UP BND1 zV[c,rt,Ownership,Version] 1
 UP BND1 zV[r,lb,Ownership,Version] 1
 UP BND1 zV[c,lb,Ownership,Version] 1
 UP BND1 zV[r,rt,Ownership,Dependency] 1
 UP BND1 zV[c,rt,Ownership,Dependency] 1
 UP BND1 zV[r,lb,Ownership,Dependency] 1
 UP BND1 zV[c,lb,Ownership,Dependency] 1
 UP BND1 zV[r,rt,Linkset,Version] 1
 UP BND1 zV[c,rt,Linkset,Version] 1
 UP BND1 zV[r,lb,Linkset,Version] 1
 UP BND1 zV[c,lb,Linkset,Version] 1
 UP BND1 zV[r,rt,Linkset,Dependency] 1
 UP BND1 zV[c,rt,Linkset,Dependency] 1
 UP BND1 zV[r,lb,Linkset,Dependency] 1
 UP BND1 zV[c,lb,Linkset,Dependency] 1
 UP BND1 zV[r,rt,Version,Dependency] 1
 UP BND1 zV[c,rt,Version,Dependency] 1
 UP BND1 zV[r,lb,Version,Dependency] 1
 UP BND1 zV[c,lb,Version,Dependency] 1
ENDATA
