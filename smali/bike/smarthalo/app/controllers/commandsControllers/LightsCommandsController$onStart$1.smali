.class final Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController$onStart$1;
.super Ljava/lang/Object;
.source "LightsCommandsController.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
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
        "isConnected",
        "",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController$onStart$1;->this$0:Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController$onStart$1;->accept(Z)V

    return-void
.end method

.method public final accept(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 38
    iget-object p1, p0, Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController$onStart$1;->this$0:Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController;->requireExternalCommandForLight(Z)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController$onStart$1;->this$0:Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController;

    sget-object v0, Lbike/smarthalo/app/models/LightState;->Disconnected:Lbike/smarthalo/app/models/LightState;

    invoke-static {p1, v0}, Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController;->access$setLightState$p(Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController;Lbike/smarthalo/app/models/LightState;)V

    .line 41
    iget-object p1, p0, Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController$onStart$1;->this$0:Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController;->access$setLightOn$p(Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController;Z)V

    :goto_0
    return-void
.end method
