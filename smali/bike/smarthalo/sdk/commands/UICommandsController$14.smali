.class Lbike/smarthalo/sdk/commands/UICommandsController$14;
.super Lbike/smarthalo/sdk/models/TransceiveCallback;
.source "UICommandsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/commands/UICommandsController;->sendNotificationCommand(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/sdk/commands/UICommandsController;

.field final synthetic val$notificationCommand:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/UICommandsController$14;->this$0:Lbike/smarthalo/sdk/commands/UICommandsController;

    iput-object p2, p0, Lbike/smarthalo/sdk/commands/UICommandsController$14;->val$notificationCommand:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;

    invoke-direct {p0}, Lbike/smarthalo/sdk/models/TransceiveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([B)V
    .locals 1

    .line 342
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController$14;->val$notificationCommand:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;

    iget-object v0, v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->callback:Lbike/smarthalo/sdk/CmdCallback;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController$14;->val$notificationCommand:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;

    iget-object v0, v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->callback:Lbike/smarthalo/sdk/CmdCallback;

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/CmdCallback;->onDone([B)V

    :cond_0
    return-void
.end method
