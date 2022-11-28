.class public abstract Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;
.super Ljava/lang/Object;
.source "GenericBleCommand.java"


# instance fields
.field public callback:Lbike/smarthalo/sdk/CmdCallback;

.field public commandIdentifier:[B

.field public description:Ljava/lang/String;

.field public isCrypted:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;->callback:Lbike/smarthalo/sdk/CmdCallback;

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;->description:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BZLjava/lang/String;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;->callback:Lbike/smarthalo/sdk/CmdCallback;

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;->description:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;->commandIdentifier:[B

    .line 19
    iput-boolean p2, p0, Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;->isCrypted:Z

    .line 20
    iput-object p3, p0, Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;->description:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BZLjava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;->callback:Lbike/smarthalo/sdk/CmdCallback;

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;->description:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;->callback:Lbike/smarthalo/sdk/CmdCallback;

    .line 25
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;->commandIdentifier:[B

    .line 26
    iput-boolean p2, p0, Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;->isCrypted:Z

    .line 27
    iput-object p3, p0, Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getBytes()[B
.end method
