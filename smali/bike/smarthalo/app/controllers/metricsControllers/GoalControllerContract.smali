.class public interface abstract Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;
.super Ljava/lang/Object;
.source "GoalControllerContract.kt"

# interfaces
.implements Lbike/smarthalo/app/controllers/SHDisposable;
.implements Lbike/smarthalo/app/controllers/metricsControllers/ActiveGoalContract;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u00012\u00020\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H&J\u0008\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tH&J\u0016\u0010\n\u001a\u00020\u00062\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH&J\u0008\u0010\u000e\u001a\u00020\u0006H&J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011H&\u00a8\u0006\u0012"
    }
    d2 = {
        "Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;",
        "Lbike/smarthalo/app/controllers/SHDisposable;",
        "Lbike/smarthalo/app/controllers/metricsControllers/ActiveGoalContract;",
        "getCurrentGoal",
        "Lbike/smarthalo/app/models/SHGoal;",
        "onGoalChanged",
        "",
        "onRideFinished",
        "trimmedRideData",
        "Lbike/smarthalo/app/models/fitness/TrimmedRideData;",
        "setTrackingStateSource",
        "trackingStateSource",
        "Lio/reactivex/Flowable;",
        "Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;",
        "showCurrentGoalAnimation",
        "updateGoalMetrics",
        "currentRide",
        "Lbike/smarthalo/app/models/SHRide;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract getCurrentGoal()Lbike/smarthalo/app/models/SHGoal;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract onGoalChanged()V
.end method

.method public abstract onRideFinished(Lbike/smarthalo/app/models/fitness/TrimmedRideData;)V
    .param p1    # Lbike/smarthalo/app/models/fitness/TrimmedRideData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setTrackingStateSource(Lio/reactivex/Flowable;)V
    .param p1    # Lio/reactivex/Flowable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showCurrentGoalAnimation()V
.end method

.method public abstract updateGoalMetrics(Lbike/smarthalo/app/models/SHRide;)V
    .param p1    # Lbike/smarthalo/app/models/SHRide;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
