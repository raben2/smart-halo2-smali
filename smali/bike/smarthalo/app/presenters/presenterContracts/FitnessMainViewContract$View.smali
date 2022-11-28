.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$View;
.super Ljava/lang/Object;
.source "FitnessMainViewContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract givePastRidesToChildView(Ljava/util/List;Lbike/smarthalo/app/models/SHPastRide;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onFetchingNewRides()V
.end method

.method public abstract setCurrentTabTitle(Z)V
.end method
