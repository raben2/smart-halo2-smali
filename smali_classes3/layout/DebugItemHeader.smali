.class public Llayout/DebugItemHeader;
.super Landroid/widget/LinearLayout;
.source "DebugItemHeader.java"


# instance fields
.field private areViewsFolded:Z

.field private description:Landroid/widget/TextView;

.field foldingIcon:Landroid/widget/ImageView;

.field private icon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Llayout/DebugItemHeader;->areViewsFolded:Z

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Llayout/DebugItemHeader;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Llayout/DebugItemHeader;->areViewsFolded:Z

    .line 41
    invoke-direct {p0, p1, p2}, Llayout/DebugItemHeader;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 27
    iput-boolean p3, p0, Llayout/DebugItemHeader;->areViewsFolded:Z

    .line 36
    invoke-direct {p0, p1, p2}, Llayout/DebugItemHeader;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const v0, 0x7f0d00cc

    .line 45
    invoke-static {p1, v0, p0}, Llayout/DebugItemHeader;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a01d6

    .line 47
    invoke-virtual {p0, v0}, Llayout/DebugItemHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llayout/DebugItemHeader;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a01d5

    .line 48
    invoke-virtual {p0, v0}, Llayout/DebugItemHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llayout/DebugItemHeader;->description:Landroid/widget/TextView;

    .line 50
    sget-object v0, Lbike/smarthalo/app/R$styleable;->DebugItemHeader:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 56
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object v2, p0, Llayout/DebugItemHeader;->description:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 61
    iget-object v2, p0, Llayout/DebugItemHeader;->icon:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Llayout/DebugItemHeader;->icon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    :goto_0
    invoke-virtual {p0}, Llayout/DebugItemHeader;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0xc

    invoke-static {p1, v0}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    float-to-int p1, p1

    .line 68
    invoke-virtual {p0, v1, p1, v1, p1}, Llayout/DebugItemHeader;->setPadding(IIII)V

    const p1, 0x7f0a01a9

    .line 70
    invoke-virtual {p0, p1}, Llayout/DebugItemHeader;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llayout/DebugItemHeader;->foldingIcon:Landroid/widget/ImageView;

    .line 71
    new-instance p1, Llayout/-$$Lambda$DebugItemHeader$bFcy-ZIGWL5Pe05Uo_rG00kpijk;

    invoke-direct {p1, p0}, Llayout/-$$Lambda$DebugItemHeader$bFcy-ZIGWL5Pe05Uo_rG00kpijk;-><init>(Llayout/DebugItemHeader;)V

    invoke-virtual {p0, p1}, Llayout/DebugItemHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic lambda$init$0(Llayout/DebugItemHeader;Landroid/view/View;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Llayout/DebugItemHeader;->toggleFold()V

    return-void
.end method

.method private toggleFold()V
    .locals 12

    .line 77
    invoke-virtual {p0}, Llayout/DebugItemHeader;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 78
    iget-boolean v1, p0, Llayout/DebugItemHeader;->areViewsFolded:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Llayout/DebugItemHeader;->areViewsFolded:Z

    .line 80
    invoke-virtual {p0}, Llayout/DebugItemHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    .line 81
    invoke-virtual {p0}, Llayout/DebugItemHeader;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    float-to-int v4, v3

    .line 83
    iget-boolean v5, p0, Llayout/DebugItemHeader;->areViewsFolded:Z

    if-eqz v5, :cond_0

    move v1, v3

    :cond_0
    float-to-int v1, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v4, v3, v1}, Llayout/DebugItemHeader;->setPadding(IIII)V

    .line 90
    new-instance v1, Landroid/view/animation/RotateAnimation;

    iget-boolean v4, p0, Llayout/DebugItemHeader;->areViewsFolded:Z

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    const/high16 v4, 0x43340000    # 180.0f

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget-boolean v7, p0, Llayout/DebugItemHeader;->areViewsFolded:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    const/high16 v7, 0x43340000    # 180.0f

    :goto_1
    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v5, v1

    move v6, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 97
    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    const-wide/16 v4, 0x12c

    .line 98
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 99
    iget-object v4, p0, Llayout/DebugItemHeader;->foldingIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 101
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 102
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 103
    iget-boolean v4, p0, Llayout/DebugItemHeader;->areViewsFolded:Z

    if-eqz v4, :cond_3

    const/16 v4, 0x8

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method
