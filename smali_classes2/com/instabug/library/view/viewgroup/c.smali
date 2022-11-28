.class Lcom/instabug/library/view/viewgroup/c;
.super Ljava/lang/Object;
.source "PercentageRelativeLayoutPresenter.java"

# interfaces
.implements Lcom/instabug/library/view/viewgroup/a;


# instance fields
.field private final a:Lcom/instabug/library/view/viewgroup/b;


# direct methods
.method constructor <init>(Lcom/instabug/library/view/viewgroup/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/view/viewgroup/c;->a:Lcom/instabug/library/view/viewgroup/b;

    return-void
.end method


# virtual methods
.method public a(II)[I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/view/viewgroup/c;->a:Lcom/instabug/library/view/viewgroup/b;

    invoke-interface {v0}, Lcom/instabug/library/view/viewgroup/b;->getScreenHeight()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/instabug/library/view/viewgroup/c;->a:Lcom/instabug/library/view/viewgroup/b;

    invoke-interface {v1}, Lcom/instabug/library/view/viewgroup/b;->getMaxHeightRatio()F

    move-result v1

    float-to-int v1, v1

    .line 3
    invoke-static {v0, v1}, Lcom/instabug/library/util/d;->a(FI)F

    move-result v0

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    float-to-int v0, v0

    .line 7
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_0
    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    return-object v0
.end method
