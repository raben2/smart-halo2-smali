.class Lcom/google/android/material/card/MaterialCardViewHelper;
.super Ljava/lang/Object;
.source "MaterialCardViewHelper.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CARD_VIEW_SHADOW_MULTIPLIER:F = 1.5f

.field private static final CHECKED_ICON_LAYER_INDEX:I = 0x2

.field private static final CHECKED_STATE_SET:[I

.field private static final COS_45:D

.field private static final DEFAULT_STROKE_VALUE:I = -0x1

.field private static final SHADOW_OFFSET_MULTIPLIER:F = 0.25f

.field private static final SHADOW_RADIUS_MULTIPLIER:F = 0.75f


# instance fields
.field private final bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private checkable:Z

.field private checkedIcon:Landroid/graphics/drawable/Drawable;

.field private checkedIconTint:Landroid/content/res/ColorStateList;

.field private clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private compatRippleDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final drawableInsetByStroke:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private fgDrawable:Landroid/graphics/drawable/Drawable;

.field private final foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private isBackgroundOverwritten:Z

.field private final materialCardView:Lcom/google/android/material/card/MaterialCardView;

.field private rippleColor:Landroid/content/res/ColorStateList;

.field private rippleDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final shapeAppearanceModelInsetByStroke:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private strokeColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private strokeWidth:I
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private final temporaryBounds:Landroid/graphics/Rect;

.field private final userContentPadding:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 64
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/card/MaterialCardViewHelper;->CHECKED_STATE_SET:[I

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 69
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/card/MaterialCardViewHelper;->COS_45:D

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->userContentPadding:Landroid/graphics/Rect;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->temporaryBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->isBackgroundOverwritten:Z

    .line 127
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 128
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 129
    iget-object p4, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 130
    iget-object p4, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const v0, -0xbbbbbc

    invoke-virtual {p4, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowColor(I)V

    .line 131
    new-instance p4, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {p4, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object p4, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 133
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p4, Lcom/google/android/material/R$styleable;->CardView:[I

    sget v0, Lcom/google/android/material/R$style;->CardView:I

    .line 134
    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 135
    sget p2, Lcom/google/android/material/R$styleable;->CardView_cardCornerRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 136
    iget-object p2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    sget p3, Lcom/google/android/material/R$styleable;->CardView_cardCornerRadius:I

    const/4 p4, 0x0

    .line 137
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    .line 136
    invoke-virtual {p2, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setCornerRadius(F)V

    .line 140
    :cond_0
    new-instance p1, Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object p2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {p1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModelInsetByStroke:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 141
    new-instance p1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object p2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModelInsetByStroke:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {p1, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->drawableInsetByStroke:Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/card/MaterialCardViewHelper;)Landroid/graphics/Rect;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->temporaryBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/card/MaterialCardViewHelper;)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->drawableInsetByStroke:Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object p0
.end method

.method private adjustContentPadding(I)V
    .locals 4

    .line 569
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getContentPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    .line 570
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v1}, Lcom/google/android/material/card/MaterialCardView;->getContentPaddingTop()I

    move-result v1

    add-int/2addr v1, p1

    .line 571
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v2}, Lcom/google/android/material/card/MaterialCardView;->getContentPaddingRight()I

    move-result v2

    add-int/2addr v2, p1

    .line 572
    iget-object v3, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v3}, Lcom/google/android/material/card/MaterialCardView;->getContentPaddingBottom()I

    move-result v3

    add-int/2addr v3, p1

    .line 573
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/material/card/MaterialCardView;->setContentPadding(IIII)V

    return-void
.end method

.method private adjustShapeAppearanceModelInsetByStroke()V
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModelInsetByStroke:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 424
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 425
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v1

    iget v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/CornerTreatment;->setCornerSize(F)V

    .line 426
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModelInsetByStroke:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 427
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 428
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v1

    iget v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/CornerTreatment;->setCornerSize(F)V

    .line 429
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModelInsetByStroke:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 430
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 431
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v1

    iget v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/CornerTreatment;->setCornerSize(F)V

    .line 432
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModelInsetByStroke:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 433
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 434
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v1

    iget v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/CornerTreatment;->setCornerSize(F)V

    return-void
.end method

.method private calculateActualCornerPadding()F
    .locals 3

    .line 532
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 534
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateCornerPaddingForCornerTreatment(Lcom/google/android/material/shape/CornerTreatment;)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 535
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateCornerPaddingForCornerTreatment(Lcom/google/android/material/shape/CornerTreatment;)F

    move-result v1

    .line 533
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 537
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateCornerPaddingForCornerTreatment(Lcom/google/android/material/shape/CornerTreatment;)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 538
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateCornerPaddingForCornerTreatment(Lcom/google/android/material/shape/CornerTreatment;)F

    move-result v2

    .line 536
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 532
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private calculateCornerPaddingForCornerTreatment(Lcom/google/android/material/shape/CornerTreatment;)F
    .locals 4

    .line 542
    instance-of v0, p1, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 543
    sget-wide v2, Lcom/google/android/material/card/MaterialCardViewHelper;->COS_45:D

    sub-double/2addr v0, v2

    invoke-virtual {p1}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result p1

    float-to-double v2, p1

    mul-double v0, v0, v2

    double-to-float p1, v0

    return p1

    .line 544
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/shape/CutCornerTreatment;

    if-eqz v0, :cond_1

    .line 545
    invoke-virtual {p1}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private calculateHorizontalBackgroundPadding()F
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getMaxCardElevation()F

    move-result v0

    .line 498
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateActualCornerPadding()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0
.end method

.method private calculateVerticalBackgroundPadding()F
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getMaxCardElevation()F

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v0, v0, v1

    .line 488
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateActualCornerPadding()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0
.end method

.method private canClipToOutline()Z
    .locals 2

    .line 502
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private createCheckedIconLayer()Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 605
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 606
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 607
    sget-object v2, Lcom/google/android/material/card/MaterialCardViewHelper;->CHECKED_STATE_SET:[I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object v0
.end method

.method private createCompatRippleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 587
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 588
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->createForegroundShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->compatRippleDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 589
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->compatRippleDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    const/4 v1, 0x1

    .line 590
    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->compatRippleDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private createForegroundRippleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 578
    sget-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz v0, :cond_0

    .line 580
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->createForegroundShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    .line 583
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->createCompatRippleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private createForegroundShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 2

    .line 613
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-object v0
.end method

.method private getClickableForeground()Landroid/graphics/drawable/Drawable;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->createForegroundRippleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-nez v0, :cond_1

    .line 557
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->createCheckedIconLayer()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 558
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 561
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/google/android/material/R$id;->mtrl_card_checked_layer_id:I

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    return-object v0
.end method

.method private getParentCardViewCalculatedCornerPadding()F
    .locals 4

    .line 506
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getPreventCornerOverlap()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 507
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 508
    sget-wide v2, Lcom/google/android/material/card/MaterialCardViewHelper;->COS_45:D

    sub-double/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v2}, Lcom/google/android/material/card/MaterialCardView;->getCardViewRadius()F

    move-result v2

    float-to-double v2, v2

    mul-double v0, v0, v2

    double-to-float v0, v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private insetDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 464
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 465
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_2

    .line 467
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateVerticalBackgroundPadding()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    .line 468
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateHorizontalBackgroundPadding()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move v7, v0

    move v8, v1

    .line 470
    :goto_2
    new-instance v0, Lcom/google/android/material/card/MaterialCardViewHelper$2;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, v7

    move v6, v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/material/card/MaterialCardViewHelper$2;-><init>(Lcom/google/android/material/card/MaterialCardViewHelper;Landroid/graphics/drawable/Drawable;IIII)V

    return-object v0
.end method

.method private shouldAddCornerPaddingInsideCardBackground()Z
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getPreventCornerOverlap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->canClipToOutline()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldAddCornerPaddingOutsideCardBackground()Z
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getPreventCornerOverlap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->canClipToOutline()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 520
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateInsetForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 443
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 444
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-direct {p0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private updateRippleColor()V
    .locals 2

    .line 596
    sget-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 597
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->compatRippleDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_1

    .line 599
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method createOutlineProvider(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setClipToOutline(Z)V

    .line 303
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->canClipToOutline()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 304
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 305
    new-instance v0, Lcom/google/android/material/card/MaterialCardViewHelper$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/card/MaterialCardViewHelper$1;-><init>(Lcom/google/android/material/card/MaterialCardViewHelper;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    .line 315
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setClipToOutline(Z)V

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :goto_0
    return-void
.end method

.method forceRippleRedraw()V
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 418
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getCheckedIconTint()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getCornerRadius()F
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v0

    return v0
.end method

.method getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getStrokeColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 208
    iget v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:I

    return v0
.end method

.method getStrokeWidth()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 225
    iget v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    return v0
.end method

.method getUserContentPadding()Landroid/graphics/Rect;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->userContentPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method isBackgroundOverwritten()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->isBackgroundOverwritten:Z

    return v0
.end method

.method isCheckable()Z
    .locals 1

    .line 346
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkable:Z

    return v0
.end method

.method loadFromAttributes(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 146
    sget v0, Lcom/google/android/material/R$styleable;->MaterialCardView_strokeColor:I

    const/4 v1, -0x1

    .line 147
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:I

    .line 148
    sget v0, Lcom/google/android/material/R$styleable;->MaterialCardView_strokeWidth:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    .line 149
    sget v0, Lcom/google/android/material/R$styleable;->MaterialCardView_android_checkable:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkable:Z

    .line 150
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    iget-boolean v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkable:Z

    invoke-virtual {v0, v2}, Lcom/google/android/material/card/MaterialCardView;->setLongClickable(Z)V

    .line 151
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 152
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/google/android/material/R$styleable;->MaterialCardView_checkedIconTint:I

    .line 151
    invoke-static {v0, p1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconTint:Landroid/content/res/ColorStateList;

    .line 153
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 155
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/google/android/material/R$styleable;->MaterialCardView_checkedIcon:I

    .line 154
    invoke-static {v0, p1, v2}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 153
    invoke-virtual {p0, v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 159
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/google/android/material/R$styleable;->MaterialCardView_rippleColor:I

    .line 158
    invoke-static {v0, p1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 160
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    sget v2, Lcom/google/android/material/R$attr;->colorControlHighlight:I

    .line 163
    invoke-static {v0, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v0

    .line 162
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->adjustShapeAppearanceModelInsetByStroke()V

    .line 167
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 169
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/google/android/material/R$styleable;->MaterialCardView_cardForegroundColor:I

    .line 168
    invoke-static {v0, p1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 173
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-nez p1, :cond_1

    .line 174
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 173
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 176
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateRippleColor()V

    .line 178
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateElevation()V

    .line 179
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateStroke()V

    .line 181
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 183
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getClickableForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->fgDrawable:Landroid/graphics/drawable/Drawable;

    .line 184
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->fgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    invoke-direct {p0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->adjustContentPadding(I)V

    return-void
.end method

.method onMeasure(II)V
    .locals 8

    .line 390
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 393
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_card_checked_icon_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 394
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_card_checked_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p1, v5

    sub-int/2addr p1, v0

    sub-int/2addr p2, v5

    sub-int v7, p2, v0

    .line 398
    iget-object p2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move v6, p1

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, p1

    move v6, v5

    .line 405
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :cond_1
    return-void
.end method

.method setBackgroundOverwritten(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->isBackgroundOverwritten:Z

    return-void
.end method

.method setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method setCheckable(Z)V
    .locals 0

    .line 342
    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkable:Z

    return-void
.end method

.method setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 376
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 378
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 379
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconTint:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 382
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz p1, :cond_1

    .line 383
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->createCheckedIconLayer()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 384
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/google/android/material/R$id;->mtrl_card_checked_layer_id:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    :cond_1
    return-void
.end method

.method setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 354
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconTint:Landroid/content/res/ColorStateList;

    .line 355
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 356
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method setCornerRadius(F)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setCornerRadius(F)V

    .line 256
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModelInsetByStroke:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setCornerRadius(F)V

    .line 257
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 258
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->fgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 259
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    move-result p1

    if-nez p1, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingInsideCardBackground()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateContentPadding()V

    .line 263
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 264
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateInsets()V

    :cond_2
    return-void
.end method

.method setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 350
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method setStrokeColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 198
    iget v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:I

    if-ne v0, p1, :cond_0

    return-void

    .line 202
    :cond_0
    iput p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:I

    .line 203
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateStroke()V

    return-void
.end method

.method setStrokeWidth(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 212
    iget v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    sub-int v0, p1, v0

    .line 217
    iput p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    .line 218
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->adjustShapeAppearanceModelInsetByStroke()V

    .line 219
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateStroke()V

    .line 220
    invoke-direct {p0, v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->adjustContentPadding(I)V

    return-void
.end method

.method setUserContentPadding(IIII)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->userContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 238
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateContentPadding()V

    return-void
.end method

.method updateClickable()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->fgDrawable:Landroid/graphics/drawable/Drawable;

    .line 247
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 248
    invoke-virtual {v1}, Lcom/google/android/material/card/MaterialCardView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getClickableForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    :goto_0
    iput-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->fgDrawable:Landroid/graphics/drawable/Drawable;

    .line 249
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->fgDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 250
    invoke-direct {p0, v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateInsetForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method updateContentPadding()V
    .locals 6

    .line 326
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingInsideCardBackground()Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 332
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateActualCornerPadding()F

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 333
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getParentCardViewCalculatedCornerPadding()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 334
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->userContentPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->userContentPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->userContentPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->userContentPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/material/card/MaterialCardView;->setContentPaddingInternal(IIII)V

    return-void
.end method

.method updateElevation()V
    .locals 3

    .line 273
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v1}, Lcom/google/android/material/card/MaterialCardView;->getCardElevation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 276
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 277
    invoke-virtual {v1}, Lcom/google/android/material/card/MaterialCardView;->getCardElevation()F

    move-result v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 276
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowRadius(I)V

    .line 278
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 279
    invoke-virtual {v1}, Lcom/google/android/material/card/MaterialCardView;->getCardElevation()F

    move-result v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 278
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowVerticalOffset(I)V

    :cond_0
    return-void
.end method

.method updateInsets()V
    .locals 2

    .line 285
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->isBackgroundOverwritten()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {p0, v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->fgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method updateStroke()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FI)V

    return-void
.end method
