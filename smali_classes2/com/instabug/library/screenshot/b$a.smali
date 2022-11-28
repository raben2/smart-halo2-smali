.class Lcom/instabug/library/screenshot/b$a;
.super Ljava/lang/Object;
.source "ScreenshotManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/screenshot/b;->b(Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;

.field final synthetic b:Lcom/instabug/library/screenshot/b;


# direct methods
.method constructor <init>(Lcom/instabug/library/screenshot/b;Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/screenshot/b$a;->b:Lcom/instabug/library/screenshot/b;

    iput-object p2, p0, Lcom/instabug/library/screenshot/b$a;->a:Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/screenshot/b$a;->b:Lcom/instabug/library/screenshot/b;

    new-instance v1, Lcom/instabug/library/screenshot/b$a$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/screenshot/b$a$a;-><init>(Lcom/instabug/library/screenshot/b$a;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/screenshot/b;->a(Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;)V

    return-void
.end method
