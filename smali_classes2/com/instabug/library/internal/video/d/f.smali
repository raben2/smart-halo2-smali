.class public Lcom/instabug/library/internal/video/d/f;
.super Ljava/lang/Object;
.source "ScreenRecorder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/internal/video/d/f$e;,
        Lcom/instabug/library/internal/video/d/f$d;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Landroid/media/projection/MediaProjection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/instabug/library/internal/video/d/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/instabug/library/internal/video/d/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Landroid/media/MediaFormat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Landroid/media/MediaFormat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:Landroid/media/MediaMuxer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:Z

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private p:Landroid/hardware/display/VirtualDisplay;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q:Landroid/media/projection/MediaProjection$Callback;

.field private r:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s:Lcom/instabug/library/internal/video/d/f$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private t:Lcom/instabug/library/internal/video/d/f$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>(Lcom/instabug/library/internal/video/d/g;Lcom/instabug/library/internal/video/d/a;Landroid/media/projection/MediaProjection;Ljava/lang/String;)V
    .locals 3
    .param p2    # Lcom/instabug/library/internal/video/d/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/media/projection/MediaProjection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/instabug/library/internal/video/d/f;->h:Landroid/media/MediaFormat;

    iput-object v0, p0, Lcom/instabug/library/internal/video/d/f;->i:Landroid/media/MediaFormat;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/instabug/library/internal/video/d/f;->j:I

    iput v1, p0, Lcom/instabug/library/internal/video/d/f;->k:I

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/instabug/library/internal/video/d/f;->m:Z

    .line 9
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/instabug/library/internal/video/d/f;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/instabug/library/internal/video/d/f;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    new-instance v1, Lcom/instabug/library/internal/video/d/f$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/internal/video/d/f$a;-><init>(Lcom/instabug/library/internal/video/d/f;)V

    iput-object v1, p0, Lcom/instabug/library/internal/video/d/f;->q:Landroid/media/projection/MediaProjection$Callback;

    .line 27
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/instabug/library/internal/video/d/f;->u:Ljava/util/LinkedList;

    .line 28
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/instabug/library/internal/video/d/f;->v:Ljava/util/LinkedList;

    .line 29
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/instabug/library/internal/video/d/f;->w:Ljava/util/LinkedList;

    .line 30
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/instabug/library/internal/video/d/f;->x:Ljava/util/LinkedList;

    .line 36
    invoke-virtual {p1}, Lcom/instabug/library/internal/video/d/g;->d()I

    move-result v1

    iput v1, p0, Lcom/instabug/library/internal/video/d/f;->a:I

    .line 37
    invoke-virtual {p1}, Lcom/instabug/library/internal/video/d/g;->c()I

    move-result v1

    iput v1, p0, Lcom/instabug/library/internal/video/d/f;->b:I

    .line 38
    invoke-virtual {p1}, Lcom/instabug/library/internal/video/d/g;->b()I

    move-result v1

    iput v1, p0, Lcom/instabug/library/internal/video/d/f;->c:I

    .line 39
    iput-object p3, p0, Lcom/instabug/library/internal/video/d/f;->e:Landroid/media/projection/MediaProjection;

    .line 40
    iput-object p4, p0, Lcom/instabug/library/internal/video/d/f;->d:Ljava/lang/String;

    .line 41
    new-instance p3, Lcom/instabug/library/internal/video/d/h;

    invoke-direct {p3, p1}, Lcom/instabug/library/internal/video/d/h;-><init>(Lcom/instabug/library/internal/video/d/g;)V

    iput-object p3, p0, Lcom/instabug/library/internal/video/d/f;->f:Lcom/instabug/library/internal/video/d/h;

    if-nez p2, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lcom/instabug/library/internal/video/d/e;

    invoke-direct {v0, p2}, Lcom/instabug/library/internal/video/d/e;-><init>(Lcom/instabug/library/internal/video/d/a;)V

    :goto_0
    iput-object v0, p0, Lcom/instabug/library/internal/video/d/f;->g:Lcom/instabug/library/internal/video/d/e;

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/internal/video/d/f;Lcom/instabug/library/internal/video/d/f$d;)Lcom/instabug/library/internal/video/d/f$d;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/instabug/library/internal/video/d/f;->t:Lcom/instabug/library/internal/video/d/f$d;

    return-object p1
