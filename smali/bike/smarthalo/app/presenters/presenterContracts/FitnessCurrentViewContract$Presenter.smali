.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;
.super Ljava/lang/Object;
.source "FitnessCurrentViewContract.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/BasePresenterContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract addGoal(ID)Lbike/smarthalo/app/models/SHGoal;
.end method

.method public abstract deleteGoal()V
.end method

.method public abstract getCurrentGoalType()I
.end method

.method public abstract hasOngoingGoal()Z
.end method

.method public abstract isSpeedGoalSupported()Z
.end method

.method public abstract isUsingMetric()Z
.end method

.method public abstract updateCurrentRide(Lbike/smarthalo/app/models/SHPastRide;)V
.end method
