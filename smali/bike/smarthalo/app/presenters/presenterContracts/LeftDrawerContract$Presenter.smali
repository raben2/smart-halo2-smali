.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;
.super Ljava/lang/Object;
.source "LeftDrawerContract.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/BasePresenterContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract getCurrentUser()Lbike/smarthalo/app/models/SHUser;
.end method

.method public abstract getVersionText()Ljava/lang/String;
.end method

.method public abstract logout(Lbike/smarthalo/app/presenters/LeftDrawerPresenter$LogoutCallback;)V
.end method

.method public abstract onDrawerClosed()V
.end method

.method public abstract onDrawerOpened()V
.end method

.method public abstract showTouchDemo()Z
.end method
