.class public Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;
.super Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;
.source "ModalLayoutLandscape.java"


# static fields
.field private static final ITEM_SPACING_DP:I = 0x18

.field private static final MAX_IMG_WIDTH_PCT:F = 0.4f


# instance fields
.field private barrierWidth:I

.field private buttonChild:Landroid/view/View;

.field private imageChild:Landroid/view/View;

.field private leftContentHeight:I

.field private rightContentHeight:I

.field private scrollChild:Landroid/view/View;

.field private titleChild:Landroid/view/View;

.field private vertItemSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected layoutCenterHorizontal(Landroid/view/View;IIII)V
    .locals 7

    sub-int/2addr p4, p2

    .line 188
    div-int/lit8 p4, p4, 0x2

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, p4

    sub-int v3, p2, v0

    add-int v5, p2, v0

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v6, p5

    .line 194
    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->layoutChild(Landroid/view/View;IIII)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 138
    invoke-super/range {p0 .. p5}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->onLayout(ZIIII)V

    .line 141
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getPaddingLeft()I

    move-result v2

    .line 142
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getPaddingTop()I

    move-result p1

    .line 143
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    .line 150
    iget p3, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->leftContentHeight:I

    iget p4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->rightContentHeight:I

    const/4 p5, 0x0

    if-ge p3, p4, :cond_0

    sub-int/2addr p4, p3

    .line 151
    div-int/lit8 p3, p4, 0x2

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    sub-int/2addr p3, p4

    .line 153
    div-int/lit8 p3, p3, 0x2

    move p4, p3

    const/4 p3, 0x0

    :goto_0
    const-string v0, "Layout image"

    .line 156
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    add-int v3, p1, p3

    .line 159
    iget-object p3, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->imageChild:Landroid/view/View;

    invoke-virtual {p0, p3}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getDesiredWidth(Landroid/view/View;)I

    move-result p3

    add-int/2addr p3, v2

    .line 160
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->imageChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getDesiredHeight(Landroid/view/View;)I

    move-result v0

    add-int v5, v3, v0

    .line 161
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->imageChild:Landroid/view/View;

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->layoutChild(Landroid/view/View;IIII)V

    .line 163
    iget v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->barrierWidth:I

    add-int/2addr p3, v0

    const-string v0, "Layout getTitle"

    .line 165
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    add-int v6, p1, p4

    .line 169
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->titleChild:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getDesiredHeight(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v6

    .line 170
    iget-object v4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->titleChild:Landroid/view/View;

    move-object v3, p0

    move v5, p3

    move v7, p2

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->layoutChild(Landroid/view/View;IIII)V

    const-string p4, "Layout getBody"

    .line 172
    invoke-static {p4}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 173
    iget-object p4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->titleChild:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 v0, 0x8

    if-ne p4, v0, :cond_1

    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    iget p4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->vertItemSpacing:I

    :goto_1
    add-int v6, p1, p4

    .line 176
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->scrollChild:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getDesiredHeight(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v6

    .line 178
    iget-object v4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->scrollChild:Landroid/view/View;

    move-object v3, p0

    move v5, p3

    move v7, p2

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->layoutChild(Landroid/view/View;IIII)V

    const-string p2, "Layout button"

    .line 180
    invoke-static {p2}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 181
    iget-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->scrollChild:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-ne p2, v0, :cond_2

    goto :goto_2

    :cond_2
    iget p5, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->vertItemSpacing:I

    :goto_2
    add-int/2addr p1, p5

    .line 184
    iget-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->buttonChild:Landroid/view/View;

    invoke-virtual {p0, p2, p3, p1}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->layoutChild(Landroid/view/View;II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 50
    invoke-super {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->onMeasure(II)V

    .line 52
    sget v0, Lcom/google/firebase/inappmessaging/display/R$id;->image_view:I

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->findChildById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->imageChild:Landroid/view/View;

    .line 54
    sget v0, Lcom/google/firebase/inappmessaging/display/R$id;->message_title:I

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->findChildById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->titleChild:Landroid/view/View;

    .line 55
    sget v0, Lcom/google/firebase/inappmessaging/display/R$id;->body_scroll:I

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->findChildById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->scrollChild:Landroid/view/View;

    .line 56
    sget v0, Lcom/google/firebase/inappmessaging/display/R$id;->button:I

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->findChildById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->buttonChild:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->imageChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x18

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->dpToPixels(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->barrierWidth:I

    .line 59
    invoke-virtual {p0, v1}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->dpToPixels(I)I

    move-result v0

    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->vertItemSpacing:I

    const/4 v0, 0x3

    .line 61
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->titleChild:Landroid/view/View;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->scrollChild:Landroid/view/View;

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->buttonChild:Landroid/view/View;

    aput-object v5, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getPaddingRight()I

    move-result v5

    add-int/2addr v1, v5

    .line 64
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->calculateBaseWidth(I)I

    move-result p1

    .line 67
    invoke-virtual {p0, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->calculateBaseHeight(I)I

    move-result p2

    sub-int/2addr p2, v5

    sub-int/2addr p1, v1

    const-string v6, "Measuring image"

    .line 73
    invoke-static {v6}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 74
    iget-object v6, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->imageChild:Landroid/view/View;

    int-to-float v7, p1

    const v8, 0x3ecccccd    # 0.4f

    mul-float v7, v7, v8

    float-to-int v7, v7

    invoke-static {v6, v7, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measureAtMost(Landroid/view/View;II)V

    .line 78
    iget-object v6, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->imageChild:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getDesiredWidth(Landroid/view/View;)I

    move-result v6

    .line 79
    iget v7, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->barrierWidth:I

    add-int/2addr v7, v6

    sub-int/2addr p1, v7

    const-string v7, "Max col widths (l, r)"

    int-to-float v8, v6

    int-to-float v9, p1

    .line 80
    invoke-static {v7, v8, v9}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 87
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v2, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    sub-int/2addr v9, v4

    .line 92
    iget v2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->vertItemSpacing:I

    mul-int v9, v9, v2

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr p2, v2

    const-string v4, "Measuring getTitle"

    .line 97
    invoke-static {v4}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 98
    iget-object v4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->titleChild:Landroid/view/View;

    invoke-static {v4, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measureAtMost(Landroid/view/View;II)V

    const-string v4, "Measuring button"

    .line 100
    invoke-static {v4}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 101
    iget-object v4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->buttonChild:Landroid/view/View;

    invoke-static {v4, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measureAtMost(Landroid/view/View;II)V

    const-string v4, "Measuring scroll view"

    .line 103
    invoke-static {v4}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 104
    iget-object v4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->titleChild:Landroid/view/View;

    .line 105
    invoke-virtual {p0, v4}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getDesiredHeight(Landroid/view/View;)I

    move-result v4

    sub-int/2addr p2, v4

    iget-object v4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->buttonChild:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getDesiredHeight(Landroid/view/View;)I

    move-result v4

    sub-int/2addr p2, v4

    .line 106
    iget-object v4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->scrollChild:Landroid/view/View;

    invoke-static {v4, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measureAtMost(Landroid/view/View;II)V

    .line 111
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->imageChild:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getDesiredHeight(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->leftContentHeight:I

    .line 112
    iput v2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->rightContentHeight:I

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 114
    iget v2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->rightContentHeight:I

    invoke-virtual {p0, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getDesiredHeight(Landroid/view/View;)I

    move-result p2

    add-int/2addr v2, p2

    iput v2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->rightContentHeight:I

    goto :goto_2

    .line 117
    :cond_3
    iget p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->leftContentHeight:I

    add-int/2addr p1, v5

    .line 118
    iget p2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->rightContentHeight:I

    add-int/2addr p2, v5

    .line 120
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 124
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 125
    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getDesiredWidth(Landroid/view/View;)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_3

    :cond_4
    const-string p2, "Measured columns (l, r)"

    int-to-float v0, v3

    .line 128
    invoke-static {p2, v8, v0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    add-int/2addr v6, v3

    .line 129
    iget p2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->barrierWidth:I

    add-int/2addr v6, p2

    add-int/2addr v6, v1

    const-string p2, "Measured dims"

    int-to-float v0, v6

    int-to-float v1, p1

    .line 132
    invoke-static {p2, v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 133
    invoke-virtual {p0, v6, p1}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->setMeasuredDimension(II)V

    return-void
.end method
