.class public Lbike/smarthalo/app/models/dfu/DfuState;
.super Ljava/lang/Object;
.source "DfuState.java"


# instance fields
.field public availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

.field public description:Ljava/lang/String;

.field public firmwareInfo:Lbike/smarthalo/app/models/LatestFirmwareInfo;

.field public firmwareType:Lbike/smarthalo/sdk/models/FirmwareType;

.field public stepProgress:I

.field public stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lbike/smarthalo/sdk/models/FirmwareType;->Unknown:Lbike/smarthalo/sdk/models/FirmwareType;

    iput-object v0, p0, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareType:Lbike/smarthalo/sdk/models/FirmwareType;

    .line 12
    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->None:Lbike/smarthalo/app/models/dfu/DfuStepType;

    iput-object v0, p0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 13
    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;->None:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    iput-object v0, p0, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lbike/smarthalo/app/models/dfu/DfuState;->stepProgress:I

    return-void
.end method

.method public static defaultError()Lbike/smarthalo/app/models/dfu/DfuState;
    .locals 2

    .line 19
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-direct {v0}, Lbike/smarthalo/app/models/dfu/DfuState;-><init>()V

    .line 20
    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Error:Lbike/smarthalo/app/models/dfu/DfuStepType;

    iput-object v1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    return-object v0
.end method

.method public static invalidFileError()Lbike/smarthalo/app/models/dfu/DfuState;
    .locals 2

    .line 25
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-direct {v0}, Lbike/smarthalo/app/models/dfu/DfuState;-><init>()V

    .line 26
    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->InvalidFileError:Lbike/smarthalo/app/models/dfu/DfuStepType;

    iput-object v1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    return-object v0
.end method


# virtual methods
.method public canCancel()Z
    .locals 2

    .line 39
    invoke-virtual {p0}, Lbike/smarthalo/app/models/dfu/DfuState;->isNordic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Transferring:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCopy()Lbike/smarthalo/app/models/dfu/DfuState;
    .locals 2

    .line 59
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-direct {v0}, Lbike/smarthalo/app/models/dfu/DfuState;-><init>()V

    .line 60
    iget-object v1, p0, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareType:Lbike/smarthalo/sdk/models/FirmwareType;

    iput-object v1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareType:Lbike/smarthalo/sdk/models/FirmwareType;

    .line 61
    iget-object v1, p0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    iput-object v1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 62
    iget-object v1, p0, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    iput-object v1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    .line 63
    iget v1, p0, Lbike/smarthalo/app/models/dfu/DfuState;->stepProgress:I

    iput v1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepProgress:I

    .line 64
    iget-object v1, p0, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareInfo:Lbike/smarthalo/app/models/LatestFirmwareInfo;

    iput-object v1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareInfo:Lbike/smarthalo/app/models/LatestFirmwareInfo;

    .line 65
    iget-object v1, p0, Lbike/smarthalo/app/models/dfu/DfuState;->description:Ljava/lang/String;

    iput-object v1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->description:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 3

    .line 43
    invoke-virtual {p0}, Lbike/smarthalo/app/models/dfu/DfuState;->isNordic()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v2, Lbike/smarthalo/app/models/dfu/DfuStepType;->Downloading:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v2, Lbike/smarthalo/app/models/dfu/DfuStepType;->Downloaded:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v2, Lbike/smarthalo/app/models/dfu/DfuStepType;->Transferring:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v2, Lbike/smarthalo/app/models/dfu/DfuStepType;->Transferred:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v2, Lbike/smarthalo/app/models/dfu/DfuStepType;->Installing:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne v0, v2, :cond_1

    :cond_0
    return v1

    .line 51
    :cond_1
    invoke-virtual {p0}, Lbike/smarthalo/app/models/dfu/DfuState;->isSTM()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v2, Lbike/smarthalo/app/models/dfu/DfuStepType;->Installing:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isNordic()Z
    .locals 2

    .line 31
    iget-object v0, p0, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareType:Lbike/smarthalo/sdk/models/FirmwareType;

    sget-object v1, Lbike/smarthalo/sdk/models/FirmwareType;->SH1:Lbike/smarthalo/sdk/models/FirmwareType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareType:Lbike/smarthalo/sdk/models/FirmwareType;

    sget-object v1, Lbike/smarthalo/sdk/models/FirmwareType;->SH2_NRF:Lbike/smarthalo/sdk/models/FirmwareType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSTM()Z
    .locals 2

    .line 35
    iget-object v0, p0, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareType:Lbike/smarthalo/sdk/models/FirmwareType;

    sget-object v1, Lbike/smarthalo/sdk/models/FirmwareType;->SH2_STM:Lbike/smarthalo/sdk/models/FirmwareType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
