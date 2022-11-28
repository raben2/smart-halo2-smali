.class Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController$2;
.super Lbike/smarthalo/sdk/CmdCallback;
.source "UICommandsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController;->sendLogoAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController$2;->this$0:Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController;

    invoke-direct {p0}, Lbike/smarthalo/sdk/CmdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone([B)V
    .locals 0

    .line 107
    invoke-super {p0, p1}, Lbike/smarthalo/sdk/CmdCallback;->onDone([B)V

    return-void
.end method
