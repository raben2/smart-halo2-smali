.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;
.super Ljava/lang/Object;
.source "MapSettingsContract.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/BasePresenterContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract getIsMetric()Z
.end method

.method public abstract getIsNavCompassMode()Z
.end method

.method public abstract getIsNavSoundOn()Z
.end method

.method public abstract getNavigationVolume()I
.end method

.method public abstract setNavigationVolume(I)V
.end method

.method public abstract setNeverRemindMeCompassMode()V
.end method

.method public abstract shouldNeverRemindCompassModeTip()Z
.end method

.method public abstract toggleNavigationMode(Z)V
.end method

.method public abstract toggleNavigationSound(Z)V
.end method

.method public abstract updateUserUnit(Z)V
.end method
