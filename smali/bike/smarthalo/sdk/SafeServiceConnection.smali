.class public Lbike/smarthalo/sdk/SafeServiceConnection;
.super Ljava/lang/Object;
.source "SafeServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field protected context:Landroid/content/Context;

.field private flags:I

.field private innerConnection:Landroid/content/ServiceConnection;

.field private isBound:Z

.field private serviceClass:Ljava/lang/Class;

.field private serviceIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/ServiceConnection;Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lbike/smarthalo/sdk/SafeServiceConnection;->isBound:Z

    .line 22
    iput-object p1, p0, Lbike/smarthalo/sdk/SafeServiceConnection;->innerConnection:Landroid/content/ServiceConnection;

    .line 23
    iput-object p3, p0, Lbike/smarthalo/sdk/SafeServiceConnection;->serviceClass:Ljava/lang/Class;

    .line 24
    iput p4, p0, Lbike/smarthalo/sdk/SafeServiceConnection;->flags:I

    .line 25
    iput-object p2, p0, Lbike/smarthalo/sdk/SafeServiceConnection;->context:Landroid/content/Context;

    .line 26
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lbike/smarthalo/sdk/SafeServiceConnection;->serviceIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public bindService()V
    .locals 3

    .line 30
    iget-boolean v0, p0, Lbike/smarthalo/sdk/SafeServiceConnection;->isBound:Z

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lbike/smarthalo/sdk/SafeServiceConnection;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/sdk/SafeServiceConnection;->serviceIntent:Landroid/content/Intent;

    iget v2, p0, Lbike/smarthalo/sdk/SafeServiceConnection;->flags:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lbike/smarthalo/sdk/SafeServiceConnection;->isBound:Z

    :cond_0
    return-void
.end method

.method public isServiceBound()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lbike/smarthalo/sdk/SafeServiceConnection;->isBound:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lbike/smarthalo/sdk/SafeServiceConnection;->innerConnection:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lbike/smarthalo/sdk/SafeServiceConnection;->innerConnection:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 55
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SafeServiceConnection;->unbindService()V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 2

    .line 59
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SafeServiceConnection;->unbindService()V

    .line 60
    iput-object p1, p0, Lbike/smarthalo/sdk/SafeServiceConnection;->context:Landroid/content/Context;

    .line 61
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lbike/smarthalo/sdk/SafeServiceConnection;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/sdk/SafeServiceConnection;->serviceClass:Ljava/lang/Class;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lbike/smarthalo/sdk/SafeServiceConnection;->serviceIntent:Landroid/content/Intent;

    return-void
.end method

.method public unbindService()V
    .locals 1

    .line 37
    iget-boolean v0, p0, Lbike/smarthalo/sdk/SafeServiceConnection;->isBound:Z

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lbike/smarthalo/sdk/SafeServiceConnection;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lbike/smarthalo/sdk/SafeServiceConnection;->isBound:Z

    :cond_0
    return-void
.end method
