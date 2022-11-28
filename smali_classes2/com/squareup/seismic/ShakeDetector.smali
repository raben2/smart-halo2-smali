.class public Lcom/squareup/seismic/ShakeDetector;
.super Ljava/lang/Object;
.source "ShakeDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/seismic/ShakeDetector$SamplePool;,
        Lcom/squareup/seismic/ShakeDetector$Sample;,
        Lcom/squareup/seismic/ShakeDetector$SampleQueue;,
        Lcom/squareup/seismic/ShakeDetector$Listener;
    }
.end annotation


# static fields
.field private static final ACCELERATION_THRESHOLD:I = 0xd


# instance fields
.field private accelerometer:Landroid/hardware/Sensor;

.field private final listener:Lcom/squareup/seismic/ShakeDetector$Listener;

.field private final queue:Lcom/squareup/seismic/ShakeDetector$SampleQueue;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Lcom/squareup/seismic/ShakeDetector$Listener;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;

    invoke-direct {v0}, Lcom/squareup/seismic/ShakeDetector$SampleQueue;-><init>()V

    iput-object v0, p0, Lcom/squareup/seismic/ShakeDetector;->queue:Lcom/squareup/seismic/ShakeDetector$SampleQueue;

    .line 44
    iput-object p1, p0, Lcom/squareup/seismic/ShakeDetector;->listener:Lcom/squareup/seismic/ShakeDetector$Listener;

    return-void
.end method

.method private isAccelerating(Landroid/hardware/SensorEvent;)Z
    .locals 8

    .line 97
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 98
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 99
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget p1, p1, v4

    mul-float v0, v0, v0

    mul-float v2, v2, v2

    add-float/2addr v0, v2

    mul-float p1, p1, p1

    add-float/2addr v0, p1

    float-to-double v4, v0

    .line 101
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x402a000000000000L    # 13.0

    cmpl-double p1, v4, v6

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 84
    invoke-direct {p0, p1}, Lcom/squareup/seismic/ShakeDetector;->isAccelerating(Landroid/hardware/SensorEvent;)Z

    move-result v0

    .line 85
    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 86
    iget-object p1, p0, Lcom/squareup/seismic/ShakeDetector;->queue:Lcom/squareup/seismic/ShakeDetector$SampleQueue;

    invoke-virtual {p1, v1, v2, v0}, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->add(JZ)V

    .line 87
    iget-object p1, p0, Lcom/squareup/seismic/ShakeDetector;->queue:Lcom/squareup/seismic/ShakeDetector$SampleQueue;

    invoke-virtual {p1}, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->isShaking()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/squareup/seismic/ShakeDetector;->queue:Lcom/squareup/seismic/ShakeDetector$SampleQueue;

    invoke-virtual {p1}, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->clear()V

    .line 89
    iget-object p1, p0, Lcom/squareup/seismic/ShakeDetector;->listener:Lcom/squareup/seismic/ShakeDetector$Listener;

    invoke-interface {p1}, Lcom/squareup/seismic/ShakeDetector$Listener;->hearShake()V

    :cond_0
    return-void
.end method

.method public start(Landroid/hardware/SensorManager;)Z
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 58
    :cond_0
    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/seismic/ShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    .line 62
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 63
    iput-object p1, p0, Lcom/squareup/seismic/ShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    .line 64
    invoke-virtual {p1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/squareup/seismic/ShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public stop()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/squareup/seismic/ShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/squareup/seismic/ShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    .line 78
    iput-object v0, p0, Lcom/squareup/seismic/ShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    :cond_0
    return-void
.end method
