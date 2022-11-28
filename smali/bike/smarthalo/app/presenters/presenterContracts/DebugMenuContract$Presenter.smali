.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$Presenter;
.super Ljava/lang/Object;
.source "DebugMenuContract.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/BasePresenterContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract debugItemClicked(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;)V
.end method

.method public abstract processSelectedStmDfuFile(Landroid/net/Uri;)V
.end method
