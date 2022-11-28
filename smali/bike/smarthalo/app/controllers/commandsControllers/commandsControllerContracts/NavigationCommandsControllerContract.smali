.class public interface abstract Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;
.super Ljava/lang/Object;
.source "NavigationCommandsControllerContract.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/SHDisposable;


# virtual methods
.method public abstract navAngleQuick(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/navigation/models/NavAngleTurns;ILbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/navigation/models/NavAngleTurns;ILjava/lang/String;Z)V
.end method

.method public abstract nav_compass(II)V
.end method

.method public abstract nav_compass_off()V
.end method

.method public abstract nav_live_direction(Lbike/smarthalo/sdk/models/SHColour;I)V
.end method

.method public abstract nav_pointer(Lbike/smarthalo/sdk/models/SHColour;IILjava/lang/String;)V
.end method

.method public abstract nav_pointer_off()V
.end method

.method public abstract nav_pointer_standby(IILjava/lang/String;)V
.end method

.method public abstract nav_roundabout(Ljava/util/ArrayList;IZIILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;IZII",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onDestinationReached(Ljava/lang/String;)V
.end method

.method public abstract playNavAnimation(Lbike/smarthalo/sdk/models/SHColour;IIILjava/lang/String;)V
.end method

.method public abstract reroute()V
.end method

.method public abstract showPointerIntro(Lbike/smarthalo/sdk/models/SHColour;II)V
.end method

.method public abstract showStandbyPointerIntro(Lbike/smarthalo/sdk/models/SHColour;I)V
.end method

.method public abstract toggleNavBreathing(Z)V
.end method

.method public abstract turnOffNavAnimations()V
.end method
