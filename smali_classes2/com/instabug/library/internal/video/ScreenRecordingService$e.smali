.class Lcom/instabug/library/internal/video/ScreenRecordingService$e;
.super Ljava/lang/Object;
.source "ScreenRecordingService.java"

# interfaces
.implements Lcom/instabug/library/internal/video/d/f$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/internal/video/ScreenRecordingService;->a()V
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
    iput-object p1, p0, Lcom/instabug/library/internal/video/ScreenRecordingService$e;->a:Lcom/instabug/library/internal/video/ScreenRecordingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/instabug/library/internal/video/ScreenRecordingService$e;->a:Lcom/instabug/library/internal/video/ScreenRecordingService;

    invoke-static {p1}, Lcom/instabug/library/internal/video/ScreenRecordingService;->c(Lcom/instabug/library/internal/video/ScreenRecordingService;)Lcom/instabug/library/internal/video/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/instabug/library/internal/video/ScreenRecordingService$e;->a:Lcom/instabug/library/internal/video/ScreenRecordingService;

    invoke-static {p1}, Lcom/instabug/library/internal/video/ScreenRecordingService;->c(Lcom/instabug/library/internal/video/ScreenRecordingService;)Lcom/instabug/library/internal/video/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/internal/video/b;->a()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/internal/video/ScreenRecordingService$e;->a:Lcom/instabug/library/internal/video/ScreenRecordingService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method