.end method

.method private a(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ScreenRecorder"

    const-string p2, "muxAudio: Already stopped!"

    .line 12
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/instabug/library/internal/video/d/f;->m:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/instabug/library/internal/video/d/f;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->g:Lcom/instabug/library/internal/video/d/e;

    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {v0, p1}, Lcom/instabug/library/internal/video/d/e;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 23
    iget v2, p0, Lcom/instabug/library/internal/video/d/f;->k:I

    invoke-direct {p0, v2, p2, v0}, Lcom/instabug/library/internal/video/d/f;->a(ILandroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V

    .line 24
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->g:Lcom/instabug/library/internal/video/d/e;

    invoke-virtual {v0, p1}, Lcom/instabug/library/internal/video/d/e;->b(I)V

    .line 26
    :cond_2
    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    .line 27
    iput v1, p0, Lcom/instabug/library/internal/video/d/f;->k:I

    const/4 p1, 0x1

    .line 28
    invoke-direct {p0, p1}, Lcom/instabug/library/internal/video/d/f;->a(Z)V

    :cond_3
    return-void

    .line 29
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->v:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/f;->w:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(ILandroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p3    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 35
    iput v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 37
    :cond_0
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 38
    :cond_1
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    const/4 p3, 0x0

    goto :goto_1

    .line 41
    :cond_2
    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    .line 42
    iget v0, p0, Lcom/instabug/library/internal/video/d/f;->j:I

    if-ne p1, v0, :cond_3

    .line 43
    invoke-direct {p0, p2}, Lcom/instabug/library/internal/video/d/f;->b(Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    .line 44
    :cond_3
    iget v0, p0, Lcom/instabug/library/internal/video/d/f;->k:I

    if-ne p1, v0, :cond_4

    .line 45
    invoke-direct {p0, p2}, Lcom/instabug/library/internal/video/d/f;->a(Landroid/media/MediaCodec$BufferInfo;)V

    :cond_4
    :goto_0
    if-nez v1, :cond_5

    .line 48
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->t:Lcom/instabug/library/internal/video/d/f$d;

    if-eqz v0, :cond_5

    .line 49
    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-interface {v0, v1, v2}, Lcom/instabug/library/internal/video/d/f$d;->a(J)V

    :cond_5
    :goto_1
    if-eqz p3, :cond_6

    .line 53
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 54
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 55
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->l:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_6

    .line 56
    invoke-virtual {v0, p1, p3, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_6
    return-void
.end method

.method private a(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    .line 57
    iget-wide v0, p0, Lcom/instabug/library/internal/video/d/f;->z:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 58
    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lcom/instabug/library/internal/video/d/f;->z:J

    .line 59
    iput-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_0

    .line 61
    :cond_0
    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v2, v0

    iput-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :goto_0
    return-void
.end method

.method private a(Landroid/media/MediaFormat;)V
    .locals 1

    .line 62
    iget v0, p0, Lcom/instabug/library/internal/video/d/f;->k:I

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/instabug/library/internal/video/d/f;->m:Z

    if-nez v0, :cond_0

    .line 65
    iput-object p1, p0, Lcom/instabug/library/internal/video/d/f;->i:Landroid/media/MediaFormat;

    return-void

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "output format already changed!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/instabug/library/internal/video/d/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/internal/video/d/f;->e()V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/internal/video/d/f;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/internal/video/d/f;->b(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/internal/video/d/f;Landroid/media/MediaFormat;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/library/internal/video/d/f;->a(Landroid/media/MediaFormat;)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->s:Lcom/instabug/library/internal/video/d/f$e;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->s:Lcom/instabug/library/internal/video/d/f$e;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/instabug/library/internal/video/d/f;)Lcom/instabug/library/internal/video/d/f$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/internal/video/d/f;->t:Lcom/instabug/library/internal/video/d/f$d;

    return-object p0
.end method

.method private b(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ScreenRecorder"

    const-string p2, "muxVideo: Already stopped!"

    .line 11
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/instabug/library/internal/video/d/f;->m:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/instabug/library/internal/video/d/f;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->f:Lcom/instabug/library/internal/video/d/h;

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {v0, p1}, Lcom/instabug/library/internal/video/d/c;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 21
    iget v2, p0, Lcom/instabug/library/internal/video/d/f;->j:I

    invoke-direct {p0, v2, p2, v0}, Lcom/instabug/library/internal/video/d/f;->a(ILandroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V

    .line 22
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->f:Lcom/instabug/library/internal/video/d/h;

    invoke-virtual {v0, p1}, Lcom/instabug/library/internal/video/d/c;->c(I)V

    .line 24
    :cond_2
    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    .line 26
    iput v1, p0, Lcom/instabug/library/internal/video/d/f;->j:I

    const/4 p1, 0x1

    .line 27
    invoke-direct {p0, p1}, Lcom/instabug/library/internal/video/d/f;->a(Z)V

    :cond_3
    return-void

    .line 28
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->u:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/f;->x:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    .line 30
    iget-wide v0, p0, Lcom/instabug/library/internal/video/d/f;->y:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 31
    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lcom/instabug/library/internal/video/d/f;->y:J

    .line 32
    iput-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_0

    .line 34
    :cond_0
    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v2, v0

    iput-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :goto_0
    return-void
.end method

.method private b(Landroid/media/MediaFormat;)V
    .locals 1

    .line 35
    iget v0, p0, Lcom/instabug/library/internal/video/d/f;->j:I

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/instabug/library/internal/video/d/f;->m:Z

    if-nez v0, :cond_0

    .line 38
    iput-object p1, p0, Lcom/instabug/library/internal/video/d/f;->h:Landroid/media/MediaFormat;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "output format already changed!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic b(Lcom/instabug/library/internal/video/d/f;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/internal/video/d/f;->a(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static synthetic b(Lcom/instabug/library/internal/video/d/f;Landroid/media/MediaFormat;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/library/internal/video/d/f;->b(Landroid/media/MediaFormat;)V

    return-void
.end method

.method private c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->g:Lcom/instabug/library/internal/video/d/e;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v1, Lcom/instabug/library/internal/video/d/f$c;

    invoke-direct {v1, p0}, Lcom/instabug/library/internal/video/d/f$c;-><init>(Lcom/instabug/library/internal/video/d/f;)V

    .line 30
    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/video/d/e;->a(Lcom/instabug/library/internal/video/d/c$b;)V

    .line 31
    invoke-virtual {v0}, Lcom/instabug/library/internal/video/d/e;->a()V

    return-void
.end method

.method static synthetic c(Lcom/instabug/library/internal/video/d/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/internal/video/d/f;->i()V

    return-void
.end method

.method private d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/instabug/library/internal/video/d/f$b;

    invoke-direct {v0, p0}, Lcom/instabug/library/internal/video/d/f$b;-><init>(Lcom/instabug/library/internal/video/d/f;)V

    .line 26
    iget-object v1, p0, Lcom/instabug/library/internal/video/d/f;->f:Lcom/instabug/library/internal/video/d/h;

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {v1, v0}, Lcom/instabug/library/internal/video/d/c;->a(Lcom/instabug/library/internal/video/d/c$b;)V

    .line 28
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->f:Lcom/instabug/library/internal/video/d/h;

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/d/c;->c()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/instabug/library/internal/video/d/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/internal/video/d/f;->g()V

    return-void
.end method

.method private e()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->e:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->s:Lcom/instabug/library/internal/video/d/f$e;

    if-eqz v0, :cond_0

    .line 10
    iget-object v1, p0, Lcom/instabug/library/internal/video/d/f;->e:Landroid/media/projection/MediaProjection;

    iget-object v2, p0, Lcom/instabug/library/internal/video/d/f;->q:Landroid/media/projection/MediaProjection$Callback;

    invoke-virtual {v1, v2, v0}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    .line 14
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/instabug/library/internal/video/d/f;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/instabug/library/internal/video/d/f;->l:Landroid/media/MediaMuxer;

    .line 16
    invoke-direct {p0}, Lcom/instabug/library/internal/video/d/f;->d()V

    .line 17
    invoke-direct {p0}, Lcom/instabug/library/internal/video/d/f;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    iget-object v3, p0, Lcom/instabug/library/internal/video/d/f;->e:Landroid/media/projection/MediaProjection;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-display"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/instabug/library/internal/video/d/f;->a:I

    iget v6, p0, Lcom/instabug/library/internal/video/d/f;->b:I

    iget v7, p0, Lcom/instabug/library/internal/video/d/f;->c:I

    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->f:Lcom/instabug/library/internal/video/d/h;

    .line 24
    invoke-virtual {v0}, Lcom/instabug/library/internal/video/d/h;->f()Landroid/view/Surface;

    move-result-object v9

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 25
    invoke-virtual/range {v3 .. v11}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/internal/video/d/f;->p:Landroid/hardware/display/VirtualDisplay;

    return-void

    :catch_0
    move-exception v0

    .line 26
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "maybe release"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method static synthetic e(Lcom/instabug/library/internal/video/d/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/internal/video/d/f;->f()V

    return-void
.end method

.method static synthetic f(Lcom/instabug/library/internal/video/d/f;)Lcom/instabug/library/internal/video/d/f$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/internal/video/d/f;->s:Lcom/instabug/library/internal/video/d/f$e;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->e:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/instabug/library/internal/video/d/f;->q:Landroid/media/projection/MediaProjection$Callback;

    invoke-virtual {v0, v1}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->p:Landroid/hardware/display/VirtualDisplay;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 7
    iput-object v1, p0, Lcom/instabug/library/internal/video/d/f;->p:Landroid/hardware/display/VirtualDisplay;

    .line 10
    :cond_1
    iput-object v1, p0, Lcom/instabug/library/internal/video/d/f;->i:Landroid/media/MediaFormat;

    iput-object v1, p0, Lcom/instabug/library/internal/video/d/f;->h:Landroid/media/MediaFormat;

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/instabug/library/internal/video/d/f;->k:I

    iput v0, p0, Lcom/instabug/library/internal/video/d/f;->j:I

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/instabug/library/internal/video/d/f;->m:Z

    .line 14
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->r:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 16
    iput-object v1, p0, Lcom/instabug/library/internal/video/d/f;->r:Landroid/os/HandlerThread;

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->f:Lcom/instabug/library/internal/video/d/h;

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {v0}, Lcom/instabug/library/internal/video/d/h;->d()V

    .line 20
    iput-object v1, p0, Lcom/instabug/library/internal/video/d/f;->f:Lcom/instabug/library/internal/video/d/h;

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->g:Lcom/instabug/library/internal/video/d/e;

    if-eqz v0, :cond_4

    .line 23
    invoke-virtual {v0}, Lcom/instabug/library/internal/video/d/e;->b()V

    .line 24
    iput-object v1, p0, Lcom/instabug/library/internal/video/d/f;->g:Lcom/instabug/library/internal/video/d/e;

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->e:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_5

    .line 28
    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    .line 29
    iput-object v1, p0, Lcom/instabug/library/internal/video/d/f;->e:Landroid/media/projection/MediaProjection;

    .line 31
    :cond_5
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->l:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_6

    .line 33
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 34
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->l:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :catch_0
    iput-object v1, p0, Lcom/instabug/library/internal/video/d/f;->l:Landroid/media/MediaMuxer;

    .line 40
    :cond_6
    iput-object v1, p0, Lcom/instabug/library/internal/video/d/f;->s:Lcom/instabug/library/internal/video/d/f$e;

    return-void
.end method

.method private g()V
    .locals 8

    .line 2
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    move-object v0, v6

    .line 4
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 5
    iget v0, p0, Lcom/instabug/library/internal/video/d/f;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 6
    invoke-direct {p0, v0, v6, v7}, Lcom/instabug/library/internal/video/d/f;->a(ILandroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V

    .line 8
    :cond_0
    iget v0, p0, Lcom/instabug/library/internal/video/d/f;->k:I

    if-eq v0, v1, :cond_1

    .line 9
    invoke-direct {p0, v0, v6, v7}, Lcom/instabug/library/internal/video/d/f;->a(ILandroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V

    .line 11
    :cond_1
    iput v1, p0, Lcom/instabug/library/internal/video/d/f;->j:I

    .line 12
    iput v1, p0, Lcom/instabug/library/internal/video/d/f;->k:I

    return-void
.end method

.method static synthetic g(Lcom/instabug/library/internal/video/d/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/internal/video/d/f;->h()V

    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/internal/video/d/f;->m:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->h:Landroid/media/MediaFormat;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->g:Lcom/instabug/library/internal/video/d/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->i:Landroid/media/MediaFormat;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->l:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_3

    .line 7
    iget-object v1, p0, Lcom/instabug/library/internal/video/d/f;->h:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/instabug/library/internal/video/d/f;->j:I

    .line 8
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->i:Landroid/media/MediaFormat;

    if-eqz v0, :cond_2

    .line 9
    iget-object v1, p0, Lcom/instabug/library/internal/video/d/f;->g:Lcom/instabug/library/internal/video/d/e;

    if-nez v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/instabug/library/internal/video/d/f;->l:Landroid/media/MediaMuxer;

    invoke-virtual {v1, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/instabug/library/internal/video/d/f;->k:I

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->l:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/instabug/library/internal/video/d/f;->m:Z

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->u:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->v:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 18
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    if-eqz v0, :cond_5

    .line 19
    iget-object v1, p0, Lcom/instabug/library/internal/video/d/f;->u:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 20
    invoke-direct {p0, v1, v0}, Lcom/instabug/library/internal/video/d/f;->b(ILandroid/media/MediaCodec$BufferInfo;)V

    goto :goto_1

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->g:Lcom/instabug/library/internal/video/d/e;

    if-eqz v0, :cond_6

    .line 23
    :goto_2
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->w:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    if-eqz v0, :cond_6

    .line 24
    iget-object v1, p0, Lcom/instabug/library/internal/video/d/f;->v:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 25
    invoke-direct {p0, v1, v0}, Lcom/instabug/library/internal/video/d/f;->a(ILandroid/media/MediaCodec$BufferInfo;)V

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->w:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 3
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->v:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 4
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 5
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->u:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->f:Lcom/instabug/library/internal/video/d/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->f:Lcom/instabug/library/internal/video/d/h;

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/d/c;->e()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->g:Lcom/instabug/library/internal/video/d/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->g:Lcom/instabug/library/internal/video/d/e;

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/d/e;->c()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/instabug/library/internal/video/d/f;->f()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/instabug/library/internal/video/d/f;->a(Z)V

    :goto_0
    return-void
.end method

.method public a(Lcom/instabug/library/internal/video/d/f$d;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/instabug/library/internal/video/d/f;->t:Lcom/instabug/library/internal/video/d/f$d;

    return-void
.end method

.method public b()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->r:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ScreenRecorder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instabug/library/internal/video/d/f;->r:Landroid/os/HandlerThread;

    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 7
    new-instance v0, Lcom/instabug/library/internal/video/d/f$e;

    iget-object v1, p0, Lcom/instabug/library/internal/video/d/f;->r:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/instabug/library/internal/video/d/f$e;-><init>(Lcom/instabug/library/internal/video/d/f;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/instabug/library/internal/video/d/f;->s:Lcom/instabug/library/internal/video/d/f$e;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/f;->e:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_0

    const-string v0, "ScreenRecorder"

    const-string v1, "release() not called!"

    .line 2
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/internal/video/d/f;->f()V

    .line 5
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
