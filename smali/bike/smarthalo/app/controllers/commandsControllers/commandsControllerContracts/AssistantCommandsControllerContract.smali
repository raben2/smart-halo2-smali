.class public interface abstract Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;
.super Ljava/lang/Object;
.source "AssistantCommandsControllerContract.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u000f\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\t\u001a\u00020\u0006H&J\u0008\u0010\n\u001a\u00020\u0006H&J!\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0003H&\u00a2\u0006\u0002\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;",
        "",
        "areTouchInputsSupported",
        "",
        "()Ljava/lang/Boolean;",
        "displayClock",
        "",
        "getClockPayload",
        "Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;",
        "playHorn",
        "showChargeState",
        "updateTouchSoundState",
        "volume",
        "",
        "isEnabled",
        "(Ljava/lang/Integer;Ljava/lang/Boolean;)V",
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
.method public abstract areTouchInputsSupported()Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract displayClock()V
.end method

.method public abstract getClockPayload()Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract playHorn()V
.end method

.method public abstract showChargeState()V
.end method

.method public abstract updateTouchSoundState(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
