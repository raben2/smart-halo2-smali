.class public Lcom/instabug/library/view/IconView;
.super Landroid/widget/TextView;
.source "IconView.java"


# static fields
.field public static final ANDROID_ACTIONBAR_ICON_SIZE_DP:I = 0x18

.field public static final ANDROID_ACTIONBAR_ICON_SIZE_PADDING_DP:I = 0x1


# instance fields
.field backgroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field paint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field strokeColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field strokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/instabug/library/view/IconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/instabug/library/view/IconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput p3, p0, Lcom/instabug/library/view/IconView;->backgroundColor:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/instabug/library/view/IconView;->strokeWidth:F

    .line 7
    iput p3, p0, Lcom/instabug/library/view/IconView;->strokeColor:I

    .line 25
    invoke-virtual {p0}, Landroid/widget/TextView;->isInEditMode()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 29
    :cond_0
    sget p3, Lcom/instabug/library/R$font;->ibg_font_icons:I

    invoke-static {p1, p3}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p3

    .line 31
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 33
    sget-object p3, Lcom/instabug/library/R$styleable;->IconView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 35
    sget p2, Lcom/instabug/library/R$styleable;->IconView_android_textSize:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 36
    invoke-direct {p0}, Lcom/instabug/library/view/IconView;->setActionBarSize()V

    .line 39
    :cond_1
    sget p2, Lcom/instabug/library/R$styleable;->IconView_android_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 40
    invoke-direct {p0}, Lcom/instabug/library/view/IconView;->setActionBarPadding()V

    .line 43
    :cond_2
    sget p2, Lcom/instabug/library/R$styleable;->IconView_android_textColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-nez p2, :cond_3

    .line 44
    invoke-static {}, Lcom/instabug/library/settings/a;->D()Lcom/instabug/library/settings/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/instabug/library/settings/a;->l()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    :cond_3
    sget p2, Lcom/instabug/library/R$styleable;->IconView_instabug_icon:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, p3, :cond_4

    .line 50
    invoke-static {p2}, Lcom/instabug/library/view/a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/instabug/library/view/IconView;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method private setActionBarPadding()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/instabug/library/view/IconView;->setPadding(I)V

    return-void
.end method

.method private setActionBarSize()V
    .locals 2

    const/4 v0, 0x1

    const/high16 v1, 0x41c00000    # 24.0f

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/instabug/library/view/IconView;->paint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/instabug/library/view/IconView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/instabug/library/view/IconView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p0, Lcom/instabug/library/view/IconView;->strokeWidth:F

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/instabug/library/view/IconView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 8
    iget-object v0, p0, Lcom/instabug/library/view/IconView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/instabug/library/view/IconView;->strokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    iget-object v0, p0, Lcom/instabug/library/view/IconView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/instabug/library/view/IconView;->strokeColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object v0, p0, Lcom/instabug/library/view/IconView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p0, Lcom/instabug/library/view/IconView;->strokeWidth:F

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    iget-object v1, p0, Lcom/instabug/library/view/IconView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 17
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/instabug/library/view/IconView;->backgroundColor:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setPadding(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/instabug/library/view/IconView;->strokeColor:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/library/view/IconView;->strokeWidth:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
