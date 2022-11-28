.class Lbike/smarthalo/sdk/bluetooth/StmDfuController$1;
.super Lbike/smarthalo/sdk/CmdCallback;
.source "StmDfuController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/bluetooth/StmDfuController;->installTransferredFirmware(Lbike/smarthalo/sdk/bluetooth/StmDfuController$DfuInstallCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/sdk/bluetooth/StmDfuController;

.field final synthetic val$callback:Lbike/smarthalo/sdk/bluetooth/StmDfuController$DfuInstallCallback;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/bluetooth/StmDfuController;Lbike/smarthalo/sdk/bluetooth/StmDfuController$DfuInstallCallback;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController$1;->this$0:Lbike/smarthalo/sdk/bluetooth/StmDfuController;

    iput-object p2, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController$1;->val$callback:Lbike/smarthalo/sdk/bluetooth/StmDfuController$DfuInstallCallback;

    invoke-direct {p0}, Lbike/smarthalo/sdk/CmdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone([B)V
    .locals 3

    const/4 v0, 0x0

    .line 152
    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    .line 153
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController$1;->val$callback:Lbike/smarthalo/sdk/bluetooth/StmDfuController$DfuInstallCallback;

    sget-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;->Success:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    invoke-interface {p1, v0}, Lbike/smarthalo/sdk/bluetooth/StmDfuController$DfuInstallCallback;->onResult(Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;)V

    .line 154
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController$1;->this$0:Lbike/smarthalo/sdk/bluetooth/StmDfuController;

    invoke-static {p1}, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->access$000(Lbike/smarthalo/sdk/bluetooth/StmDfuController;)V

    goto :goto_0

    .line 155
    :cond_0
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 156
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController$1;->val$callback:Lbike/smarthalo/sdk/bluetooth/StmDfuController$DfuInstallCallback;

    sget-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;->InstallError:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    invoke-interface {p1, v0}, Lbike/smarthalo/sdk/bluetooth/StmDfuController$DfuInstallCallback;->onResult(Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;)V

    goto :goto_0

    .line 157
    :cond_1
    aget-byte p1, p1, v0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 158
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController$1;->val$callback:Lbike/smarthalo/sdk/bluetooth/StmDfuController$DfuInstallCallback;

    sget-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;->LowBattery:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    invoke-interface {p1, v0}, Lbike/smarthalo/sdk/bluetooth/StmDfuController$DfuInstallCallback;->onResult(Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;)V

    :cond_2
    :goto_0
    return-void
.end method
