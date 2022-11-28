.class Lbike/smarthalo/sdk/commands/AlarmCommandsController$1;
.super Lbike/smarthalo/sdk/models/TransceiveCallback;
.source "AlarmCommandsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/commands/AlarmCommandsController;->getAlarmReport(Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport$AlarmReportContract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/sdk/commands/AlarmCommandsController;

.field final synthetic val$callback:Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport$AlarmReportContract;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/commands/AlarmCommandsController;Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport$AlarmReportContract;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/AlarmCommandsController$1;->this$0:Lbike/smarthalo/sdk/commands/AlarmCommandsController;

    iput-object p2, p0, Lbike/smarthalo/sdk/commands/AlarmCommandsController$1;->val$callback:Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport$AlarmReportContract;

    invoke-direct {p0}, Lbike/smarthalo/sdk/models/TransceiveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([B)V
    .locals 2

    .line 35
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/AlarmCommandsController$1;->val$callback:Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport$AlarmReportContract;

    if-eqz v0, :cond_0

    .line 36
    new-instance v1, Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport;

    invoke-direct {v1, p1}, Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport;-><init>([B)V

    invoke-interface {v0, v1}, Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport$AlarmReportContract;->onAlarmReportReady(Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport;)V

    :cond_0
    return-void
.end method
