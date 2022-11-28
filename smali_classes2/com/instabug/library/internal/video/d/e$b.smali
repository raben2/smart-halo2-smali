.class Lcom/instabug/library/internal/video/d/e$b;
.super Landroid/os/Handler;
.source "MicRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/internal/video/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field final synthetic d:Lcom/instabug/library/internal/video/d/e;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/video/d/e;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/internal/video/d/e$b;->a:Ljava/util/LinkedList;

    .line 4
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/internal/video/d/e$b;->b:Ljava/util/LinkedList;

    .line 5
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/e;->a(Lcom/instabug/library/internal/video/d/e;)I

    move-result p1

    const p2, 0x1f4000

    div-int/2addr p2, p1

    iput p2, p0, Lcom/instabug/library/internal/video/d/e$b;->c:I

    return-void
.end method

.method private a()V
    .locals 7

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {v0}, Lcom/instabug/library/internal/video/d/e;->g(Lcom/instabug/library/internal/video/d/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e$b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {v1}, Lcom/instabug/library/internal/video/d/e;->f(Lcom/instabug/library/internal/video/d/e;)Lcom/instabug/library/internal/video/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/internal/video/d/c;->b()Landroid/media/MediaCodec;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    .line 8
    iget-object v2, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {v2}, Lcom/instabug/library/internal/video/d/e;->d(Lcom/instabug/library/internal/video/d/e;)Lcom/instabug/library/internal/video/d/e$a;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 9
    iget-object v2, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {v2}, Lcom/instabug/library/internal/video/d/e;->d(Lcom/instabug/library/internal/video/d/e;)Lcom/instabug/library/internal/video/d/e$a;

    move-result-object v2

    iget-object v3, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {v3}, Lcom/instabug/library/internal/video/d/e;->f(Lcom/instabug/library/internal/video/d/e;)Lcom/instabug/library/internal/video/d/b;

    move-result-object v3

    iget-object v4, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {v4}, Lcom/instabug/library/internal/video/d/e;->f(Lcom/instabug/library/internal/video/d/e;)Lcom/instabug/library/internal/video/d/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instabug/library/internal/video/d/c;->b()Landroid/media/MediaCodec;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/instabug/library/internal/video/d/e$a;->a(Lcom/instabug/library/internal/video/d/c;Landroid/media/MediaFormat;)V

    :cond_2
    if-gez v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    .line 13
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 14
    iget-object v1, p0, Lcom/instabug/library/internal/video/d/e$b;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_3
    iget-object v2, p0, Lcom/instabug/library/internal/video/d/e$b;->b:Ljava/util/LinkedList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 18
    iget-object v2, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {v2}, Lcom/instabug/library/internal/video/d/e;->d(Lcom/instabug/library/internal/video/d/e;)Lcom/instabug/library/internal/video/d/e$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 19
    iget-object v2, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {v2}, Lcom/instabug/library/internal/video/d/e;->d(Lcom/instabug/library/internal/video/d/e;)Lcom/instabug/library/internal/video/d/e$a;

    move-result-object v2

    iget-object v3, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {v3}, Lcom/instabug/library/internal/video/d/e;->f(Lcom/instabug/library/internal/video/d/e;)Lcom/instabug/library/internal/video/d/b;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/instabug/library/internal/video/d/e$a;->a(Lcom/instabug/library/internal/video/d/c;ILandroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private b()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {v0}, Lcom/instabug/library/internal/video/d/e;->f(Lcom/instabug/library/internal/video/d/e;)Lcom/instabug/library/internal/video/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/d/c;->b()Landroid/media/MediaCodec;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    return v0
.end method

.method private c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e$b;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {v0}, Lcom/instabug/library/internal/video/d/e;->g(Lcom/instabug/library/internal/video/d/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0x0

    .line 4
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "SF_SWITCH_NO_DEFAULT"
        }
    .end annotation

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 51
    :pswitch_0
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/e;->e(Lcom/instabug/library/internal/video/d/e;)Landroid/media/AudioRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/e;->e(Lcom/instabug/library/internal/video/d/e;)Landroid/media/AudioRecord;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V

    .line 53
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/instabug/library/internal/video/d/e;->a(Lcom/instabug/library/internal/video/d/e;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/e;->f(Lcom/instabug/library/internal/video/d/e;)Lcom/instabug/library/internal/video/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/internal/video/d/c;->d()V

    goto/16 :goto_0

    .line 56
    :pswitch_1
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/e;->e(Lcom/instabug/library/internal/video/d/e;)Landroid/media/AudioRecord;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 57
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/e;->e(Lcom/instabug/library/internal/video/d/e;)Landroid/media/AudioRecord;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioRecord;->stop()V

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/e;->f(Lcom/instabug/library/internal/video/d/e;)Lcom/instabug/library/internal/video/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/internal/video/d/c;->e()V

    goto/16 :goto_0

    .line 60
    :pswitch_2
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {v0}, Lcom/instabug/library/internal/video/d/e;->f(Lcom/instabug/library/internal/video/d/e;)Lcom/instabug/library/internal/video/d/b;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/instabug/library/internal/video/d/c;->c(I)V

    .line 61
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/e$b;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 62
    invoke-direct {p0}, Lcom/instabug/library/internal/video/d/e$b;->c()V

    goto/16 :goto_0

    .line 63
    :pswitch_3
    invoke-direct {p0}, Lcom/instabug/library/internal/video/d/e$b;->a()V

    .line 64
    invoke-direct {p0}, Lcom/instabug/library/internal/video/d/e$b;->c()V

    goto/16 :goto_0

    .line 65
    :pswitch_4
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/e;->a(Lcom/instabug/library/internal/video/d/e;)I

    move-result v0

    iget-object v1, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {v1}, Lcom/instabug/library/internal/video/d/e;->b(Lcom/instabug/library/internal/video/d/e;)I

    move-result v1

    iget-object v2, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {v2}, Lcom/instabug/library/internal/video/d/e;->c(Lcom/instabug/library/internal/video/d/e;)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/instabug/library/internal/video/d/e;->a(Lcom/instabug/library/internal/video/d/e;III)Landroid/media/AudioRecord;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "MicRecorder"

    const-string v0, "create audio record failure"

    .line 67
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/e;->d(Lcom/instabug/library/internal/video/d/e;)Lcom/instabug/library/internal/video/d/e$a;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 69
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/e;->d(Lcom/instabug/library/internal/video/d/e;)Lcom/instabug/library/internal/video/d/e$a;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/instabug/library/internal/video/d/e$a;->a(Lcom/instabug/library/internal/video/d/d;Ljava/lang/Exception;)V

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p1}, Landroid/media/AudioRecord;->startRecording()V

    .line 74
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {v0, p1}, Lcom/instabug/library/internal/video/d/e;->a(Lcom/instabug/library/internal/video/d/e;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;

    .line 77
    :try_start_0
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/e;->f(Lcom/instabug/library/internal/video/d/e;)Lcom/instabug/library/internal/video/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/internal/video/d/c;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :pswitch_5
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/e;->g(Lcom/instabug/library/internal/video/d/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_4

    .line 86
    invoke-direct {p0}, Lcom/instabug/library/internal/video/d/e$b;->b()I

    move-result p1

    if-ltz p1, :cond_3

    .line 88
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {v0, p1}, Lcom/instabug/library/internal/video/d/e;->a(Lcom/instabug/library/internal/video/d/e;I)V

    .line 90
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {p1}, Lcom/instabug/library/internal/video/d/e;->g(Lcom/instabug/library/internal/video/d/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 93
    :cond_3
    iget p1, p0, Lcom/instabug/library/internal/video/d/e$b;->c:I

    int-to-long v0, p1

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {v0}, Lcom/instabug/library/internal/video/d/e;->d(Lcom/instabug/library/internal/video/d/e;)Lcom/instabug/library/internal/video/d/e$a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 95
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-static {v0}, Lcom/instabug/library/internal/video/d/e;->d(Lcom/instabug/library/internal/video/d/e;)Lcom/instabug/library/internal/video/d/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/internal/video/d/e$b;->d:Lcom/instabug/library/internal/video/d/e;

    invoke-virtual {v0, v1, p1}, Lcom/instabug/library/internal/video/d/e$a;->a(Lcom/instabug/library/internal/video/d/d;Ljava/lang/Exception;)V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
