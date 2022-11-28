.class Lbike/smarthalo/app/services/AutoRebindingServiceConnection$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoRebindingServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/services/AutoRebindingServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/services/AutoRebindingServiceConnection;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection$1;->this$0:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection$1;->this$0:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {p1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->isServiceBound()Z

    move-result p1

    if-nez p1, :cond_0

    .line 72
    iget-object p1, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection$1;->this$0:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-static {p1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->access$001(Lbike/smarthalo/app/services/AutoRebindingServiceConnection;)V

    :cond_0
    return-void
.end method
