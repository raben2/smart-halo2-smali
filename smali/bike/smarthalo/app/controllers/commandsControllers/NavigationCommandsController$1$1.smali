.class Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController$1$1;
.super Lbike/smarthalo/sdk/CmdCallback;
.source "NavigationCommandsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController$1;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController$1;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController$1$1;->this$1:Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController$1;

    invoke-direct {p0}, Lbike/smarthalo/sdk/CmdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone([B)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Lbike/smarthalo/sdk/CmdCallback;->onDone([B)V

    return-void
.end method
