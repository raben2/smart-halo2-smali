.class final Lcom/instabug/library/screenshot/ScreenshotProvider$a;
.super Lcom/instabug/library/k/d/b;
.source "ScreenshotProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/screenshot/ScreenshotProvider;->a(Landroid/app/Activity;Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;


# direct methods
.method constructor <init>(Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/screenshot/ScreenshotProvider$a;->a:Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;

    invoke-direct {p0}, Lcom/instabug/library/k/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/screenshot/ScreenshotProvider$a;->a:Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;

    .line 3
    invoke-interface {v0, p1}, Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;->onScreenshotCapturedSuccessfully(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/instabug/library/screenshot/ScreenshotProvider$a;->a:Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;

    .line 5
    invoke-interface {v0, p1}, Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;->onScreenshotCapturingFailed(Ljava/lang/Throwable;)V

    return-void
.end method
