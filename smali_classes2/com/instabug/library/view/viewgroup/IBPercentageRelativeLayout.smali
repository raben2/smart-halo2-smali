.class public Lcom/instabug/library/view/viewgroup/IBPercentageRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "IBPercentageRelativeLayout.java"

# interfaces
.implements Lcom/instabug/library/view/viewgroup/b;


# instance fields
.field private final maxHeightRatio:F

.field private final presenter:Lcom/instabug/library/view/viewgroup/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/instabug/library/view/viewgroup/IBPercentageRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/instabug/library/view/viewgroup/IBPercentageRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x42c80000    # 100.0f

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Lcom/instabug/library/R$styleable;->IBPercentageRelativeLayout:[I

    invoke-virtual {p3, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 6
    sget p3, Lcom/instabug/library/R$styleable;->IBPercentageRelativeLayout_maxHeightRatio:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/instabug/library/view/viewgroup/IBPercentageRelativeLayout;->maxHeightRatio:F

    .line 7
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 9
    :cond_0
    iput p1, p0, Lcom/instabug/library/view/viewgroup/IBPercentageRelativeLayout;->maxHeightRatio:F

    .line 11
    :goto_0
    new-instance p1, Lcom/instabug/library/view/viewgroup/c;

    invoke-direct {p1, p0}, Lcom/instabug/library/view/viewgroup/c;-><init>(Lcom/instabug/library/view/viewgroup/b;)V

    iput-object p1, p0, Lcom/instabug/library/view/viewgroup/IBPercentageRelativeLayout;->presenter:Lcom/instabug/library/view/viewgroup/a;

    return-void
.end method


# virtual methods
.method public getMaxHeightRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/view/viewgroup/IBPercentageRelativeLayout;->maxHeightRatio:F

    return v0
.end method

.method public getScreenHeight()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/ScreenUtility;->hasNavBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/ScreenUtility;->getNavigationBarHeight(Landroid/content/res/Resources;)I

    move-result v0

    .line 3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    return v0

    .line 5
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/view/viewgroup/IBPercentageRelativeLayout;->presenter:Lcom/instabug/library/view/viewgroup/a;

    invoke-interface {v0, p1, p2}, Lcom/instabug/library/view/viewgroup/a;->a(II)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-super {p0, p2, p1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method
