.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract$View;
.super Ljava/lang/Object;
.source "TouchInputsEditContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsEditContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract onTouchInputSetSuccess(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V
.end method

.method public abstract showCannotOverrideLightPrompt()V
.end method

.method public abstract showOnlyTwoTapsForLightPrompt()V
.end method

.method public abstract showOverrideConfirmationPrompt(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;Lbike/smarthalo/app/models/TouchInputItemType;)V
.end method
