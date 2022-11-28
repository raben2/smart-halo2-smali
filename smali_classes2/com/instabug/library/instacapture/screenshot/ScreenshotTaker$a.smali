.class final Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$a;
.super Ljava/lang/Object;
.source "ScreenshotTaker.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker;->drawRootsToBitmap(Ljava/util/List;Landroid/graphics/Bitmap;[ILandroid/app/Activity;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/instabug/library/instacapture/screenshot/RootViewInfo;",
        "Lio/reactivex/ObservableSource<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:[I

.field final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;[ILandroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$a;->a:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$a;->b:[I

    iput-object p3, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$a;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/instacapture/screenshot/RootViewInfo;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/instacapture/screenshot/RootViewInfo;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$a;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$a;->b:[I

    iget-object v2, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$a;->c:Landroid/app/Activity;

    invoke-static {p1, v0, v1, v2}, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker;->access$000(Lcom/instabug/library/instacapture/screenshot/RootViewInfo;Landroid/graphics/Bitmap;[ILandroid/app/Activity;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;

    invoke-virtual {p0, p1}, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$a;->a(Lcom/instabug/library/instacapture/screenshot/RootViewInfo;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
