.class public Lcom/instabug/library/invocation/d/g;
.super Ljava/lang/Object;
.source "TwoFingerSwipeLeftInvoker.java"

# interfaces
.implements Lcom/instabug/library/invocation/d/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/invocation/d/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/invocation/d/a<",
        "Landroid/view/MotionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroidx/core/view/GestureDetectorCompat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Lcom/instabug/library/invocation/d/g$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Lcom/instabug/library/invocation/a;

.field private volatile f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instabug/library/invocation/a;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/instabug/library/invocation/d/g;->d:Z

    .line 8
    iput-object p1, p0, Lcom/instabug/library/invocation/d/g;->c:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/instabug/library/invocation/d/g;->e:Lcom/instabug/library/invocation/a;

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/invocation/d/g;Landroidx/core/view/GestureDetectorCompat;)Landroidx/core/view/GestureDetectorCompat;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/instabug/library/invocation/d/g;->a:Landroidx/core/view/GestureDetectorCompat;

    return-object p1
.end method

.method static synthetic a(Lcom/instabug/library/invocation/d/g;)Lcom/instabug/library/invocation/d/g$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/invocation/d/g;->b:Lcom/instabug/library/invocation/d/g$b;

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/library/invocation/d/g;Lcom/instabug/library/invocation/d/g$b;)Lcom/instabug/library/invocation/d/g$b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/instabug/library/invocation/d/g;->b:Lcom/instabug/library/invocation/d/g$b;

    return-object p1
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/instabug/library/invocation/d/g;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/invocation/d/g;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/instabug/library/invocation/d/g;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/instabug/library/invocation/d/g;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/instabug/library/invocation/d/g;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/invocation/d/g;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/instabug/library/invocation/d/g;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/library/invocation/d/g;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/instabug/library/invocation/d/g;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/instabug/library/invocation/d/g;->d:Z

    return p0
.end method

.method static synthetic d(Lcom/instabug/library/invocation/d/g;)Lcom/instabug/library/invocation/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/invocation/d/g;->e:Lcom/instabug/library/invocation/a;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 6
    :try_start_0
    new-instance v0, Lcom/instabug/library/invocation/d/g$a;

    invoke-direct {v0, p0}, Lcom/instabug/library/invocation/d/g$a;-><init>(Lcom/instabug/library/invocation/d/g;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postMainThreadTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/view/MotionEvent;)V
    .locals 2

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/instabug/library/invocation/d/g;->a:Landroidx/core/view/GestureDetectorCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 12
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v0, v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 16
    :try_start_2
    iput-boolean v0, p0, Lcom/instabug/library/invocation/d/g;->d:Z

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/instabug/library/invocation/d/g;->a:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/instabug/library/invocation/d/g;->f:Z

    return v0
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-object v0, p0, Lcom/instabug/library/invocation/d/g;->b:Lcom/instabug/library/invocation/d/g$b;

    .line 3
    iput-object v0, p0, Lcom/instabug/library/invocation/d/g;->a:Landroidx/core/view/GestureDetectorCompat;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/instabug/library/invocation/d/g;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
