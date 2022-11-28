.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$View;
.super Ljava/lang/Object;
.source "TouchInputsListContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract onFirmwareInfoReceived(Z)V
.end method

.method public abstract onTouchInputItemsReady(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;",
            ">;)V"
        }
    .end annotation
.end method
