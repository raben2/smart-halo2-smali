.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$View;
.super Ljava/lang/Object;
.source "FitnessCurrentViewContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract onActiveRideUpdated(Lbike/smarthalo/app/models/SHRide;Z)V
.end method

.method public abstract onGoalUpdated(Lbike/smarthalo/app/models/SHGoal;Z)V
.end method

.method public abstract updateCurrentRideWithLastRide(Lbike/smarthalo/app/models/SHPastRide;)V
.end method

.method public abstract updateGoalAndRide(Lbike/smarthalo/app/models/SHRide;Lbike/smarthalo/app/models/SHGoal;Z)V
.end method
