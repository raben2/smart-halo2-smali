.class Lbike/smarthalo/sdk/commands/AlarmCommandsController$4;
.super Lbike/smarthalo/sdk/models/TransceiveCallback;
.source "AlarmCommandsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/commands/AlarmCommandsController;->configureAlarm([BIIZZZLbike/smarthalo/sdk/CmdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/sdk/commands/AlarmCommandsController;

.field final synthetic val$cb:Lbike/smarthalo/sdk/CmdCallback;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/commands/AlarmCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/AlarmCommandsController$4;->this$0:Lbike/smarthalo/sdk/commands/AlarmCommandsController;

    iput-object p2, p0, Lbike/smarthalo/sdk/commands/AlarmCommandsController$4;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    invoke-direct {p0}, Lbike/smarthalo/sdk/models/TransceiveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([B)V
    .locals 1

    .line 150
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/AlarmCommandsController$4;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/CmdCallback;->onDone([B)V

    .line 152
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/AlarmCommandsController$4;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lbike/smarthalo/sdk/CmdCallback;->onResult(Z)V

    :cond_0
    return-void
.end method
