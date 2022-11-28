.class public Lcom/yqritc/scalablevideoview/ScaleManager;
.super Ljava/lang/Object;
.source "ScaleManager.java"


# instance fields
.field private mVideoSize:Lcom/yqritc/scalablevideoview/Size;

.field private mViewSize:Lcom/yqritc/scalablevideoview/Size;


# direct methods
.method public constructor <init>(Lcom/yqritc/scalablevideoview/Size;Lcom/yqritc/scalablevideoview/Size;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    .line 15
    iput-object p2, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mVideoSize:Lcom/yqritc/scalablevideoview/Size;

    return-void
.end method

.method private centerInside()Landroid/graphics/Matrix;
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mVideoSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v0}, Lcom/yqritc/scalablevideoview/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v1}, Lcom/yqritc/scalablevideoview/Size;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mVideoSize:Lcom/yqritc/scalablevideoview/Size;

    .line 172
    invoke-virtual {v0}, Lcom/yqritc/scalablevideoview/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v1}, Lcom/yqritc/scalablevideoview/Size;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 174
    sget-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, v0}, Lcom/yqritc/scalablevideoview/ScaleManager;->getOriginalScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/yqritc/scalablevideoview/ScaleManager;->fitCenter()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method private endInside()Landroid/graphics/Matrix;
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mVideoSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v0}, Lcom/yqritc/scalablevideoview/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v1}, Lcom/yqritc/scalablevideoview/Size;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mVideoSize:Lcom/yqritc/scalablevideoview/Size;

    .line 183
    invoke-virtual {v0}, Lcom/yqritc/scalablevideoview/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v1}, Lcom/yqritc/scalablevideoview/Size;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 185
    sget-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->RIGHT_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, v0}, Lcom/yqritc/scalablevideoview/ScaleManager;->getOriginalScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/yqritc/scalablevideoview/ScaleManager;->fitEnd()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method private fitCenter()Landroid/graphics/Matrix;
    .locals 1

    .line 137
    sget-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, v0}, Lcom/yqritc/scalablevideoview/ScaleManager;->getFitScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method private fitEnd()Landroid/graphics/Matrix;
    .locals 1

    .line 141
    sget-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->RIGHT_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, v0}, Lcom/yqritc/scalablevideoview/ScaleManager;->getFitScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method private fitStart()Landroid/graphics/Matrix;
    .locals 1

    .line 133
    sget-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->LEFT_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, v0}, Lcom/yqritc/scalablevideoview/ScaleManager;->getFitScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method private fitXY()Landroid/graphics/Matrix;
    .locals 2

    .line 129
    sget-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->LEFT_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v1, v0}, Lcom/yqritc/scalablevideoview/ScaleManager;->getMatrix(FFLcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method private getCropScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v0}, Lcom/yqritc/scalablevideoview/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mVideoSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v1}, Lcom/yqritc/scalablevideoview/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 152
    iget-object v1, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v1}, Lcom/yqritc/scalablevideoview/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mVideoSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v2}, Lcom/yqritc/scalablevideoview/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 153
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float v0, v2, v0

    div-float/2addr v2, v1

    .line 156
    invoke-direct {p0, v0, v2, p1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getMatrix(FFLcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1
.end method

.method private getFitScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v0}, Lcom/yqritc/scalablevideoview/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mVideoSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v1}, Lcom/yqritc/scalablevideoview/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 121
    iget-object v1, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v1}, Lcom/yqritc/scalablevideoview/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mVideoSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v2}, Lcom/yqritc/scalablevideoview/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 122
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float v0, v2, v0

    div-float/2addr v2, v1

    .line 125
    invoke-direct {p0, v0, v2, p1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getMatrix(FFLcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1
.end method

.method private getMatrix(FFFF)Landroid/graphics/Matrix;
    .locals 1

    .line 83
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 84
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    return-object v0
.end method

.method private getMatrix(FFLcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;
    .locals 2

    .line 89
    sget-object v0, Lcom/yqritc/scalablevideoview/ScaleManager$1;->$SwitchMap$com$yqritc$scalablevideoview$PivotPoint:[I

    invoke-virtual {p3}, Lcom/yqritc/scalablevideoview/PivotPoint;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_0

    .line 109
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal PivotPoint"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :pswitch_0
    iget-object p3, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {p3}, Lcom/yqritc/scalablevideoview/Size;->getWidth()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v0}, Lcom/yqritc/scalablevideoview/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yqritc/scalablevideoview/ScaleManager;->getMatrix(FFFF)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 105
    :pswitch_1
    iget-object p3, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {p3}, Lcom/yqritc/scalablevideoview/Size;->getWidth()I

    move-result p3

    int-to-float p3, p3

    iget-object v1, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v1}, Lcom/yqritc/scalablevideoview/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getMatrix(FFFF)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 103
    :pswitch_2
    iget-object p3, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {p3}, Lcom/yqritc/scalablevideoview/Size;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getMatrix(FFFF)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 101
    :pswitch_3
    iget-object p3, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {p3}, Lcom/yqritc/scalablevideoview/Size;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v0

    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v0}, Lcom/yqritc/scalablevideoview/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yqritc/scalablevideoview/ScaleManager;->getMatrix(FFFF)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 99
    :pswitch_4
    iget-object p3, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {p3}, Lcom/yqritc/scalablevideoview/Size;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v0

    iget-object v1, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v1}, Lcom/yqritc/scalablevideoview/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getMatrix(FFFF)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 97
    :pswitch_5
    iget-object p3, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {p3}, Lcom/yqritc/scalablevideoview/Size;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getMatrix(FFFF)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 95
    :pswitch_6
    iget-object p3, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {p3}, Lcom/yqritc/scalablevideoview/Size;->getHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/yqritc/scalablevideoview/ScaleManager;->getMatrix(FFFF)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 93
    :pswitch_7
    iget-object p3, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {p3}, Lcom/yqritc/scalablevideoview/Size;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v0

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/yqritc/scalablevideoview/ScaleManager;->getMatrix(FFFF)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 91
    :pswitch_8
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getMatrix(FFFF)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getNoScale()Landroid/graphics/Matrix;
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mVideoSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v0}, Lcom/yqritc/scalablevideoview/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v1}, Lcom/yqritc/scalablevideoview/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 115
    iget-object v1, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mVideoSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v1}, Lcom/yqritc/scalablevideoview/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v2}, Lcom/yqritc/scalablevideoview/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 116
    sget-object v2, Lcom/yqritc/scalablevideoview/PivotPoint;->LEFT_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, v0, v1, v2}, Lcom/yqritc/scalablevideoview/ScaleManager;->getMatrix(FFLcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method private getOriginalScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mVideoSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v0}, Lcom/yqritc/scalablevideoview/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v1}, Lcom/yqritc/scalablevideoview/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 146
    iget-object v1, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mVideoSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v1}, Lcom/yqritc/scalablevideoview/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v2}, Lcom/yqritc/scalablevideoview/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 147
    invoke-direct {p0, v0, v1, p1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getMatrix(FFLcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1
.end method

.method private startInside()Landroid/graphics/Matrix;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mVideoSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v0}, Lcom/yqritc/scalablevideoview/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v1}, Lcom/yqritc/scalablevideoview/Size;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mVideoSize:Lcom/yqritc/scalablevideoview/Size;

    .line 161
    invoke-virtual {v0}, Lcom/yqritc/scalablevideoview/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/yqritc/scalablevideoview/ScaleManager;->mViewSize:Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {v1}, Lcom/yqritc/scalablevideoview/Size;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 163
    sget-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->LEFT_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, v0}, Lcom/yqritc/scalablevideoview/ScaleManager;->getOriginalScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/yqritc/scalablevideoview/ScaleManager;->fitStart()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getScaleMatrix(Lcom/yqritc/scalablevideoview/ScalableType;)Landroid/graphics/Matrix;
    .locals 1

    .line 19
    sget-object v0, Lcom/yqritc/scalablevideoview/ScaleManager$1;->$SwitchMap$com$yqritc$scalablevideoview$ScalableType:[I

    invoke-virtual {p1}, Lcom/yqritc/scalablevideoview/ScalableType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 75
    :pswitch_0
    invoke-direct {p0}, Lcom/yqritc/scalablevideoview/ScaleManager;->endInside()Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 73
    :pswitch_1
    invoke-direct {p0}, Lcom/yqritc/scalablevideoview/ScaleManager;->centerInside()Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 71
    :pswitch_2
    invoke-direct {p0}, Lcom/yqritc/scalablevideoview/ScaleManager;->startInside()Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 68
    :pswitch_3
    sget-object p1, Lcom/yqritc/scalablevideoview/PivotPoint;->RIGHT_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getCropScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 66
    :pswitch_4
    sget-object p1, Lcom/yqritc/scalablevideoview/PivotPoint;->RIGHT_CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getCropScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 64
    :pswitch_5
    sget-object p1, Lcom/yqritc/scalablevideoview/PivotPoint;->RIGHT_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getCropScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 62
    :pswitch_6
    sget-object p1, Lcom/yqritc/scalablevideoview/PivotPoint;->CENTER_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getCropScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 60
    :pswitch_7
    sget-object p1, Lcom/yqritc/scalablevideoview/PivotPoint;->CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getCropScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 58
    :pswitch_8
    sget-object p1, Lcom/yqritc/scalablevideoview/PivotPoint;->CENTER_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getCropScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 56
    :pswitch_9
    sget-object p1, Lcom/yqritc/scalablevideoview/PivotPoint;->LEFT_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getCropScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 54
    :pswitch_a
    sget-object p1, Lcom/yqritc/scalablevideoview/PivotPoint;->LEFT_CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getCropScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 52
    :pswitch_b
    sget-object p1, Lcom/yqritc/scalablevideoview/PivotPoint;->LEFT_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getCropScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 49
    :pswitch_c
    sget-object p1, Lcom/yqritc/scalablevideoview/PivotPoint;->RIGHT_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getOriginalScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 47
    :pswitch_d
    sget-object p1, Lcom/yqritc/scalablevideoview/PivotPoint;->RIGHT_CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getOriginalScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 45
    :pswitch_e
    sget-object p1, Lcom/yqritc/scalablevideoview/PivotPoint;->RIGHT_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getOriginalScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 43
    :pswitch_f
    sget-object p1, Lcom/yqritc/scalablevideoview/PivotPoint;->CENTER_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getOriginalScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 41
    :pswitch_10
    sget-object p1, Lcom/yqritc/scalablevideoview/PivotPoint;->CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getOriginalScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 39
    :pswitch_11
    sget-object p1, Lcom/yqritc/scalablevideoview/PivotPoint;->CENTER_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getOriginalScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_12
    sget-object p1, Lcom/yqritc/scalablevideoview/PivotPoint;->LEFT_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getOriginalScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_13
    sget-object p1, Lcom/yqritc/scalablevideoview/PivotPoint;->LEFT_CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getOriginalScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 33
    :pswitch_14
    sget-object p1, Lcom/yqritc/scalablevideoview/PivotPoint;->LEFT_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScaleManager;->getOriginalScale(Lcom/yqritc/scalablevideoview/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 30
    :pswitch_15
    invoke-direct {p0}, Lcom/yqritc/scalablevideoview/ScaleManager;->fitEnd()Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 28
    :pswitch_16
    invoke-direct {p0}, Lcom/yqritc/scalablevideoview/ScaleManager;->fitStart()Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 26
    :pswitch_17
    invoke-direct {p0}, Lcom/yqritc/scalablevideoview/ScaleManager;->fitCenter()Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_18
    invoke-direct {p0}, Lcom/yqritc/scalablevideoview/ScaleManager;->fitXY()Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_19
    invoke-direct {p0}, Lcom/yqritc/scalablevideoview/ScaleManager;->getNoScale()Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
