.class public Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;
.super Ljava/lang/Object;
.source "BluetoothSpeedMetrics.java"


# instance fields
.field public averageTaskSpeed:J

.field public averageTaskTimeSpentInQueue:J

.field public currentQueueSize:J

.field public itemsProcessedSinceReconnection:J

.field public lastTaskSpeed:J

.field public lastTaskTimeSpentInQueue:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->itemsProcessedSinceReconnection:J

    .line 9
    iput-wide v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->currentQueueSize:J

    .line 10
    iput-wide v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->averageTaskSpeed:J

    .line 11
    iput-wide v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->averageTaskTimeSpentInQueue:J

    .line 12
    iput-wide v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->lastTaskTimeSpentInQueue:J

    .line 13
    iput-wide v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->lastTaskSpeed:J

    return-void
.end method
