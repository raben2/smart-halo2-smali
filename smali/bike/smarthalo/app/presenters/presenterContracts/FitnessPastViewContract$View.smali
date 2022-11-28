.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract$View;
.super Ljava/lang/Object;
.source "FitnessPastViewContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract preparePastRidesVisuals(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/RideDay;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract updateOnNewPastRides(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;)V"
        }
    .end annotation
.end method
