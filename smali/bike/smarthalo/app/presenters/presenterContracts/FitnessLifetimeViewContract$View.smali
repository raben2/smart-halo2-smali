.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract$View;
.super Ljava/lang/Object;
.source "FitnessLifetimeViewContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract updateLifetimeView(Lbike/smarthalo/app/models/LifetimeMetrics;Z)V
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
