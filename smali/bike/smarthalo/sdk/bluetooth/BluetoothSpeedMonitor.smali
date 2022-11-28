.class public Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;
.super Ljava/lang/Object;
.source "BluetoothSpeedMonitor.java"


# instance fields
.field private bluetoothSpeedMetrics:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;

    invoke-direct {v0}, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;->bluetoothSpeedMetrics:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;

    return-void
.end method

.method private getNewAverage(JJJ)J
    .locals 0

    mul-long p3, p3, p1

    add-long/2addr p3, p5

    long-to-float p3, p3

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    div-float/2addr p3, p1

    .line 46
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method


# virtual methods
.method public clearMetrics()V
    .locals 1

    .line 50
    new-instance v0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;

    invoke-direct {v0}, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;->bluetoothSpeedMetrics:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;

    return-void
.end method

.method public getBluetoothSpeedMetrics()Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;
    .locals 1

    .line 13
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;->bluetoothSpeedMetrics:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;

    return-object v0
.end method

.method public updateQueueSize(I)V
    .locals 3

    .line 17
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;->bluetoothSpeedMetrics:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;

    int-to-long v1, p1

    iput-wide v1, v0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->currentQueueSize:J

    return-void
.end method

.method public updateSpeedMetrics(Lbike/smarthalo/sdk/models/TransceiveTask;)V
    .locals 7

    .line 21
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;->bluetoothSpeedMetrics:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;

    iget-wide v1, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->receivedDataAt:J

    iget-wide v3, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->sentAt:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->lastTaskSpeed:J

    .line 22
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;->bluetoothSpeedMetrics:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;

    iget-wide v1, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->sentAt:J

    iget-wide v3, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->createdAt:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->lastTaskTimeSpentInQueue:J

    .line 24
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;->bluetoothSpeedMetrics:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;

    iget-wide v0, p1, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->itemsProcessedSinceReconnection:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 25
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;->bluetoothSpeedMetrics:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;

    iget-wide v0, p1, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->lastTaskSpeed:J

    iput-wide v0, p1, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->averageTaskSpeed:J

    .line 26
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;->bluetoothSpeedMetrics:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;

    iget-wide v0, p1, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->lastTaskTimeSpentInQueue:J

    iput-wide v0, p1, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->averageTaskTimeSpentInQueue:J

    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;->bluetoothSpeedMetrics:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;

    iget-wide v1, p1, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->itemsProcessedSinceReconnection:J

    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;->bluetoothSpeedMetrics:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;

    iget-wide v3, v0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->averageTaskSpeed:J

    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;->bluetoothSpeedMetrics:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;

    iget-wide v5, v0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->lastTaskSpeed:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;->getNewAverage(JJJ)J

    move-result-wide v0

    iput-wide v0, p1, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->averageTaskSpeed:J

    .line 34
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;->bluetoothSpeedMetrics:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;

    iget-wide v1, p1, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->itemsProcessedSinceReconnection:J

    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;->bluetoothSpeedMetrics:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;

    iget-wide v3, v0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->averageTaskTimeSpentInQueue:J

    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;->bluetoothSpeedMetrics:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;

    iget-wide v5, v0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->lastTaskTimeSpentInQueue:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;->getNewAverage(JJJ)J

    move-result-wide v0

    iput-wide v0, p1, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->averageTaskTimeSpentInQueue:J

    .line 40
    :goto_0
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;->bluetoothSpeedMetrics:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;

    iget-wide v0, p1, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->itemsProcessedSinceReconnection:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->itemsProcessedSinceReconnection:J

    return-void
.end method
