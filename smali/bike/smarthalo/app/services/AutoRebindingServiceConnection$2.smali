.class Lbike/smarthalo/app/services/AutoRebindingServiceConnection$2;
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

    .line 77
    iput-object p1, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection$2;->this$0:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lbike/smarthalo/app/services/AutoRebindingServiceConnection$2;->this$0:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {p1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->unbindService()V

    return-void
.end method
