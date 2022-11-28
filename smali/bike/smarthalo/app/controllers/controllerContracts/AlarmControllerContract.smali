.class public interface abstract Lbike/smarthalo/app/controllers/controllerContracts/AlarmControllerContract;
.super Ljava/lang/Object;
.source "AlarmControllerContract.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/SHDisposable;


# virtual methods
.method public abstract getAndObserveAlarmTriggersCount()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateAlarmState(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lbike/smarthalo/app/models/AlarmUpdateCallback;)V
.end method
