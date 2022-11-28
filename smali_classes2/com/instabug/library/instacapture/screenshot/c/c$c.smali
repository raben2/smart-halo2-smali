.class final Lcom/instabug/library/instacapture/screenshot/c/c$c;
.super Ljava/lang/Object;
.source "PixelCopyDelegate.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/instacapture/screenshot/c/c;->c(Landroid/app/Activity;[I)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/instacapture/screenshot/c/c$c;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/instacapture/screenshot/c/b;

    iget-object v1, p0, Lcom/instabug/library/instacapture/screenshot/c/c$c;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/instabug/library/instacapture/screenshot/c/b;-><init>(Landroid/app/Activity;)V

    .line 4
    :try_start_0
    iget v1, v0, Lcom/instabug/library/instacapture/screenshot/c/b;->a:I

    iget v2, v0, Lcom/instabug/library/instacapture/screenshot/c/b;->b:I

    mul-int v1, v1, v2

    mul-int/lit8 v1, v1, 0x4

    int-to-long v1, v1

    iget-object v3, p0, Lcom/instabug/library/instacapture/screenshot/c/c$c;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/instabug/library/k/e/a;->a(Landroid/content/Context;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 6
    iget v1, v0, Lcom/instabug/library/instacapture/screenshot/c/b;->a:I

    iget v0, v0, Lcom/instabug/library/instacapture/screenshot/c/b;->b:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_0
    iget v1, v0, Lcom/instabug/library/instacapture/screenshot/c/b;->a:I

    iget v0, v0, Lcom/instabug/library/instacapture/screenshot/c/b;->b:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v1, "PixelCopyDelegate"

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "Something went wrong while capturing "

    goto :goto_2

    :cond_1
    const-string v2, ""

    :goto_2
    invoke-static {v1, v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
