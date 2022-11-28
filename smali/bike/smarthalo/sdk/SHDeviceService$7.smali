.class Lbike/smarthalo/sdk/SHDeviceService$7;
.super Ljava/lang/Object;
.source "SHDeviceService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/SHDeviceService;->pruneDeviceListDelayed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/sdk/SHDeviceService;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/SHDeviceService;)V
    .locals 0

    .line 1245
    iput-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$7;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1251
    :goto_0
    iget-object v3, p0, Lbike/smarthalo/sdk/SHDeviceService$7;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-static {v3}, Lbike/smarthalo/sdk/SHDeviceService;->access$1400(Lbike/smarthalo/sdk/SHDeviceService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1253
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lbike/smarthalo/sdk/SHDeviceService$7;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-static {v5}, Lbike/smarthalo/sdk/SHDeviceService;->access$1400(Lbike/smarthalo/sdk/SHDeviceService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbike/smarthalo/sdk/models/BleDevice;

    iget-object v5, v5, Lbike/smarthalo/sdk/models/BleDevice;->timestamp:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xea60

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 1254
    invoke-static {}, Lbike/smarthalo/sdk/SHDeviceService;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pruning:address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lbike/smarthalo/sdk/SHDeviceService$7;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-static {v4}, Lbike/smarthalo/sdk/SHDeviceService;->access$1400(Lbike/smarthalo/sdk/SHDeviceService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbike/smarthalo/sdk/models/BleDevice;

    iget-object v4, v4, Lbike/smarthalo/sdk/models/BleDevice;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    iget-object v2, p0, Lbike/smarthalo/sdk/SHDeviceService$7;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-static {v2}, Lbike/smarthalo/sdk/SHDeviceService;->access$1400(Lbike/smarthalo/sdk/SHDeviceService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 1261
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService$7;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-static {v0}, Lbike/smarthalo/sdk/SHDeviceService;->access$1500(Lbike/smarthalo/sdk/SHDeviceService;)V

    :cond_2
    return-void
.end method
