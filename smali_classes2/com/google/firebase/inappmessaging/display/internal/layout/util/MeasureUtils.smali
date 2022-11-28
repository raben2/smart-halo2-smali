.class public Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;
.super Ljava/lang/Object;
.source "MeasureUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static measure(Landroid/view/View;IIII)V
    .locals 3

    const-string v0, "\tdesired (w,h)"

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 56
    :cond_0
    invoke-static {p1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 57
    invoke-static {p2, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 55
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    const-string p1, "\tactual (w,h)"

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p1, p2, p0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    return-void
.end method

.method public static measureAtMost(Landroid/view/View;II)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 25
    invoke-static {p0, p1, p2, v0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measure(Landroid/view/View;IIII)V

    return-void
.end method

.method public static measureExactly(Landroid/view/View;II)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 30
    invoke-static {p0, p1, p2, v0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measure(Landroid/view/View;IIII)V

    return-void
.end method

.method public static measureFullHeight(Landroid/view/View;II)V
    .locals 2

    const/high16 v0, -0x80000000

    const/high16 v1, 0x40000000    # 2.0f

    .line 40
    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measure(Landroid/view/View;IIII)V

    return-void
.end method

.method public static measureFullWidth(Landroid/view/View;II)V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, -0x80000000

    .line 35
    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measure(Landroid/view/View;IIII)V

    return-void
.end method
