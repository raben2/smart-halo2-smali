.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;
.super Ljava/lang/Object;
.source "LightViewContract.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/BasePresenterContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract getIsLightAuto()Z
.end method

.method public abstract getIsLightBlinking()Z
.end method

.method public abstract getLightBrightness()I
.end method

.method public abstract setLightBrightness(I)V
.end method

.method public abstract toggleAutoLight(Z)V
.end method

.method public abstract toggleIsBlinking(Z)V
.end method
