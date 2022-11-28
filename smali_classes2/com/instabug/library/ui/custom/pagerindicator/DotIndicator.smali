.class public final Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;
.super Landroid/widget/RelativeLayout;
.source "DotIndicator.java"

# interfaces
.implements Lcom/instabug/library/ui/custom/pagerindicator/SelectionIndicator;


# static fields
.field private static final DEFAULT_DOT_TRANSITION_DURATION_MS:I = 0xc8

.field private static final DEFAULT_NUMBER_OF_DOTS:I = 0x1

.field private static final DEFAULT_SELECTED_DOT_COLOR:I = -0x1

.field private static final DEFAULT_SELECTED_DOT_DIAMETER_DP:I = 0x9

.field private static final DEFAULT_SELECTED_DOT_INDEX:I = 0x0

.field private static final DEFAULT_SPACING_BETWEEN_DOTS_DP:I = 0x7

.field private static final DEFAULT_UNSELECTED_DOT_COLOR:I = -0x1

.field private static final DEFAULT_UNSELECTED_DOT_DIAMETER_DP:I = 0x6

.field private static final TAG:Ljava/lang/String; = "[DotIndicator]"


# instance fields
.field private dotTransitionDuration:I

.field private final dots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/ui/custom/pagerindicator/Dot;",
            ">;"
        }
    .end annotation
.end field

.field private numberOfDots:I

.field private selectedDotColor:I

.field private selectedDotDiameterPx:I

.field private selectedDotIndex:I

.field private spacingBetweenDotsPx:I

.field private unselectedDotColor:I

.field private unselectedDotDiameterPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
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

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->dots:Ljava/util/ArrayList;

    .line 25
    invoke-direct {p0, p2, p3}, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE",
            "CustomViewStyleable"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/R$styleable;->IBDotIndicator:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {p2, v0}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p2

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v1, v3}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v1

    .line 13
    sget v3, Lcom/instabug/library/R$styleable;->IBDotIndicator_ibViewPagerNumberOfDots:I

    const/4 v4, 0x1

    .line 14
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->numberOfDots:I

    .line 15
    sget v3, Lcom/instabug/library/R$styleable;->IBDotIndicator_ibViewPagerSelectedDotIndex:I

    .line 16
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->selectedDotIndex:I

    .line 18
    sget v2, Lcom/instabug/library/R$styleable;->IBDotIndicator_ibViewPagerUnselectedDotDiameter:I

    .line 19
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->unselectedDotDiameterPx:I

    .line 21
    sget v0, Lcom/instabug/library/R$styleable;->IBDotIndicator_ibViewPagerSelectedDotDiameter:I

    .line 22
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->selectedDotDiameterPx:I

    .line 24
    sget p2, Lcom/instabug/library/R$styleable;->IBDotIndicator_ibViewPagerUnselectedDotColor:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->unselectedDotColor:I

    .line 26
    sget p2, Lcom/instabug/library/R$styleable;->IBDotIndicator_ibViewPagerSelectedDotColor:I

    .line 27
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->selectedDotColor:I

    .line 29
    sget p2, Lcom/instabug/library/R$styleable;->IBDotIndicator_ibViewPagerSpacingBetweenDots:I

    .line 30
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->spacingBetweenDotsPx:I

    .line 32
    sget p2, Lcom/instabug/library/R$styleable;->IBDot_ibViewPagerTransitionDuration:I

    const/16 v1, 0xc8

    .line 33
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->dotTransitionDuration:I

    .line 37
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x11

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 42
    invoke-direct {p0}, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->reflectParametersInView()V

    return-void
.end method

