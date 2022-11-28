.class public Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;
.super Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;
.source "ModalLayoutPortrait.java"


# static fields
.field private static final ITEM_SPACING_DP:I = 0x18


# instance fields
.field private vertItemSpacing:I

.field private vgm:Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance p1, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;

    invoke-direct {p1}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->vgm:Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;

    return-void
.end method

.method private isFlex(Landroid/view/View;)Z
    .locals 2

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->body_scroll:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/google/firebase/inappmessaging/display/R$id;->image_view:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8

    .line 110
    invoke-super/range {p0 .. p5}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->onLayout(ZIIII)V

    .line 112
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getPaddingTop()I

    move-result p1

    .line 113
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getPaddingLeft()I

    move-result p3

    .line 115
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getVisibleChildren()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getVisibleChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 118
    invoke-virtual {p0, v1}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 120
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 121
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, p1

    .line 130
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v5, 0x1

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_0

    sub-int v2, p4, p2

    .line 131
    div-int/lit8 v2, v2, 0x2

    .line 132
    div-int/lit8 v4, v4, 0x2

    sub-int v5, v2, v4

    add-int/2addr v2, v4

    goto :goto_1

    :cond_0
    add-int v2, p3, v4

    move v5, p3

    .line 141
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Layout child "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    const-string v4, "\t(top, bottom)"

    int-to-float v6, p1

    int-to-float v7, v3

    .line 142
    invoke-static {v4, v6, v7}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    const-string v4, "\t(left, right)"

    int-to-float v6, v5

    int-to-float v7, v2

    .line 143
    invoke-static {v4, v6, v7}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 144
    invoke-virtual {v1, v5, p1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 147
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr p1, v1

    add-int/lit8 v1, p5, -0x1

    if-ge v0, v1, :cond_1

    .line 151
    iget v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->vertItemSpacing:I

    add-int/2addr p1, v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 49
    invoke-super {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->onMeasure(II)V

    const/16 v0, 0x18

    .line 51
    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->dpToPixels(I)I

    move-result v0

    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->vertItemSpacing:I

    .line 53
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->calculateBaseWidth(I)I

    move-result p1

    .line 57
    invoke-virtual {p0, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->calculateBaseHeight(I)I

    move-result p2

    .line 59
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getVisibleChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->vertItemSpacing:I

    mul-int v2, v2, v4

    add-int/2addr v1, v2

    .line 62
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->vgm:Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;

    invoke-virtual {v2, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->reset(II)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 63
    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 64
    invoke-virtual {p0, v4}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 65
    iget-object v6, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->vgm:Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;

    invoke-direct {p0, v5}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->isFlex(Landroid/view/View;)Z

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->add(Landroid/view/View;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen dimens: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    const-string v4, "Max pct"

    .line 69
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getMaxWidthPct()F

    move-result v5

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getMaxHeightPct()F

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    const-string v4, "Base dimens"

    int-to-float v5, p1

    int-to-float v6, p2

    .line 70
    invoke-static {v4, v5, v6}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 75
    iget-object v4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->vgm:Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;

    invoke-virtual {v4}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->getViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;

    const-string v7, "Pre-measure child"

    .line 76
    invoke-static {v7}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v6, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->preMeasure(II)V

    goto :goto_1

    .line 79
    :cond_1
    iget-object v4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->vgm:Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;

    invoke-virtual {v4}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->getTotalHeight()I

    move-result v4

    add-int/2addr v4, v1

    const-string v6, "Total reserved height"

    int-to-float v7, v1

    .line 81
    invoke-static {v6, v7}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdNumber(Ljava/lang/String;F)V

    const-string v6, "Total desired height"

    int-to-float v7, v4

    .line 82
    invoke-static {v6, v7}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdNumber(Ljava/lang/String;F)V

    if-le v4, p2, :cond_2

    const/4 v2, 0x1

    .line 87
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total height constrained: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    sub-int/2addr p2, v1

    .line 91
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->vgm:Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;

    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->getTotalFixedHeight()I

    move-result v2

    sub-int/2addr p2, v2

    .line 92
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->vgm:Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;

    invoke-virtual {v2, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->allocateSpace(I)V

    :cond_3
    sub-int p2, p1, v0

    .line 98
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->vgm:Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->getViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;

    const-string v3, "Measuring child"

    .line 99
    invoke-static {v3}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->getMaxHeight()I

    move-result v4

    invoke-static {v3, p2, v4}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measureAtMost(Landroid/view/View;II)V

    .line 101
    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getDesiredHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2

    :cond_4
    const-string p2, "Measured dims"

    int-to-float v0, v1

    .line 104
    invoke-static {p2, v5, v0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 105
    invoke-virtual {p0, p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->setMeasuredDimension(II)V

    return-void
.end method
