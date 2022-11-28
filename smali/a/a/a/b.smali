.class public La/a/a/b;
.super Ljava/lang/Thread;
.source "InstabugAnrDetectorThread.java"


# instance fields
.field private a:J

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/os/Handler;

.field private f:La/a/a/a;

.field private g:La/a/a/d/a$a;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(La/a/a/a;La/a/a/d/a$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, La/a/a/b;->a:J

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, La/a/a/b;->b:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, La/a/a/b;->c:Z

    .line 6
    iput-boolean v0, p0, La/a/a/b;->d:Z

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, La/a/a/b;->e:Landroid/os/Handler;

    .line 16
    new-instance v0, La/a/a/b$a;

    invoke-direct {v0, p0}, La/a/a/b$a;-><init>(La/a/a/b;)V

    iput-object v0, p0, La/a/a/b;->h:Ljava/lang/Runnable;

    .line 17
    iput-object p1, p0, La/a/a/b;->f:La/a/a/a;

    .line 18
    iput-object p2, p0, La/a/a/b;->g:La/a/a/d/a$a;

    return-void
.end method

.method static synthetic a(La/a/a/b;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, La/a/a/b;->a:J

    return-wide p1
.end method

.method static synthetic a(La/a/a/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, La/a/a/b;->b:Z

    return p1
.end method

.method static synthetic b(La/a/a/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, La/a/a/b;->c:Z

    return p1
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, La/a/a/b;->d:Z

    return-void
.end method

.method public run()V
    .locals 5

    const-string v0, "Instabug ANR detector thread"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, La/a/a/b;->d:Z

    if-nez v0, :cond_3

    .line 4
    iget-wide v0, p0, La/a/a/b;->a:J

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    iput-wide v0, p0, La/a/a/b;->a:J

    .line 5
    iget-boolean v0, p0, La/a/a/b;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, La/a/a/b;->b:Z

    .line 7
    iget-object v0, p0, La/a/a/b;->e:Landroid/os/Handler;

    iget-object v1, p0, La/a/a/b;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    :cond_1
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "InstabugAnrDetecorThread"

    const-string v1, "Can\'t detect ANR because InstabugANRDetector thread was interrupted."

    .line 13
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    :goto_1
    iget-boolean v0, p0, La/a/a/b;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, La/a/a/b;->c:Z

    if-nez v0, :cond_0

    .line 19
    iget-wide v0, p0, La/a/a/b;->a:J

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 20
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, La/a/a/b;->f:La/a/a/a;

    if-eqz v0, :cond_2

    .line 23
    :try_start_1
    iget-object v0, p0, La/a/a/b;->g:La/a/a/d/a$a;

    invoke-virtual {v0}, La/a/a/d/a$a;->a()La/a/a/d/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 25
    iget-object v1, p0, La/a/a/b;->f:La/a/a/a;

    invoke-interface {v1, v0}, La/a/a/a;->onAnrDetected(La/a/a/d/a;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "Couldn\'t create a new ANR object due to an IO exception"

    .line 31
    invoke-static {p0, v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "Couldn\'t create a new ANR object due to a JSON exception"

    .line 32
    invoke-static {p0, v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, La/a/a/b;->c:Z

    goto :goto_0

    :cond_3
    return-void
.end method
