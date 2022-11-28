.class public Lbike/smarthalo/sdk/bluetooth/StmDfuController;
.super Ljava/lang/Object;
.source "StmDfuController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/sdk/bluetooth/StmDfuController$InitializeStmDfuCallback;,
        Lbike/smarthalo/sdk/bluetooth/StmDfuController$DfuInstallCallback;
    }
.end annotation


# static fields
.field private static final PACKET_MAX_SIZE:I = 0x40

.field private static final TAG:Ljava/lang/String; = "StmDfuController"


# instance fields
.field private debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

.field private dfuCommandsController:Lbike/smarthalo/sdk/commands/DFUCommandsController;

.field private dfuInformation:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;

.field private dfuProgressSource:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isTransferOngoing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lbike/smarthalo/sdk/commands/DFUCommandsController;Lbike/smarthalo/sdk/helpers/DebugLoggerContract;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuCommandsController:Lbike/smarthalo/sdk/commands/DFUCommandsController;

    const/4 p1, 0x1

    .line 42
    invoke-static {p1}, Lio/reactivex/processors/ReplayProcessor;->create(I)Lio/reactivex/processors/ReplayProcessor;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuProgressSource:Lio/reactivex/processors/FlowableProcessor;

    .line 43
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuProgressSource:Lio/reactivex/processors/FlowableProcessor;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 44
    iput-object p2, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/sdk/bluetooth/StmDfuController;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->cleanUpSequence()V

    return-void
.end method

.method private cleanUpSequence()V
    .locals 1

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuInformation:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->isTransferOngoing:Z

    return-void
.end method

