.class Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController$1;
.super Lbike/smarthalo/sdk/CmdCallback;
.source "UICommandsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController;->playSound(II[B)V
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

    .line 76
    iput-object p1, p0, Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController$1;->this$0:Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController;

    invoke-direct {p0}, Lbike/smarthalo/sdk/CmdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone([B)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lbike/smarthalo/sdk/CmdCallback;->onDone([B)V

    return-void
.end method
