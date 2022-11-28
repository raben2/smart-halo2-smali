.class Lbike/smarthalo/sdk/commands/AlarmCommandsController$3;
.super Lbike/smarthalo/sdk/models/TransceiveCallback;
.source "AlarmCommandsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/commands/AlarmCommandsController;->set_alarm_state(IILbike/smarthalo/sdk/CmdCallback;)V
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

    .line 76
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/AlarmCommandsController$3;->this$0:Lbike/smarthalo/sdk/commands/AlarmCommandsController;

    iput-object p2, p0, Lbike/smarthalo/sdk/commands/AlarmCommandsController$3;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    invoke-direct {p0}, Lbike/smarthalo/sdk/models/TransceiveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([B)V
    .locals 1

    .line 79
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/AlarmCommandsController$3;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/CmdCallback;->onDone([B)V

    :cond_0
    return-void
.end method
