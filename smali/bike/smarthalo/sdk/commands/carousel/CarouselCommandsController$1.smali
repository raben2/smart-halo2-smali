.class Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController$1;
.super Lbike/smarthalo/sdk/models/TransceiveCallback;
.source "CarouselCommandsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController;->showCarousel(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController;

.field final synthetic val$callback:Lbike/smarthalo/sdk/CmdCallback;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController$1;->this$0:Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController;

    iput-object p2, p0, Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController$1;->val$callback:Lbike/smarthalo/sdk/CmdCallback;

    invoke-direct {p0}, Lbike/smarthalo/sdk/models/TransceiveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([B)V
    .locals 1

    .line 39
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController$1;->val$callback:Lbike/smarthalo/sdk/CmdCallback;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/CmdCallback;->onDone([B)V

    :cond_0
    return-void
.end method
