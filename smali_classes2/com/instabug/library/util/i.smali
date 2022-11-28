.class public Lcom/instabug/library/util/i;
.super Ljava/lang/Object;
.source "ShakeDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/util/i$a;
    }
.end annotation


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:Landroid/hardware/Sensor;

.field private c:J

.field private d:F

.field private e:F

.field private f:F

.field private g:Lcom/instabug/library/util/i$a;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instabug/library/util/i$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/instabug/library/util/i;->c:J

    const/16 v0, 0x28a

    .line 6
    iput v0, p0, Lcom/instabug/library/util/i;->h:I

    const-string v0, "sensor"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/instabug/library/util/i;->a:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/util/i;->b:Landroid/hardware/Sensor;

    .line 11
    iput-object p2, p0, Lcom/instabug/library/util/i;->g:Lcom/instabug/library/util/i$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/util/i;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/instabug/library/util/i;->b:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/instabug/library/util/i;->h:I

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/util/i;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget v0, p1, v0

    .line 6
    aget v1, p1, v1

    const/4 v2, 0x2

    .line 7
    aget p1, p1, v2

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 12
    iget-wide v4, p0, Lcom/instabug/library/util/i;->c:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x190

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    add-float v6, v0, v1

    add-float/2addr v6, p1

    .line 15
    iget v7, p0, Lcom/instabug/library/util/i;->d:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/instabug/library/util/i;->e:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/instabug/library/util/i;->f:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    long-to-float v4, v4

    div-float/2addr v6, v4

    const v4, 0x461c4000    # 10000.0f

    mul-float v6, v6, v4

    .line 17
    iget v4, p0, Lcom/instabug/library/util/i;->h:I

    int-to-float v4, v4

    cmpl-float v4, v6, v4

    if-lez v4, :cond_0

    .line 18
    iget-object v4, p0, Lcom/instabug/library/util/i;->g:Lcom/instabug/library/util/i$a;

    invoke-interface {v4}, Lcom/instabug/library/util/i$a;->d()V

    .line 20
    :cond_0
    iput-wide v2, p0, Lcom/instabug/library/util/i;->c:J

    .line 21
    iput v0, p0, Lcom/instabug/library/util/i;->d:F

    .line 22
    iput v1, p0, Lcom/instabug/library/util/i;->e:F

    .line 23
    iput p1, p0, Lcom/instabug/library/util/i;->f:F

    :cond_1
    return-void
.end method
