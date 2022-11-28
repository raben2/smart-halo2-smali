.class public Lbike/smarthalo/sdk/commands/commandPayloads/TouchOnboardingCommand;
.super Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;
.source "TouchOnboardingCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 12
    sget-object v0, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_touch_onboarding:[B

    const-string v1, "touch_onboarding"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;-><init>([BZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .line 17
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/commandPayloads/TouchOnboardingCommand;->commandIdentifier:[B

    return-object v0
.end method
