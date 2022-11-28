.class public Lcom/instabug/bug/view/CorneredImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "CorneredImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/bug/view/CorneredImageView$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/Path;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/instabug/bug/view/CorneredImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/instabug/bug/view/CorneredImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/instabug/bug/view/CorneredImageView;->a:Landroid/graphics/RectF;

    .line 5
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/instabug/bug/view/CorneredImageView;->b:Landroid/graphics/Path;

    .line 21
    sget-object p3, Lcom/instabug/bug/R$styleable;->CorneredImageView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 22
    sget p2, Lcom/instabug/bug/R$styleable;->CorneredImageView_ib_bug_cornerRadius:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/instabug/bug/view/CorneredImageView;->c:I

    .line 24
    sget p2, Lcom/instabug/bug/R$styleable;->CorneredImageView_ib_bug_roundedCorners:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/instabug/bug/view/CorneredImageView;->d:I

    .line 26
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/view/CorneredImageView;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 3
    iget v0, p0, Lcom/instabug/bug/view/CorneredImageView;->c:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/instabug/bug/view/CorneredImageView;->d:I

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getWidth()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getHeight()I

    move-result v1

    .line 6
    iget v2, p0, Lcom/instabug/bug/view/CorneredImageView;->c:I

    mul-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    .line 7
    iget-object v4, p0, Lcom/instabug/bug/view/CorneredImageView;->a:Landroid/graphics/RectF;

    neg-int v5, v2

    int-to-float v5, v5

    int-to-float v2, v2

    invoke-virtual {v4, v5, v5, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v2, 0x1

    .line 9
    invoke-direct {p0, v2}, Lcom/instabug/bug/view/CorneredImageView;->a(I)Z

    move-result v2

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 10
    iget-object v2, p0, Lcom/instabug/bug/view/CorneredImageView;->a:Landroid/graphics/RectF;

    invoke-virtual {v2, v5, v5}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 11
    iget-object v2, p0, Lcom/instabug/bug/view/CorneredImageView;->b:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/instabug/bug/view/CorneredImageView;->a:Landroid/graphics/RectF;

    const/high16 v7, 0x43340000    # 180.0f

    invoke-virtual {v2, v6, v7, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/instabug/bug/view/CorneredImageView;->b:Landroid/graphics/Path;

    invoke-virtual {v2, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_0
    const/4 v2, 0x2

    .line 16
    invoke-direct {p0, v2}, Lcom/instabug/bug/view/CorneredImageView;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    iget-object v2, p0, Lcom/instabug/bug/view/CorneredImageView;->a:Landroid/graphics/RectF;

    int-to-float v6, v0

    sub-float/2addr v6, v3

    invoke-virtual {v2, v6, v5}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 18
    iget-object v2, p0, Lcom/instabug/bug/view/CorneredImageView;->b:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/instabug/bug/view/CorneredImageView;->a:Landroid/graphics/RectF;

    const/high16 v7, 0x43870000    # 270.0f

    invoke-virtual {v2, v6, v7, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_1

    .line 20
    :cond_1
    iget-object v2, p0, Lcom/instabug/bug/view/CorneredImageView;->b:Landroid/graphics/Path;

    int-to-float v6, v0

    invoke-virtual {v2, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    const/4 v2, 0x4

    .line 23
    invoke-direct {p0, v2}, Lcom/instabug/bug/view/CorneredImageView;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 24
    iget-object v2, p0, Lcom/instabug/bug/view/CorneredImageView;->a:Landroid/graphics/RectF;

    int-to-float v0, v0

    sub-float/2addr v0, v3

    int-to-float v6, v1

    sub-float/2addr v6, v3

    invoke-virtual {v2, v0, v6}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 25
    iget-object v0, p0, Lcom/instabug/bug/view/CorneredImageView;->b:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/instabug/bug/view/CorneredImageView;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v5, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_2

    .line 27
    :cond_2
    iget-object v2, p0, Lcom/instabug/bug/view/CorneredImageView;->b:Landroid/graphics/Path;

    int-to-float v0, v0

    int-to-float v6, v1

    invoke-virtual {v2, v0, v6}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    const/16 v0, 0x8

    .line 30
    invoke-direct {p0, v0}, Lcom/instabug/bug/view/CorneredImageView;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    iget-object v0, p0, Lcom/instabug/bug/view/CorneredImageView;->a:Landroid/graphics/RectF;

    int-to-float v1, v1

    sub-float/2addr v1, v3

    invoke-virtual {v0, v5, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 32
    iget-object v0, p0, Lcom/instabug/bug/view/CorneredImageView;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/instabug/bug/view/CorneredImageView;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v4, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_3

    .line 34
    :cond_3
    iget-object v0, p0, Lcom/instabug/bug/view/CorneredImageView;->b:Landroid/graphics/Path;

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 37
    :goto_3
    iget-object v0, p0, Lcom/instabug/bug/view/CorneredImageView;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    :cond_4
    return-void
.end method

.method private a(I)Z
    .locals 1

    .line 38
    iget v0, p0, Lcom/instabug/bug/view/CorneredImageView;->d:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/bug/view/CorneredImageView;->c:I

    return v0
.end method

.method public getRoundedCorners()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/bug/view/CorneredImageView;->d:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/view/CorneredImageView;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/view/CorneredImageView;->b:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->onSizeChanged(IIII)V

    .line 2
    invoke-direct {p0}, Lcom/instabug/bug/view/CorneredImageView;->a()V

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/bug/view/CorneredImageView;->c:I

    .line 2
    invoke-direct {p0}, Lcom/instabug/bug/view/CorneredImageView;->a()V

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->invalidate()V

    return-void
.end method

.method public setRoundedCorners(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/instabug/bug/view/CorneredImageView;->d:I

    .line 2
    invoke-direct {p0}, Lcom/instabug/bug/view/CorneredImageView;->a()V

    .line 3
    new-instance p1, Lcom/instabug/bug/view/CorneredImageView$a;

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Lcom/instabug/bug/view/CorneredImageView$a;-><init>(II)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->invalidate()V

    return-void
.end method
