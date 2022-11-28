.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$Presenter;
.super Ljava/lang/Object;
.source "FitnessMainViewContract.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/BasePresenterContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract dontRemindFitnessPrompt()Z
.end method

.method public abstract getIsFitnessOn()Z
.end method

.method public abstract shouldPromptUserOnFitnessOff()Z
.end method

.method public abstract toggleFitness(Z)V
.end method
