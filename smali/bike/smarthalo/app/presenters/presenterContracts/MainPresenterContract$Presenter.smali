.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;
.super Ljava/lang/Object;
.source "MainPresenterContract.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/BasePresenterContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract dontRemindLocationOff()V
.end method

.method public abstract dontRemindMeFitnessOff()V
.end method

.method public abstract dontRemindMePowerSavingOn()V
.end method

.method public abstract getIsNavigating()Z
.end method

.method public abstract getLatestDfuState()Lbike/smarthalo/app/models/dfu/DfuState;
.end method

.method public abstract isFeatureShowCaseUrl(Ljava/lang/String;)Z
.end method

.method public abstract onNewFeaturePageShown()V
.end method

.method public abstract postponeFirmwareUpdate()V
.end method

.method public abstract setHasSeenNewFeaturesPage()V
.end method

.method public abstract setIsAssistingWithCalls(Z)V
.end method

.method public abstract toggleFitnessTracking(Z)V
.end method
