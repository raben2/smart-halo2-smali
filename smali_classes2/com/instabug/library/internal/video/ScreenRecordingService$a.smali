.class Lcom/instabug/library/internal/video/ScreenRecordingService$a;
.super Ljava/lang/Object;
.source "ScreenRecordingService.java"

# interfaces
.implements Lcom/instabug/library/internal/video/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/internal/video/ScreenRecordingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/internal/video/ScreenRecordingService;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/video/ScreenRecordingService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/video/ScreenRecordingService$a;->a:Lcom/instabug/library/internal/video/ScreenRecordingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService$a;->a:Lcom/instabug/library/internal/video/ScreenRecordingService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService$a;->a:Lcom/instabug/library/internal/video/ScreenRecordingService;

    invoke-static {v0}, Lcom/instabug/library/internal/video/ScreenRecordingService;->a(Lcom/instabug/library/internal/video/ScreenRecordingService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->onRecordingError()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method
