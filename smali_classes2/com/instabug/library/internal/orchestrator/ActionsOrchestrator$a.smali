.class Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator$a;
.super Ljava/lang/Object;
.source "ActionsOrchestrator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->orchestrateWorkerThreadActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator$a;->a:Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator$a;->a:Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    invoke-static {v0}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->access$000(Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;)Ljava/util/List;

    move-result-object v0

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
    iget-object v2, p0, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator$a;->a:Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    invoke-static {v2, v1}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->access$100(Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;Lcom/instabug/library/internal/orchestrator/Action;)V

    goto :goto_0

    :cond_0
    return-void
.end method
