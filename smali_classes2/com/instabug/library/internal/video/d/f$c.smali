.class Lcom/instabug/library/internal/video/d/f$c;
.super Lcom/instabug/library/internal/video/d/c$b;
.source "ScreenRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/internal/video/d/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/internal/video/d/f;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/video/d/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/video/d/f$c;->a:Lcom/instabug/library/internal/video/d/f;

    invoke-direct {p0}, Lcom/instabug/library/internal/video/d/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/internal/video/d/c;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/f$c;->a:Lcom/instabug/library/internal/video/d/f;

    invoke-static {p1, p2, p3}, Lcom/instabug/library/internal/video/d/f;->b(Lcom/instabug/library/internal/video/d/f;ILandroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ScreenRecorder"

    const-string p3, "Muxer encountered an error! "

    .line 3
    invoke-static {p2, p3, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object p2, p0, Lcom/instabug/library/internal/video/d/f$c;->a:Lcom/instabug/library/internal/video/d/f;

    invoke-static {p2}, Lcom/instabug/library/internal/video/d/f;->f(Lcom/instabug/library/internal/video/d/f;)Lcom/instabug/library/internal/video/d/f$e;

    move-result-object p2

    const/4 p3, 0x2

    invoke-static {p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public a(Lcom/instabug/library/internal/video/d/c;Landroid/media/MediaFormat;)V
    .locals 0

    .line 5
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/f$c;->a:Lcom/instabug/library/internal/video/d/f;

    invoke-static {p1, p2}, Lcom/instabug/library/internal/video/d/f;->a(Lcom/instabug/library/internal/video/d/f;Landroid/media/MediaFormat;)V

    .line 6
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/f$c;->a:Lcom/instabug/library/internal/video/d/f;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/f;->g(Lcom/instabug/library/internal/video/d/f;)V

    return-void
.end method

.method public a(Lcom/instabug/library/internal/video/d/d;Ljava/lang/Exception;)V
    .locals 1

    const-string p1, "ScreenRecorder"

    const-string v0, "MicRecorder ran into an error! "

    .line 7
    invoke-static {p1, v0, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/f$c;->a:Lcom/instabug/library/internal/video/d/f;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/f;->f(Lcom/instabug/library/internal/video/d/f;)Lcom/instabug/library/internal/video/d/f$e;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/instabug/library/internal/video/d/f$c;->a:Lcom/instabug/library/internal/video/d/f;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/f;->f(Lcom/instabug/library/internal/video/d/f;)Lcom/instabug/library/internal/video/d/f$e;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
