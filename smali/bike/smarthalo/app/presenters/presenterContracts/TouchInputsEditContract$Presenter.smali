.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$Presenter;
.super Ljava/lang/Object;
.source "TouchInputsEditContract.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/BasePresenterContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract clearSelectionState()V
.end method

.method public abstract getNewItem()Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;
.end method

.method public abstract getSelectedItem()Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;
.end method

.method public abstract isUserTester()Z
.end method

.method public abstract onFeatureSelected(Lbike/smarthalo/app/models/TouchInputItemType;Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;Z)V
.end method

.method public abstract onTouchInputSelected(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V
.end method
