.class final Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$e;
.super Ljava/lang/Object;
.source "ScreenshotTaker.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker;->drawRootToBitmap(Lcom/instabug/library/instacapture/screenshot/RootViewInfo;Landroid/graphics/Bitmap;[ILandroid/app/Activity;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Landroid/util/Pair<",
        "Landroid/graphics/Canvas;",
        "Ljava/util/HashMap<",
        "Landroid/view/View;",
        "Ljava/lang/Integer;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/instacapture/screenshot/RootViewInfo;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:[I


# direct methods
.method constructor <init>(Lcom/instabug/library/instacapture/screenshot/RootViewInfo;Landroid/graphics/Bitmap;[I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$e;->a:Lcom/instabug/library/instacapture/screenshot/RootViewInfo;

    iput-object p2, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$e;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$e;->c:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Landroid/util/Pair<",
            "Landroid/graphics/Canvas;",
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$e;->a:Lcom/instabug/library/instacapture/screenshot/RootViewInfo;

    invoke-virtual {v0}, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$e;->b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    iget-object v1, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$e;->a:Lcom/instabug/library/instacapture/screenshot/RootViewInfo;

    invoke-virtual {v1}, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 6
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 9
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$e;->b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 10
    iget-object v1, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$e;->a:Lcom/instabug/library/instacapture/screenshot/RootViewInfo;

    invoke-virtual {v1}, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$e;->a:Lcom/instabug/library/instacapture/screenshot/RootViewInfo;

    invoke-virtual {v3}, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 12
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 13
    iget-object v3, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$e;->c:[I

    if-eqz v3, :cond_2

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$e;->c:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 15
    iget-object v3, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$e;->a:Lcom/instabug/library/instacapture/screenshot/RootViewInfo;

    invoke-virtual {v3}, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->getView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$e;->c:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 17
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    :cond_2
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method
