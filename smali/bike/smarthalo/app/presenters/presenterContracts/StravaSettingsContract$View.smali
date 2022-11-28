.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$View;
.super Ljava/lang/Object;
.source "StravaSettingsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract onAccountDisconnected()V
.end method

.method public abstract onError()V
.end method

.method public abstract onNoNetwork()V
.end method

.method public abstract onSettingsReady(Z)V
.end method

.method public abstract onStravaProfilePictureReady(Landroid/graphics/Bitmap;)V
.end method

.method public abstract onStravaUsernameReady(Ljava/lang/String;)V
.end method
