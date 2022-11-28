.class Lcom/instabug/library/internal/video/d/e;
.super Ljava/lang/Object;
.source "MicRecorder.java"

# interfaces
.implements Lcom/instabug/library/internal/video/d/d;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/internal/video/d/e$b;,
        Lcom/instabug/library/internal/video/d/e$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/instabug/library/internal/video/d/b;

.field private final b:Landroid/os/HandlerThread;

.field private c:Lcom/instabug/library/internal/video/d/e$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Landroid/media/AudioRecord;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Lcom/instabug/library/internal/video/d/c$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/instabug/library/internal/video/d/e$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:I

.field private l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/video/d/a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/instabug/library/internal/video/d/e;->g:I

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/instabug/library/internal/video/d/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v1, p0, Lcom/instabug/library/internal/video/d/e;->l:Ljava/util/LinkedHashMap;

    .line 12
    new-instance v1, Lcom/instabug/library/internal/video/d/b;

    invoke-direct {v1, p1}, Lcom/instabug/library/internal/video/d/b;-><init>(Lcom/instabug/library/internal/video/d/a;)V

    iput-object v1, p0, Lcom/instabug/library/internal/video/d/e;->a:Lcom/instabug/library/internal/video/d/b;

    .line 13
    invoke-virtual {p1}, Lcom/instabug/library/internal/video/d/a;->b()I

    move-result v1

    iput v1, p0, Lcom/instabug/library/internal/video/d/e;->e:I

    .line 14
    invoke-virtual {p1}, Lcom/instabug/library/internal/video/d/a;->a()I

    move-result v2

    mul-int v1, v1, v2

    iput v1, p0, Lcom/instabug/library/internal/video/d/e;->k:I

    .line 15
    invoke-virtual {p1}, Lcom/instabug/library/internal/video/d/a;->a()I

    move-result p1

    if-ne p1, v0, :cond_0

    const/16 p1, 0xc

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    :goto_0
    iput p1, p0, Lcom/instabug/library/internal/video/d/e;->f:I

    .line 16
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "MicRecorder"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/instabug/library/internal/video/d/e;->b:Landroid/os/HandlerThread;

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/internal/video/d/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/internal/video/d/e;->e:I

    return p0
.end method

