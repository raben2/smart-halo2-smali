.class public Lbike/smarthalo/sdk/commands/light/LightSettingPayload;
.super Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;
.source "LightSettingPayload.java"


# instance fields
.field private brightness:I

.field private isBlinkingLocked:Z

.field private lightMode:Lbike/smarthalo/sdk/commands/light/LightMode;

.field private shouldSilenceRocker:Z


# direct methods
.method public constructor <init>(Lbike/smarthalo/sdk/commands/light/LightMode;IZZLbike/smarthalo/sdk/commands/SuccessCallback;)V
    .locals 2

    .line 21
    sget-object p3, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_frontlightSettings:[B

    const-string v0, "light_settings"

    new-instance v1, Lbike/smarthalo/sdk/commands/light/LightSettingPayload$1;

    invoke-direct {v1, p5}, Lbike/smarthalo/sdk/commands/light/LightSettingPayload$1;-><init>(Lbike/smarthalo/sdk/commands/SuccessCallback;)V

    const/4 p5, 0x1

    invoke-direct {p0, p3, p5, v0, v1}, Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;-><init>([BZLjava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V

    .line 28
    iput p2, p0, Lbike/smarthalo/sdk/commands/light/LightSettingPayload;->brightness:I

    .line 29
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/light/LightSettingPayload;->lightMode:Lbike/smarthalo/sdk/commands/light/LightMode;

    .line 30
    iput-boolean p4, p0, Lbike/smarthalo/sdk/commands/light/LightSettingPayload;->shouldSilenceRocker:Z

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 3

    const/4 v0, 0x6

    .line 35
    new-array v0, v0, [B

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_frontlightSettings:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_frontlightSettings:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    iget-object v1, p0, Lbike/smarthalo/sdk/commands/light/LightSettingPayload;->lightMode:Lbike/smarthalo/sdk/commands/light/LightMode;

    .line 38
    invoke-virtual {v1}, Lbike/smarthalo/sdk/commands/light/LightMode;->getValue()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    iget v1, p0, Lbike/smarthalo/sdk/commands/light/LightSettingPayload;->brightness:I

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    iget-boolean v1, p0, Lbike/smarthalo/sdk/commands/light/LightSettingPayload;->isBlinkingLocked:Z

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    const/4 v1, 0x5

    iget-boolean v2, p0, Lbike/smarthalo/sdk/commands/light/LightSettingPayload;->shouldSilenceRocker:Z

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method
