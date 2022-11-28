.class Lcom/instabug/library/internal/video/d/e$a;
.super Landroid/os/Handler;
.source "MicRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/internal/video/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/instabug/library/internal/video/d/c$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/instabug/library/internal/video/d/c$b;)V
    .locals 0
    .param p1    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/library/internal/video/d/c$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p2, p0, Lcom/instabug/library/internal/video/d/e$a;->a:Lcom/instabug/library/internal/video/d/c$b;

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/internal/video/d/e$a;)Lcom/instabug/library/internal/video/d/c$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/internal/video/d/e$a;->a:Lcom/instabug/library/internal/video/d/c$b;

    return-object p0
.end method


# virtual methods
.method a(Lcom/instabug/library/internal/video/d/c;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 18
    new-instance v0, Lcom/instabug/library/internal/video/d/e$a$c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/instabug/library/internal/video/d/e$a$c;-><init>(Lcom/instabug/library/internal/video/d/e$a;Lcom/instabug/library/internal/video/d/c;ILandroid/media/MediaCodec$BufferInfo;)V

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method a(Lcom/instabug/library/internal/video/d/c;Landroid/media/MediaFormat;)V
    .locals 1

    .line 10
    new-instance v0, Lcom/instabug/library/internal/video/d/e$a$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/instabug/library/internal/video/d/e$a$b;-><init>(Lcom/instabug/library/internal/video/d/e$a;Lcom/instabug/library/internal/video/d/c;Landroid/media/MediaFormat;)V

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method a(Lcom/instabug/library/internal/video/d/d;Ljava/lang/Exception;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/instabug/library/internal/video/d/e$a$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/instabug/library/internal/video/d/e$a$a;-><init>(Lcom/instabug/library/internal/video/d/e$a;Lcom/instabug/library/internal/video/d/d;Ljava/lang/Exception;)V

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
