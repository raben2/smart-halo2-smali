.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$View;
.super Ljava/lang/Object;
.source "MainPresenterContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract loadNewFeaturePage(Ljava/lang/String;)V
.end method

.method public abstract onDFUStateChanged(Lbike/smarthalo/app/models/dfu/DfuState;Z)V
.end method

.method public abstract setUpTopBarNavigationVisuals(Z)V
.end method

.method public abstract showLocationOffPrompt()V
.end method

.method public abstract showPowerSavingPrompt()V
.end method
