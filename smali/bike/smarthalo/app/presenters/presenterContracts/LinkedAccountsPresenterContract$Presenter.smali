.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$Presenter;
.super Ljava/lang/Object;
.source "LinkedAccountsPresenterContract.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/BasePresenterContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract getStravaAuthenticationUri()Landroid/net/Uri;
.end method

.method public abstract handleAuthenticationCallBack(Landroid/net/Uri;)V
.end method

.method public abstract hasStravaAccount()Z
.end method
