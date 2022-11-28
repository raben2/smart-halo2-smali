.class public interface abstract Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;
.super Ljava/lang/Object;
.source "DirectionControllerContract.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/SHDisposable;
.implements Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;


# virtual methods
.method public abstract getDestination()Lbike/smarthalo/app/models/SHLocation;
.end method

.method public abstract getNavigationCarouselPayload()Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;
.end method

.method public abstract getOrigin()Lbike/smarthalo/app/models/SHLocation;
.end method

.method public abstract navigateHome()V
.end method

.method public abstract navigateToWork()V
.end method

.method public abstract observeIsNavigating()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract showProgressToDestination()V
.end method

.method public abstract stopNavigation()V
.end method

.method public abstract toggleNavigationMode()V
.end method
