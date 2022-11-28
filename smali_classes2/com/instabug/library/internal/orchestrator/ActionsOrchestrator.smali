.class public final Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;
.super Ljava/lang/Object;
.source "ActionsOrchestrator.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ActionsOrchestrator"


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final sameThreadActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/library/internal/orchestrator/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final workerThreadActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/library/internal/orchestrator/Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->sameThreadActions:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->workerThreadActions:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->workerThreadActions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;Lcom/instabug/library/internal/orchestrator/Action;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->runAction(Lcom/instabug/library/internal/orchestrator/Action;)V

    return-void
.end method

.method public static obtainOrchestrator()Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;
    .locals 2

    .line 1
    new-instance v0, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    invoke-static {}, Lcom/instabug/library/util/threading/PoolProvider;->getInstance()Lcom/instabug/library/util/threading/PoolProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/util/threading/PoolProvider;->getBackgroundExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static obtainOrchestrator(Ljava/util/concurrent/Executor;)Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;
    .locals 1
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    invoke-direct {v0, p0}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private orchestrateSameThreadActions()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->sameThreadActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/internal/orchestrator/Action;

    .line 2
    invoke-direct {p0, v1}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->runAction(Lcom/instabug/library/internal/orchestrator/Action;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private orchestrateWorkerThreadActions()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator$a;-><init>(Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;)V

    invoke-static {v0, v1}, Lcom/instabug/library/util/threading/PoolProvider;->postTask(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void
.end method

.method private runAction(Lcom/instabug/library/internal/orchestrator/Action;)V
    .locals 2

    const-string v0, "ActionsOrchestrator"

    const-string v1, "runAction"

    .line 1
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-interface {p1}, Lcom/instabug/library/internal/orchestrator/Action;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionsOrchestrator"

    invoke-static {v1, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addSameThreadAction(Lcom/instabug/library/internal/orchestrator/Action;)Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;
    .locals 1
    .param p1    # Lcom/instabug/library/internal/orchestrator/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->sameThreadActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addWorkerThreadAction(Lcom/instabug/library/internal/orchestrator/Action;)Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;
    .locals 1
    .param p1    # Lcom/instabug/library/internal/orchestrator/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->workerThreadActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public orchestrate()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->orchestrateSameThreadActions()V

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->orchestrateWorkerThreadActions()V

    return-void
.end method
