.class public Lbike/smarthalo/navigation/helpers/StepHelper;
.super Ljava/lang/Object;
.source "StepHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDistanceToManeuvre(IF)F
    .locals 2

    .line 12
    sget-object v0, Lbike/smarthalo/navigation/models/StepType;->DESTINATION:Lbike/smarthalo/navigation/models/StepType;

    invoke-virtual {v0}, Lbike/smarthalo/navigation/models/StepType;->getType()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/high16 p0, 0x42480000    # 50.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x41c80000    # 25.0f

    :goto_0
    sub-float/2addr p1, p0

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    float-to-double p0, p1

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    div-double/2addr p0, v0

    .line 17
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    const-wide/16 v0, 0xa

    mul-long p0, p0, v0

    long-to-float p0, p0

    :goto_1
    return p0
.end method
