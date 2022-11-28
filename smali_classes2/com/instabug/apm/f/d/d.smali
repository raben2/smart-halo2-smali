.class public Lcom/instabug/apm/f/d/d;
.super Ljava/lang/Object;
.source "SessionHandlerImpl.java"

# interfaces
.implements Lcom/instabug/apm/f/d/c;


# instance fields
.field private final a:Lcom/instabug/apm/c/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/instabug/apm/b/a/d/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lcom/instabug/apm/logger/a/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private e:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/instabug/apm/b/b/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instabug/apm/c/c;Lcom/instabug/apm/b/a/d/a;Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;Lcom/instabug/apm/logger/a/a;)V
    .locals 0
    .param p1    # Lcom/instabug/apm/c/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/apm/b/a/d/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/instabug/apm/logger/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/apm/f/d/d;->a:Lcom/instabug/apm/c/c;

    .line 3
    iput-object p2, p0, Lcom/instabug/apm/f/d/d;->b:Lcom/instabug/apm/b/a/d/a;

    .line 4
    iput-object p3, p0, Lcom/instabug/apm/f/d/d;->c:Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;

    .line 5
    iput-object p4, p0, Lcom/instabug/apm/f/d/d;->d:Lcom/instabug/apm/logger/a/a;

    const-string p1, "session_thread_executor"

    .line 6
    invoke-static {p1}, Lcom/instabug/apm/e/a;->a(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/apm/f/d/d;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/instabug/apm/f/d/d;)Lcom/instabug/apm/b/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/apm/f/d/d;->f:Lcom/instabug/apm/b/b/d;

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/apm/f/d/d;Lcom/instabug/apm/b/b/d;)Lcom/instabug/apm/b/b/d;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/instabug/apm/f/d/d;->f:Lcom/instabug/apm/b/b/d;

    return-object p1
.end method

.method static synthetic a(Lcom/instabug/apm/f/d/d;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/instabug/apm/f/d/d;->e:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic b(Lcom/instabug/apm/f/d/d;)Lcom/instabug/apm/b/a/d/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/apm/f/d/d;->b:Lcom/instabug/apm/b/a/d/a;

    return-object p0
.end method

.method private b(Lcom/instabug/library/model/common/Session;)Ljava/lang/Runnable;
    .locals 1
    .param p1    # Lcom/instabug/library/model/common/Session;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 5
    new-instance v0, Lcom/instabug/apm/f/d/d$b;

    invoke-direct {v0, p0, p1}, Lcom/instabug/apm/f/d/d$b;-><init>(Lcom/instabug/apm/f/d/d;Lcom/instabug/library/model/common/Session;)V

    return-object v0
.end method

.method static synthetic c(Lcom/instabug/apm/f/d/d;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/apm/f/d/d;->g:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic d(Lcom/instabug/apm/f/d/d;)Lcom/instabug/apm/logger/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/apm/f/d/d;->d:Lcom/instabug/apm/logger/a/a;

    return-object p0
.end method

.method static synthetic e(Lcom/instabug/apm/f/d/d;)Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/apm/f/d/d;->c:Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/instabug/apm/b/b/d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/instabug/apm/f/d/d;->b:Lcom/instabug/apm/b/a/d/a;

    invoke-interface {v0, p1}, Lcom/instabug/apm/b/a/d/a;->a(Ljava/lang/String;)Lcom/instabug/apm/b/b/d;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/apm/b/b/d;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/instabug/apm/f/d/d;->b:Lcom/instabug/apm/b/a/d/a;

    invoke-interface {v0}, Lcom/instabug/apm/b/a/d/a;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/instabug/apm/f/d/d;->b:Lcom/instabug/apm/b/a/d/a;

    invoke-interface {v0, p1}, Lcom/instabug/apm/b/a/d/a;->a(I)V

    return-void
.end method

.method public a(Lcom/instabug/library/model/common/Session;)V
    .locals 0
    .param p1    # Lcom/instabug/library/model/common/Session;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1}, Lcom/instabug/apm/f/d/d;->b(Lcom/instabug/library/model/common/Session;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/apm/f/d/d;->e:Ljava/lang/Runnable;

    .line 5
    iget-object p1, p0, Lcom/instabug/apm/f/d/d;->a:Lcom/instabug/apm/c/c;

    invoke-interface {p1}, Lcom/instabug/apm/c/c;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/instabug/apm/f/d/d;->e:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/instabug/apm/f/d/d;->b:Lcom/instabug/apm/b/a/d/a;

    invoke-interface {v0, p1, p2}, Lcom/instabug/apm/b/a/d/a;->a(Ljava/util/List;I)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/f/d/d;->a:Lcom/instabug/apm/c/c;

    invoke-interface {v0}, Lcom/instabug/apm/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/apm/f/d/d;->f:Lcom/instabug/apm/b/b/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instabug/apm/f/d/d;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/instabug/apm/f/d/d;->c:Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;

    new-instance v1, Lcom/instabug/apm/f/d/d$a;

    invoke-direct {v1, p0, p1}, Lcom/instabug/apm/f/d/d$a;-><init>(Lcom/instabug/apm/f/d/d;I)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;->execute(Lcom/instabug/library/internal/utils/stability/execution/Executable;)V

    return-void
.end method

.method public c()Lcom/instabug/library/model/common/Session;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/f/d/d;->f:Lcom/instabug/apm/b/b/d;

    return-object v0
.end method
