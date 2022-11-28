.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$Presenter;
.super Ljava/lang/Object;
.source "TouchInputsListContract.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/BasePresenterContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract getTouchInputItem(Lbike/smarthalo/app/models/TouchInputItemType;)Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;
.end method

.method public abstract getTouchInputItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTouchSoundEnabled()Z
.end method

.method public abstract getTouchSoundVolume()I
.end method

.method public abstract onTouchSoundUpdated(IZ)V
.end method
