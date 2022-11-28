.class public abstract Lbike/smarthalo/sdk/commands/BaseCommandsController;
.super Ljava/lang/Object;
.source "BaseCommandsController.java"


# instance fields
.field public context:Landroid/content/Context;

.field public contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lbike/smarthalo/sdk/commands/BaseCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    .line 17
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/BaseCommandsController;->context:Landroid/content/Context;

    return-void
.end method
