.class final Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController$getLightSettingCallback$1;
.super Ljava/lang/Object;
.source "LightsCommandsController.kt"

# interfaces
.implements Lbike/smarthalo/sdk/commands/SuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController;->getLightSettingCallback(Z)Lbike/smarthalo/sdk/commands/SuccessCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "onResult"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $isBlinking:Z

.field final synthetic this$0:Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController;Z)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController$getLightSettingCallback$1;->this$0:Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController;

    iput-boolean p2, p0, Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController$getLightSettingCallback$1;->$isBlinking:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 1

    .line 109
    iget-object p1, p0, Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController$getLightSettingCallback$1;->this$0:Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController;

    iget-boolean v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController$getLightSettingCallback$1;->$isBlinking:Z

    if-eqz v0, :cond_0

    sget-object v0, Lbike/smarthalo/app/models/LightState;->Blinking:Lbike/smarthalo/app/models/LightState;

    goto :goto_0

    :cond_0
    sget-object v0, Lbike/smarthalo/app/models/LightState;->Normal:Lbike/smarthalo/app/models/LightState;

    :goto_0
    invoke-static {p1, v0}, Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController;->access$setLightState$p(Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController;Lbike/smarthalo/app/models/LightState;)V

    return-void
.end method
