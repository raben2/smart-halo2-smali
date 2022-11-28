.class Lcom/instabug/featuresrequest/ui/custom/d;
.super Ljava/lang/Object;
.source "InstaToastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/featuresrequest/ui/custom/d$c;,
        Lcom/instabug/featuresrequest/ui/custom/d$b;
    }
.end annotation


# static fields
.field private static e:Lcom/instabug/featuresrequest/ui/custom/d;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/os/Handler;

.field private c:Lcom/instabug/featuresrequest/ui/custom/d$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/instabug/featuresrequest/ui/custom/d$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/d;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/instabug/featuresrequest/ui/custom/d$a;

    invoke-direct {v2, p0}, Lcom/instabug/featuresrequest/ui/custom/d$a;-><init>(Lcom/instabug/featuresrequest/ui/custom/d;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/d;->b:Landroid/os/Handler;

    return-void
.end method

.method static declared-synchronized a()Lcom/instabug/featuresrequest/ui/custom/d;
    .locals 2

    const-class v0, Lcom/instabug/featuresrequest/ui/custom/d;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/instabug/featuresrequest/ui/custom/d;->e:Lcom/instabug/featuresrequest/ui/custom/d;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/instabug/featuresrequest/ui/custom/d;

    invoke-direct {v1}, Lcom/instabug/featuresrequest/ui/custom/d;-><init>()V

    sput-object v1, Lcom/instabug/featuresrequest/ui/custom/d;->e:Lcom/instabug/featuresrequest/ui/custom/d;

    .line 5
    :cond_0
    sget-object v1, Lcom/instabug/featuresrequest/ui/custom/d;->e:Lcom/instabug/featuresrequest/ui/custom/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Lcom/instabug/featuresrequest/ui/custom/d$c;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->c:Lcom/instabug/featuresrequest/ui/custom/d$c;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->d:Lcom/instabug/featuresrequest/ui/custom/d$c;

    if-ne v1, p1, :cond_1

    :cond_0
    const/4 v1, 0x2

    .line 90
    invoke-direct {p0, p1, v1}, Lcom/instabug/featuresrequest/ui/custom/d;->a(Lcom/instabug/featuresrequest/ui/custom/d$c;I)Z

    .line 92
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/instabug/featuresrequest/ui/custom/d;Lcom/instabug/featuresrequest/ui/custom/d$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/custom/d;->a(Lcom/instabug/featuresrequest/ui/custom/d$c;)V

    return-void
.end method

.method private a(Lcom/instabug/featuresrequest/ui/custom/d$c;I)Z
    .locals 0

    .line 85
    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/custom/d$c;->b(Lcom/instabug/featuresrequest/ui/custom/d$c;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/featuresrequest/ui/custom/d$b;

    if-eqz p1, :cond_0

    .line 87
    invoke-interface {p1, p2}, Lcom/instabug/featuresrequest/ui/custom/d$b;->a(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/d;->d:Lcom/instabug/featuresrequest/ui/custom/d$c;

    if-eqz v0, :cond_1

    .line 5
    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/d;->c:Lcom/instabug/featuresrequest/ui/custom/d$c;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->d:Lcom/instabug/featuresrequest/ui/custom/d$c;

    .line 8
    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/custom/d$c;->b(Lcom/instabug/featuresrequest/ui/custom/d$c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/featuresrequest/ui/custom/d$b;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/custom/d$b;->a()V

    goto :goto_0

    .line 13
    :cond_0
    iput-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->c:Lcom/instabug/featuresrequest/ui/custom/d$c;

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Lcom/instabug/featuresrequest/ui/custom/d$c;)V
    .locals 4

    .line 14
    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/custom/d$c;->a(Lcom/instabug/featuresrequest/ui/custom/d$c;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xabe

    .line 20
    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/custom/d$c;->a(Lcom/instabug/featuresrequest/ui/custom/d$c;)I

    move-result v1

    if-lez v1, :cond_1

    .line 21
    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/custom/d$c;->a(Lcom/instabug/featuresrequest/ui/custom/d$c;)I

    move-result v0

    goto :goto_0

    .line 22
    :cond_1
    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/custom/d$c;->a(Lcom/instabug/featuresrequest/ui/custom/d$c;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/16 v0, 0x5dc

    .line 25
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 26
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private f(Lcom/instabug/featuresrequest/ui/custom/d$b;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/d;->c:Lcom/instabug/featuresrequest/ui/custom/d$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/instabug/featuresrequest/ui/custom/d$c;->a(Lcom/instabug/featuresrequest/ui/custom/d$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private g(Lcom/instabug/featuresrequest/ui/custom/d$b;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/d;->d:Lcom/instabug/featuresrequest/ui/custom/d$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/instabug/featuresrequest/ui/custom/d$c;->a(Lcom/instabug/featuresrequest/ui/custom/d$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(ILcom/instabug/featuresrequest/ui/custom/d$b;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->c:Lcom/instabug/featuresrequest/ui/custom/d$c;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->d:Lcom/instabug/featuresrequest/ui/custom/d$c;

    if-nez v1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-direct {p0, p2}, Lcom/instabug/featuresrequest/ui/custom/d;->f(Lcom/instabug/featuresrequest/ui/custom/d$b;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/custom/d;->c:Lcom/instabug/featuresrequest/ui/custom/d$c;

    invoke-static {p2, p1}, Lcom/instabug/featuresrequest/ui/custom/d$c;->a(Lcom/instabug/featuresrequest/ui/custom/d$c;I)I

    .line 14
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->b:Landroid/os/Handler;

    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/custom/d;->c:Lcom/instabug/featuresrequest/ui/custom/d$c;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->c:Lcom/instabug/featuresrequest/ui/custom/d$c;

    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/custom/d;->b(Lcom/instabug/featuresrequest/ui/custom/d$c;)V

    .line 16
    monitor-exit v0

    return-void

    .line 17
    :cond_1
    invoke-direct {p0, p2}, Lcom/instabug/featuresrequest/ui/custom/d;->g(Lcom/instabug/featuresrequest/ui/custom/d$b;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/custom/d;->d:Lcom/instabug/featuresrequest/ui/custom/d$c;

    invoke-static {p2, p1}, Lcom/instabug/featuresrequest/ui/custom/d$c;->a(Lcom/instabug/featuresrequest/ui/custom/d$c;I)I

    goto :goto_0

    .line 22
    :cond_2
    new-instance v1, Lcom/instabug/featuresrequest/ui/custom/d$c;

    invoke-direct {v1, p1, p2}, Lcom/instabug/featuresrequest/ui/custom/d$c;-><init>(ILcom/instabug/featuresrequest/ui/custom/d$b;)V

    iput-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->d:Lcom/instabug/featuresrequest/ui/custom/d$c;

    .line 25
    :goto_0
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->c:Lcom/instabug/featuresrequest/ui/custom/d$c;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->c:Lcom/instabug/featuresrequest/ui/custom/d$c;

    const/4 p2, 0x4

    invoke-direct {p0, p1, p2}, Lcom/instabug/featuresrequest/ui/custom/d;->a(Lcom/instabug/featuresrequest/ui/custom/d$c;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 28
    monitor-exit v0

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->c:Lcom/instabug/featuresrequest/ui/custom/d$c;

    .line 33
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/custom/d;->b()V

    .line 35
    monitor-exit v0

    return-void

    .line 36
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 64
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/instabug/featuresrequest/ui/custom/d$b;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->c:Lcom/instabug/featuresrequest/ui/custom/d$c;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/custom/d;->f(Lcom/instabug/featuresrequest/ui/custom/d$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->c:Lcom/instabug/featuresrequest/ui/custom/d$c;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 84
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/instabug/featuresrequest/ui/custom/d$b;I)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->c:Lcom/instabug/featuresrequest/ui/custom/d$c;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->d:Lcom/instabug/featuresrequest/ui/custom/d$c;

    if-nez v1, :cond_0

    goto :goto_1

    .line 67
    :cond_0
    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/custom/d;->f(Lcom/instabug/featuresrequest/ui/custom/d$b;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->c:Lcom/instabug/featuresrequest/ui/custom/d$c;

    invoke-direct {p0, p1, p2}, Lcom/instabug/featuresrequest/ui/custom/d;->a(Lcom/instabug/featuresrequest/ui/custom/d$c;I)Z

    goto :goto_0

    .line 69
    :cond_1
    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/custom/d;->g(Lcom/instabug/featuresrequest/ui/custom/d$b;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 70
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->d:Lcom/instabug/featuresrequest/ui/custom/d$c;

    invoke-direct {p0, p1, p2}, Lcom/instabug/featuresrequest/ui/custom/d;->a(Lcom/instabug/featuresrequest/ui/custom/d$c;I)Z

    .line 72
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 73
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 79
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lcom/instabug/featuresrequest/ui/custom/d$b;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/custom/d;->f(Lcom/instabug/featuresrequest/ui/custom/d$b;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/custom/d;->g(Lcom/instabug/featuresrequest/ui/custom/d$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Lcom/instabug/featuresrequest/ui/custom/d$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/custom/d;->f(Lcom/instabug/featuresrequest/ui/custom/d$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->c:Lcom/instabug/featuresrequest/ui/custom/d$c;

    .line 5
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->d:Lcom/instabug/featuresrequest/ui/custom/d$c;

    if-eqz p1, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/custom/d;->b()V

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Lcom/instabug/featuresrequest/ui/custom/d$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->c:Lcom/instabug/featuresrequest/ui/custom/d$c;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/custom/d;->f(Lcom/instabug/featuresrequest/ui/custom/d$b;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->c:Lcom/instabug/featuresrequest/ui/custom/d$c;

    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/custom/d;->b(Lcom/instabug/featuresrequest/ui/custom/d$c;)V

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Lcom/instabug/featuresrequest/ui/custom/d$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->c:Lcom/instabug/featuresrequest/ui/custom/d$c;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/custom/d;->f(Lcom/instabug/featuresrequest/ui/custom/d$b;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/d;->c:Lcom/instabug/featuresrequest/ui/custom/d$c;

    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/custom/d;->b(Lcom/instabug/featuresrequest/ui/custom/d$c;)V

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