.method private a(III)Landroid/media/AudioRecord;
    .locals 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5
    invoke-static/range {p1 .. p3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-gtz v0, :cond_0

    .line 7
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "Bad arguments: getMinBufferSize(%d, %d, %d)"

    .line 9
    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MicRecorder"

    invoke-static {v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 13
    :cond_0
    new-instance v12, Landroid/media/AudioRecord;

    mul-int/lit8 v11, v0, 0x2

    const/4 v7, 0x1

    move-object v6, v12

    move v8, p1

    move v9, p2

    move/from16 v10, p3

    invoke-direct/range {v6 .. v11}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 19
    invoke-virtual {v12}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 20
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "Bad arguments to new AudioRecord %d, %d, %d"

    .line 22
    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MicRecorder"

    invoke-static {v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 27
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " size in frame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/media/AudioRecord;->getBufferSizeInFrames()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicRecorder"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-object v12
.end method

.method static synthetic a(Lcom/instabug/library/internal/video/d/e;III)Landroid/media/AudioRecord;
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/instabug/library/internal/video/d/e;->a(III)Landroid/media/AudioRecord;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/library/internal/video/d/e;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/instabug/library/internal/video/d/e;->d:Landroid/media/AudioRecord;

    return-object p1
.end method

.method static synthetic a(Lcom/instabug/library/internal/video/d/e;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/instabug/library/internal/video/d/e;->d(I)V

    return-void
.end method

.method static synthetic b(Lcom/instabug/library/internal/video/d/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/internal/video/d/e;->f:I

    return p0
.end method

.method static synthetic c(Lcom/instabug/library/internal/video/d/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/internal/video/d/e;->g:I

    return p0
.end method

.method private c(I)J
    .locals 11

    .line 5
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e;->l:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/instabug/library/internal/video/d/e;->l:Ljava/util/LinkedHashMap;

    :cond_0
    shr-int/lit8 p1, p1, 0x4

    .line 10
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e;->l:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e;->l:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    const v0, 0xf4240

    mul-int v0, v0, p1

    .line 14
    iget v3, p0, Lcom/instabug/library/internal/video/d/e;->k:I

    div-int/2addr v0, v3

    int-to-long v3, v0

    .line 15
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e;->l:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, p1, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/32 v7, 0xf4240

    div-long/2addr v5, v7

    sub-long/2addr v5, v3

    .line 22
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/e;->l:Ljava/util/LinkedHashMap;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 23
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/e;->l:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_1

    :cond_3
    move-wide v7, v1

    :goto_1
    cmp-long p1, v7, v1

    if-nez p1, :cond_4

    move-wide v7, v5

    :cond_4
    sub-long v1, v5, v7

    const/4 p1, 0x1

    shl-long v9, v3, p1

    cmp-long p1, v1, v9

    if-ltz p1, :cond_5

    goto :goto_2

    :cond_5
    move-wide v5, v7

    .line 37
    :goto_2
    iget-object p1, p0, Lcom/instabug/library/internal/video/d/e;->l:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v5
.end method

.method static synthetic d(Lcom/instabug/library/internal/video/d/e;)Lcom/instabug/library/internal/video/d/e$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/internal/video/d/e;->j:Lcom/instabug/library/internal/video/d/e$a;

    return-object p0
.end method

.method private d(I)V
    .locals 11
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "RV_RETURN_VALUE_IGNORED_NO_SIDE_EFFECT"
        }
    .end annotation

    if-ltz p1, :cond_7

    .line 2
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_5

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e;->d:Landroid/media/AudioRecord;

    if-eqz v0, :cond_6

    .line 6
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/instabug/library/internal/video/d/e;->a:Lcom/instabug/library/internal/video/d/b;

    invoke-virtual {v3, p1}, Lcom/instabug/library/internal/video/d/c;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    .line 11
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    if-nez v0, :cond_3

    .line 13
    iget-object v5, p0, Lcom/instabug/library/internal/video/d/e;->d:Landroid/media/AudioRecord;

    invoke-virtual {v5, v3, v4}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v3

    if-gez v3, :cond_2

    goto :goto_1

    :cond_2
    move v7, v3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v7, 0x0

    :goto_2
    shl-int/lit8 v3, v7, 0x3

    .line 20
    invoke-direct {p0, v3}, Lcom/instabug/library/internal/video/d/e;->c(I)J

    move-result-wide v8

    .line 22
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-eqz v0, :cond_5

    const/4 v0, 0x4

    const/4 v10, 0x4

    goto :goto_4

    :cond_5
    move v10, v1

    .line 30
    :goto_4
    iget-object v4, p0, Lcom/instabug/library/internal/video/d/e;->a:Lcom/instabug/library/internal/video/d/b;

    move v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/instabug/library/internal/video/d/c;->a(IIIJI)V

    return-void

    .line 31
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "maybe release"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_5
    return-void
.end method

.method static synthetic e(Lcom/instabug/library/internal/video/d/e;)Landroid/media/AudioRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/internal/video/d/e;->d:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic f(Lcom/instabug/library/internal/video/d/e;)Lcom/instabug/library/internal/video/d/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/internal/video/d/e;->a:Lcom/instabug/library/internal/video/d/b;

    return-object p0
.end method

.method static synthetic g(Lcom/instabug/library/internal/video/d/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/internal/video/d/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method a(I)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e;->a:Lcom/instabug/library/internal/video/d/b;

    invoke-virtual {v0, p1}, Lcom/instabug/library/internal/video/d/c;->b(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v1, Lcom/instabug/library/internal/video/d/e$a;

    iget-object v2, p0, Lcom/instabug/library/internal/video/d/e;->i:Lcom/instabug/library/internal/video/d/c$b;

    invoke-direct {v1, v0, v2}, Lcom/instabug/library/internal/video/d/e$a;-><init>(Landroid/os/Looper;Lcom/instabug/library/internal/video/d/c$b;)V

    iput-object v1, p0, Lcom/instabug/library/internal/video/d/e;->j:Lcom/instabug/library/internal/video/d/e$a;

    .line 36
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 37
    new-instance v0, Lcom/instabug/library/internal/video/d/e$b;

    iget-object v1, p0, Lcom/instabug/library/internal/video/d/e;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/instabug/library/internal/video/d/e$b;-><init>(Lcom/instabug/library/internal/video/d/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/instabug/library/internal/video/d/e;->c:Lcom/instabug/library/internal/video/d/e$b;

    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Should prepare in HandlerThread"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/instabug/library/internal/video/d/c$b;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/instabug/library/internal/video/d/e;->i:Lcom/instabug/library/internal/video/d/c$b;

    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e;->c:Lcom/instabug/library/internal/video/d/e$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method b(I)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e;->c:Lcom/instabug/library/internal/video/d/e$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e;->j:Lcom/instabug/library/internal/video/d/e$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e;->c:Lcom/instabug/library/internal/video/d/e$b;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
