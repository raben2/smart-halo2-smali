.class public interface abstract Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;
.super Ljava/lang/Object;
.source "LightsCommandControllerContract.kt"

# interfaces
.implements Lbike/smarthalo/app/controllers/SHDisposable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH&J\u0018\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eH&J \u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eH&J\u0008\u0010\u0010\u001a\u00020\u0005H&J\u0010\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0013H&J \u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0007H&\u00a8\u0006\u0016"
    }
    d2 = {
        "Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;",
        "Lbike/smarthalo/app/controllers/SHDisposable;",
        "getLightState",
        "Lbike/smarthalo/app/models/LightState;",
        "requireExternalCommandForLight",
        "",
        "isExternalCommandRequired",
        "",
        "setMasterBrightness",
        "brightness",
        "",
        "toggleFrontLight",
        "isOn",
        "lightIlluminationSource",
        "Lbike/smarthalo/app/analytics/light/LightIlluminationSource;",
        "shouldWaitForMovement",
        "updateDeviceLightSettings",
        "updateFrontLightSetting",
        "lightMode",
        "Lbike/smarthalo/sdk/commands/light/LightMode;",
        "mode",
        "shouldSilenceRocker",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract getLightState()Lbike/smarthalo/app/models/LightState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract requireExternalCommandForLight(Z)V
.end method

.method public abstract setMasterBrightness(I)V
.end method

.method public abstract toggleFrontLight(ZLbike/smarthalo/app/analytics/light/LightIlluminationSource;)V
    .param p2    # Lbike/smarthalo/app/analytics/light/LightIlluminationSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract toggleFrontLight(ZZLbike/smarthalo/app/analytics/light/LightIlluminationSource;)V
    .param p3    # Lbike/smarthalo/app/analytics/light/LightIlluminationSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract updateDeviceLightSettings()V
.end method

.method public abstract updateFrontLightSetting(Lbike/smarthalo/sdk/commands/light/LightMode;)V
    .param p1    # Lbike/smarthalo/sdk/commands/light/LightMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract updateFrontLightSetting(Lbike/smarthalo/sdk/commands/light/LightMode;IZ)V
    .param p1    # Lbike/smarthalo/sdk/commands/light/LightMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
