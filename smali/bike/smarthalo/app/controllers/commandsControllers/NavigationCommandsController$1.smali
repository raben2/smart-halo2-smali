.class Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController$1;
.super Ljava/util/TimerTask;
.source "NavigationCommandsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->onDestinationReached(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;

.field final synthetic val$deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;Lbike/smarthalo/sdk/SHDeviceServiceBinder;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController$1;->this$0:Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;

    iput-object p2, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController$1;->val$deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 106
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController$1;->val$deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    .line 107
    new-instance v1, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController$1$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController$1$1;-><init>(Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController$1;)V

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_nav_off(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method
