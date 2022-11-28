.class public final Lcom/instabug/library/instacapture/screenshot/b;
.super Ljava/lang/Object;
.source "ViewsBitmapObservable.java"


# direct methods
.method public static a(Landroid/app/Activity;[I)Lio/reactivex/Observable;
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[I)",
            "Lio/reactivex/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker;->getScreenshotBitmap(Landroid/app/Activity;[I)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