.method private isUpdateInitialized()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuInformation:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$forceInstallGoldenFirmware$3(Lbike/smarthalo/sdk/bluetooth/StmDfuController;Lbike/smarthalo/sdk/commands/SuccessCallback;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 170
    invoke-direct {p0}, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->cleanUpSequence()V

    .line 172
    :cond_0
    invoke-interface {p1, p2}, Lbike/smarthalo/sdk/commands/SuccessCallback;->onResult(Z)V

    return-void
.end method

.method public static synthetic lambda$initializeStmDfu$0(Lbike/smarthalo/sdk/bluetooth/StmDfuController;Ljava/util/List;[BLbike/smarthalo/sdk/bluetooth/StmDfuController$InitializeStmDfuCallback;Lbike/smarthalo/sdk/commands/CommandResponse;I)V
    .locals 1

    .line 74
    sget-object v0, Lbike/smarthalo/sdk/commands/CommandResponse;->OK:Lbike/smarthalo/sdk/commands/CommandResponse;

    if-eq p4, v0, :cond_1

    sget-object v0, Lbike/smarthalo/sdk/commands/CommandResponse;->Unnecessary:Lbike/smarthalo/sdk/commands/CommandResponse;

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 83
    invoke-interface {p3, p1, p2}, Lbike/smarthalo/sdk/bluetooth/StmDfuController$InitializeStmDfuCallback;->onResult(ZLbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;)V

    goto :goto_2

    .line 78
    :cond_1
    :goto_0
    sget-object v0, Lbike/smarthalo/sdk/commands/CommandResponse;->OK:Lbike/smarthalo/sdk/commands/CommandResponse;

    if-ne p4, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p5

    .line 79
    :goto_1
    new-instance p4, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;

    invoke-direct {p4, p1, p5, p2}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;-><init>(Ljava/util/List;I[B)V

    iput-object p4, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuInformation:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;

    .line 80
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuProgressSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object p2, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuInformation:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;

    invoke-virtual {p2}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->getProgressPercentage()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 81
    iget-object p2, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuInformation:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;

    invoke-interface {p3, p1, p2}, Lbike/smarthalo/sdk/bluetooth/StmDfuController$InitializeStmDfuCallback;->onResult(ZLbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;)V

    :goto_2
    return-void
.end method

.method public static synthetic lambda$null$1(Lbike/smarthalo/sdk/bluetooth/StmDfuController;ZLbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p0}, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->startStmDfu()Lio/reactivex/Flowable;

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->cancelDfuFlow()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$sendNextFirmwareWindow$2(Lbike/smarthalo/sdk/bluetooth/StmDfuController;Z)V
    .locals 4

    .line 100
    invoke-direct {p0}, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->isUpdateInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    .line 104
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->TAG:Ljava/lang/String;

    const-string v1, "Error on payload sent, resending CRC"

    invoke-interface {p1, v0, v1}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 105
    iput-boolean p1, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->isTransferOngoing:Z

    .line 110
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuInformation:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;

    if-nez p1, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p1}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->getFirmwareBytes()[B

    move-result-object p1

    new-instance v0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$RLvJ462gfaVRBhM3CtLMaqdUEDE;

    invoke-direct {v0, p0}, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$RLvJ462gfaVRBhM3CtLMaqdUEDE;-><init>(Lbike/smarthalo/sdk/bluetooth/StmDfuController;)V

    invoke-virtual {p0, p1, v0}, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->initializeStmDfu([BLbike/smarthalo/sdk/bluetooth/StmDfuController$InitializeStmDfuCallback;)V

    return-void

    .line 123
    :cond_1
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuInformation:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;

    invoke-virtual {p1}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->getProgressPercentage()I

    move-result p1

    .line 124
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuInformation:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->incrementCurrentPosition()V

    .line 125
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuInformation:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->getProgressPercentage()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 127
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v1, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DFU Progress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_2
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuProgressSource:Lio/reactivex/processors/FlowableProcessor;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 130
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuInformation:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;

    invoke-virtual {p1}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->getCurrentState()Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;->Ongoing:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    if-ne p1, v0, :cond_3

    .line 131
    invoke-direct {p0}, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->sendNextFirmwareWindow()V

    :cond_3
    return-void
.end method

.method private sendNextFirmwareWindow()V
    .locals 5

    .line 93
    invoke-direct {p0}, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->isUpdateInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v1, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->TAG:Ljava/lang/String;

    const-string v2, "DFU was cancelled by user"

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuInformation:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->getPayloads()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuInformation:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->getCurrentPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 99
    iget-object v1, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuCommandsController:Lbike/smarthalo/sdk/commands/DFUCommandsController;

    iget-object v2, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuInformation:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;

    invoke-virtual {v2}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->getCurrentPosition()I

    move-result v2

    array-length v3, v0

    new-instance v4, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$5oakvkY6ckhuGQQk9n1yw2QGFuU;

    invoke-direct {v4, p0}, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$5oakvkY6ckhuGQQk9n1yw2QGFuU;-><init>(Lbike/smarthalo/sdk/bluetooth/StmDfuController;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lbike/smarthalo/sdk/commands/DFUCommandsController;->sendStmDfuData(II[BLbike/smarthalo/sdk/commands/SuccessCallback;)V

    return-void
.end method


# virtual methods
.method public cancelDfuFlow()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->cleanUpSequence()V

    return-void
.end method

.method public forceInstallGoldenFirmware(Lbike/smarthalo/sdk/commands/SuccessCallback;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuCommandsController:Lbike/smarthalo/sdk/commands/DFUCommandsController;

    new-instance v1, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$Lp_k5axpWUk4A6dHgF2Io_JNptw;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$Lp_k5axpWUk4A6dHgF2Io_JNptw;-><init>(Lbike/smarthalo/sdk/bluetooth/StmDfuController;Lbike/smarthalo/sdk/commands/SuccessCallback;)V

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/commands/DFUCommandsController;->forceInstallGoldenFirmware(Lbike/smarthalo/sdk/commands/SuccessCallback;)V

    return-void
.end method

.method public getAndObserveDfuFlowSource()Lio/reactivex/Flowable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuProgressSource:Lio/reactivex/processors/FlowableProcessor;

    return-object v0
.end method

.method public getCurrentStmDfuInformation()Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 49
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuInformation:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;

    return-object v0
.end method

.method public initializeStmDfu([BLbike/smarthalo/sdk/bluetooth/StmDfuController$InitializeStmDfuCallback;)V
    .locals 8

    .line 59
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 60
    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Ljava/util/zip/Checksum;->update([BII)V

    .line 61
    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    .line 63
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 64
    array-length v4, p1

    int-to-double v4, v4

    const-wide/high16 v6, 0x4050000000000000L    # 64.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    :goto_0
    if-ge v2, v4, :cond_1

    mul-int/lit8 v5, v2, 0x40

    add-int/lit8 v6, v4, -0x1

    if-ne v2, v6, :cond_0

    .line 67
    array-length v6, p1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v5, 0x40

    .line 70
    :goto_1
    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_1
    iget-object v2, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuCommandsController:Lbike/smarthalo/sdk/commands/DFUCommandsController;

    array-length v4, p1

    new-instance v5, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$-wDwtmqk3z7PJthSM22LZwaGXzQ;

    invoke-direct {v5, p0, v3, p1, p2}, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$-wDwtmqk3z7PJthSM22LZwaGXzQ;-><init>(Lbike/smarthalo/sdk/bluetooth/StmDfuController;Ljava/util/List;[BLbike/smarthalo/sdk/bluetooth/StmDfuController$InitializeStmDfuCallback;)V

    invoke-virtual {v2, v0, v1, v4, v5}, Lbike/smarthalo/sdk/commands/DFUCommandsController;->sendStmDfuCrc(JILbike/smarthalo/sdk/commands/DFUCommandsController$CrcCallback;)V

    return-void
.end method

.method public installTransferredFirmware(Lbike/smarthalo/sdk/bluetooth/StmDfuController$DfuInstallCallback;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuInformation:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->getCurrentState()Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;->Completed:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuCommandsController:Lbike/smarthalo/sdk/commands/DFUCommandsController;

    new-instance v1, Lbike/smarthalo/sdk/bluetooth/StmDfuController$1;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/sdk/bluetooth/StmDfuController$1;-><init>(Lbike/smarthalo/sdk/bluetooth/StmDfuController;Lbike/smarthalo/sdk/bluetooth/StmDfuController$DfuInstallCallback;)V

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/commands/DFUCommandsController;->installStmDfu(Lbike/smarthalo/sdk/CmdCallback;)V

    goto :goto_0

    .line 163
    :cond_0
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;->NotTransferred:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    invoke-interface {p1, v0}, Lbike/smarthalo/sdk/bluetooth/StmDfuController$DfuInstallCallback;->onResult(Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;)V

    :goto_0
    return-void
.end method

.method public startStmDfu()Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->isUpdateInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuInformation:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;

    .line 139
    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->getCurrentState()Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;->Completed:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->isTransferOngoing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->isTransferOngoing:Z

    .line 142
    invoke-direct {p0}, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->sendNextFirmwareWindow()V

    .line 144
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->dfuProgressSource:Lio/reactivex/processors/FlowableProcessor;

    return-object v0
.end method