.method private reflectParametersInView()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->dots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget v2, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->numberOfDots:I

    if-ge v1, v2, :cond_2

    .line 7
    new-instance v2, Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;-><init>(Landroid/content/Context;)V

    .line 8
    iget v3, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->unselectedDotDiameterPx:I

    invoke-virtual {v2, v3}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->setInactiveDiameterPx(I)Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    move-result-object v3

    iget v4, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->selectedDotDiameterPx:I

    .line 9
    invoke-virtual {v3, v4}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->setActiveDiameterPx(I)Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    move-result-object v3

    iget v4, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->selectedDotColor:I

    .line 10
    invoke-virtual {v3, v4}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->setActiveColor(I)Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    move-result-object v3

    iget v4, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->unselectedDotColor:I

    .line 11
    invoke-virtual {v3, v4}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->setInactiveColor(I)Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    move-result-object v3

    iget v4, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->dotTransitionDuration:I

    .line 12
    invoke-virtual {v3, v4}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->setTransitionDuration(I)Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    .line 16
    iget v3, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->selectedDotIndex:I

    if-ne v1, v3, :cond_0

    .line 17
    invoke-virtual {v2, v0}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->setActive(Z)V

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {v2, v0}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->setInactive(Z)V

    .line 23
    :goto_1
    iget v3, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->selectedDotDiameterPx:I

    iget v4, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->unselectedDotDiameterPx:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 24
    iget v4, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->spacingBetweenDotsPx:I

    iget v5, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->unselectedDotDiameterPx:I

    add-int/2addr v4, v5

    mul-int v4, v4, v1

    .line 25
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 26
    invoke-virtual {v5, v4, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 29
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v3, v6, :cond_1

    .line 30
    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 34
    :cond_1
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 38
    iget-object v3, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->dots:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getNumberOfItems()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->numberOfDots:I

    return v0
.end method

.method public getSelectedDotColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->selectedDotColor:I

    return v0
.end method

.method public getSelectedDotDiameter()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->selectedDotDiameterPx:I

    return v0
.end method

.method public getSelectedItemIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->selectedDotIndex:I

    return v0
.end method

.method public getSpacingBetweenDots()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->spacingBetweenDotsPx:I

    return v0
.end method

.method public getTransitionDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->dotTransitionDuration:I

    return v0
.end method

.method public getUnselectedDotColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->unselectedDotColor:I

    return v0
.end method

.method public getUnselectedDotDiameter()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->unselectedDotDiameterPx:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public redrawDots()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->reflectParametersInView()V

    return-void
.end method

.method public setNumberOfItems(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->numberOfDots:I

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->reflectParametersInView()V

    return-void
.end method

.method public setSelectedDotColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->selectedDotColor:I

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->reflectParametersInView()V

    return-void
.end method

.method public setSelectedDotDiameterDp(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->setSelectedDotDiameterPx(I)V

    return-void
.end method

.method public setSelectedDotDiameterPx(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->selectedDotDiameterPx:I

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->reflectParametersInView()V

    return-void
.end method

.method public setSelectedItem(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->dots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    :try_start_0
    iget v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->selectedDotIndex:I

    iget-object v1, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->dots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->dots:Ljava/util/ArrayList;

    iget v1, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->selectedDotIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    invoke-virtual {v0, p2}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->setInactive(Z)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->dots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/ui/custom/pagerindicator/Dot;

    invoke-virtual {v0, p2}, Lcom/instabug/library/ui/custom/pagerindicator/Dot;->setActive(Z)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    iput p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->selectedDotIndex:I

    goto :goto_0

    .line 15
    :catch_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setSpacingBetweenDotsDp(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->setSpacingBetweenDotsPx(I)V

    return-void
.end method

.method public setSpacingBetweenDotsPx(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->spacingBetweenDotsPx:I

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->reflectParametersInView()V

    return-void
.end method

.method public setTransitionDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->dotTransitionDuration:I

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->reflectParametersInView()V

    return-void
.end method

.method public setUnselectedDotColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->unselectedDotColor:I

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->reflectParametersInView()V

    return-void
.end method

.method public setUnselectedDotDiameterDp(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->setUnselectedDotDiameterPx(I)V

    return-void
.end method

.method public setUnselectedDotDiameterPx(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->unselectedDotDiameterPx:I

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->reflectParametersInView()V

    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
