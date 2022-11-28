.class Lbike/smarthalo/app/controllers/DeviceStateController$2;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/controllers/DeviceStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/controllers/DeviceStateController;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/DeviceStateController;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lbike/smarthalo/app/controllers/DeviceStateController$2;->this$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_4

    const-string p1, "bike.smarthalo.sdk.EXTRA_CONNECTION_STATE"

    .line 234
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "bike.smarthalo.sdk.EXTRA_CONNECTION_STATE"

    .line 238
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/sdk/models/DeviceConnectionState;

    .line 241
    iget-object p2, p0, Lbike/smarthalo/app/controllers/DeviceStateController$2;->this$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    invoke-static {p2}, Lbike/smarthalo/app/controllers/DeviceStateController;->access$200(Lbike/smarthalo/app/controllers/DeviceStateController;)Lbike/smarthalo/sdk/models/DeviceConnectionState;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-void

    .line 245
    :cond_1
    sget-object p2, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Authenticated:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    if-ne p1, p2, :cond_2

    .line 246
    iget-object p2, p0, Lbike/smarthalo/app/controllers/DeviceStateController$2;->this$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    invoke-static {p2}, Lbike/smarthalo/app/controllers/DeviceStateController;->access$300(Lbike/smarthalo/app/controllers/DeviceStateController;)V

    goto :goto_0

    .line 247
    :cond_2
    sget-object p2, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Disconnected:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    if-ne p1, p2, :cond_3

    .line 248
    iget-object p2, p0, Lbike/smarthalo/app/controllers/DeviceStateController$2;->this$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    invoke-static {p2}, Lbike/smarthalo/app/controllers/DeviceStateController;->access$400(Lbike/smarthalo/app/controllers/DeviceStateController;)V

    .line 250
    :cond_3
    :goto_0
    iget-object p2, p0, Lbike/smarthalo/app/controllers/DeviceStateController$2;->this$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    invoke-static {p2, p1}, Lbike/smarthalo/app/controllers/DeviceStateController;->access$202(Lbike/smarthalo/app/controllers/DeviceStateController;Lbike/smarthalo/sdk/models/DeviceConnectionState;)Lbike/smarthalo/sdk/models/DeviceConnectionState;

    return-void

    :cond_4
    :goto_1
    return-void
.end method
