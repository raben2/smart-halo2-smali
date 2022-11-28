.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;
.super Ljava/lang/Object;
.source "AssistantContract.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/BasePresenterContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract getAssistantVolume()I
.end method

.method public abstract getIsAssistantSoundOn()Z
.end method

.method public abstract getIsAssistingGlobal()Z
.end method

.method public abstract setAssistantVolume(I)V
.end method

.method public abstract toggleAssistantSound(Z)V
.end method

.method public abstract toggleIsAssistingGlobal(Z)V
.end method
