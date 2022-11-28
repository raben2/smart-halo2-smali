.class public Lbike/smarthalo/app/services/AutoRebindingServiceConnection;
.super Lbike/smarthalo/sdk/SafeServiceConnection;
.source "AutoRebindingServiceConnection.java"


# instance fields
.field private hasRegisteredBroadcastReceiver:Z

.field private rebindBroadcast:Ljava/lang/String;

.field private final serviceAliveReceiver:Landroid/content/BroadcastReceiver;

.field private final serviceDestroyedReceiver:Landroid/content/BroadcastReceiver;

.field private unbindBroadcast:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ServiceConnection;Landroid/content/Context;Ljava/lang/Class;ILjava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lbike/smarthalo/sdk/SafeServiceConnection;-><init>(Landroid/content/ServiceConnection;Landroid/content/Context;Ljava/lang/Class;I)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->hasRegisteredBroadcastReceiver:Z

    .line 68
    new-instance p1, Lbike/smarthalo/app/services/AutoRebindingServiceConnection$1;

    invoke-direct {p1, p0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection$1;-><init>(Lbike/smarthalo/app/services/AutoRebindingServiceConnection;)V

    iput-object p1, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->serviceAliveReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    new-instance p1, Lbike/smarthalo/app/services/AutoRebindingServiceConnection$2;

    invoke-direct {p1, p0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection$2;-><init>(Lbike/smarthalo/app/services/AutoRebindingServiceConnection;)V

    iput-object p1, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->serviceDestroyedReceiver:Landroid/content/BroadcastReceiver;

    .line 25
    iput-object p5, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->rebindBroadcast:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ServiceConnection;Landroid/content/Context;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lbike/smarthalo/sdk/SafeServiceConnection;-><init>(Landroid/content/ServiceConnection;Landroid/content/Context;Ljava/lang/Class;I)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->hasRegisteredBroadcastReceiver:Z

    .line 68
    new-instance p1, Lbike/smarthalo/app/services/AutoRebindingServiceConnection$1;

    invoke-direct {p1, p0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection$1;-><init>(Lbike/smarthalo/app/services/AutoRebindingServiceConnection;)V

    iput-object p1, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->serviceAliveReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    new-instance p1, Lbike/smarthalo/app/services/AutoRebindingServiceConnection$2;

    invoke-direct {p1, p0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection$2;-><init>(Lbike/smarthalo/app/services/AutoRebindingServiceConnection;)V

    iput-object p1, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->serviceDestroyedReceiver:Landroid/content/BroadcastReceiver;

    .line 36
    iput-object p5, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->rebindBroadcast:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->unbindBroadcast:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$001(Lbike/smarthalo/app/services/AutoRebindingServiceConnection;)V
    .locals 0

    .line 18
    invoke-super {p0}, Lbike/smarthalo/sdk/SafeServiceConnection;->bindService()V

    return-void
.end method

.method public static getCentralServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;
    .locals 7

    .line 85
    new-instance v6, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    const-class v3, Lbike/smarthalo/app/services/SHCentralService;

    const-string v5, "CENTRAL_SERVICE_ALIVE"

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;-><init>(Landroid/content/ServiceConnection;Landroid/content/Context;Ljava/lang/Class;ILjava/lang/String;)V

    return-object v6
.end method

.method public static getDeviceServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;
    .locals 8

    .line 93
    new-instance v7, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    const-class v3, Lbike/smarthalo/sdk/SHDeviceService;

    const-string v5, "bike.smarthalo.sdk.BROADCAST_CONNECTION_STATE"

    const-string v6, "bike.smarthalo.sdk.DEVICE_SERVICE_DESTROYED"

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;-><init>(Landroid/content/ServiceConnection;Landroid/content/Context;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public static getDirectionServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;
    .locals 7

    .line 89
    new-instance v6, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    const-class v3, Lbike/smarthalo/app/navigation/SHDirectionService;

    const-string v5, "DIRECTION_SERVICE_ALIVE_INTENT"

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;-><init>(Landroid/content/ServiceConnection;Landroid/content/Context;Ljava/lang/Class;ILjava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public startServiceConnection()V
    .locals 4

    .line 41
    invoke-virtual {p0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-super {p0}, Lbike/smarthalo/sdk/SafeServiceConnection;->bindService()V

    .line 45
    :cond_0
    iget-boolean v0, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->hasRegisteredBroadcastReceiver:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->hasRegisteredBroadcastReceiver:Z

    .line 47
    iget-object v0, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->serviceAliveReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->rebindBroadcast:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    iget-object v0, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->unbindBroadcast:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->serviceDestroyedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->unbindBroadcast:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method public stopServiceConnection()V
    .locals 2

    .line 55
    invoke-virtual {p0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-super {p0}, Lbike/smarthalo/sdk/SafeServiceConnection;->unbindService()V

    .line 59
    :cond_0
    iget-boolean v0, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->hasRegisteredBroadcastReceiver:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->hasRegisteredBroadcastReceiver:Z

    .line 61
    iget-object v0, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->serviceAliveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 62
    iget-object v0, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->unbindBroadcast:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->serviceDestroyedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method
