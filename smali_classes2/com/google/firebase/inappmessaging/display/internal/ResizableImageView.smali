.class public Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ResizableImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;
    }
.end annotation


# instance fields
.field private mDensityDpi:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private bound(II)Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;
    .locals 4

    .line 130
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->getMaxWidth()I

    move-result v0

    .line 131
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->getMaxHeight()I

    move-result v1

    if-le p1, v0, :cond_0

    const-string v2, "Image: capping width"

    int-to-float v3, v0

    .line 134
    invoke-static {v2, v3}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdNumber(Ljava/lang/String;F)V

    mul-int p2, p2, v0

    .line 135
    div-int/2addr p2, p1

    move p1, v0

    :cond_0
    if-le p2, v1, :cond_1

    const-string v0, "Image: capping height"

    int-to-float v2, v1

    .line 140
    invoke-static {v0, v2}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdNumber(Ljava/lang/String;F)V

    mul-int p1, p1, v1

    .line 141
    div-int/2addr p1, p2

    move p2, v1

    .line 145
    :cond_1
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;-><init>(IILcom/google/firebase/inappmessaging/display/internal/ResizableImageView$1;)V

    return-object v0
.end method

.method private checkMinDim()V
    .locals 11

    .line 75
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 76
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->getMinimumHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 77
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->getMeasuredWidth()I

    move-result v2

    .line 78
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->getMeasuredHeight()I

    move-result v3

    const-string v4, "Image: min width, height"

    int-to-float v5, v0

    int-to-float v6, v1

    .line 80
    invoke-static {v4, v5, v6}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    const-string v4, "Image: actual width, height"

    int-to-float v7, v2

    int-to-float v8, v3

    .line 81
    invoke-static {v4, v7, v8}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v0, :cond_0

    div-float v0, v5, v7

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    if-ge v3, v1, :cond_1

    div-float v4, v6, v8

    :cond_1
    cmpl-float v1, v0, v4

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    float-to-double v4, v0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v4, v9

    if-lez v1, :cond_3

    mul-float v7, v7, v0

    float-to-double v4, v7

    .line 97
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    mul-float v8, v8, v0

    float-to-double v4, v8

    .line 98
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Measured dimension ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") too small.  Resizing to "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, v1, v0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->bound(II)Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;

    move-result-object v0

    .line 109
    iget v1, v0, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;->w:I

    iget v0, v0, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;->h:I

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->setMeasuredDimension(II)V

    :cond_3
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 57
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x43200000    # 160.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->mDensityDpi:I

    return-void
.end method

.method private scalePxToDp(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 114
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 115
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    const-string v1, "Image: intrinsic width, height"

    int-to-float v2, v0

    int-to-float v3, p1

    .line 117
    invoke-static {v1, v2, v3}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 120
    iget v1, p0, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->mDensityDpi:I

    mul-int v0, v0, v1

    div-int/lit16 v0, v0, 0xa0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 121
    iget v1, p0, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->mDensityDpi:I

    mul-int p1, p1, v1

    div-int/lit16 p1, p1, 0xa0

    int-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    .line 123
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->bound(II)Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;

    move-result-object p1

    const-string v0, "Image: new target dimensions"

    .line 125
    iget v1, p1, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;->w:I

    int-to-float v1, v1

    iget v2, p1, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;->h:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 126
    iget v0, p1, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;->w:I

    iget p1, p1, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;->h:I

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->setMeasuredDimension(II)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    .line 63
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-le p1, p2, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 65
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->getAdjustViewBounds()Z

    move-result p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 68
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->scalePxToDp(Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->checkMinDim()V

    :cond_0
    return-void
.end method
