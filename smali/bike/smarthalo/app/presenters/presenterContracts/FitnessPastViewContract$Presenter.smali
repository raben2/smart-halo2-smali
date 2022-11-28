.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract$Presenter;
.super Ljava/lang/Object;
.source "FitnessPastViewContract.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/BasePresenterContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract prepareRideDays(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showDailyRides(Lbike/smarthalo/app/models/RideDay;Z)V
.end method
