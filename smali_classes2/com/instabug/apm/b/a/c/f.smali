.class public Lcom/instabug/apm/b/a/c/f;
.super Ljava/lang/Object;
.source "NetworkLogMigrationHandlerImpl.java"

# interfaces
.implements Lcom/instabug/apm/b/a/c/e;


# instance fields
.field private final a:Lcom/instabug/apm/b/a/c/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/instabug/apm/b/a/c/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/instabug/apm/c/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lcom/instabug/apm/b/a/d/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instabug/apm/b/a/c/c;Lcom/instabug/apm/b/a/c/a;Lcom/instabug/apm/c/c;Ljava/util/concurrent/Executor;Lcom/instabug/apm/b/a/d/c;)V
    .locals 0
    .param p1    # Lcom/instabug/apm/b/a/c/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/apm/b/a/c/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/instabug/apm/c/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/instabug/apm/b/a/d/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/apm/b/a/c/f;->a:Lcom/instabug/apm/b/a/c/c;

    .line 3
    iput-object p2, p0, Lcom/instabug/apm/b/a/c/f;->b:Lcom/instabug/apm/b/a/c/a;

    .line 4
    iput-object p3, p0, Lcom/instabug/apm/b/a/c/f;->c:Lcom/instabug/apm/c/c;

    .line 5
    iput-object p4, p0, Lcom/instabug/apm/b/a/c/f;->d:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p5, p0, Lcom/instabug/apm/b/a/c/f;->e:Lcom/instabug/apm/b/a/d/c;

    return-void
.end method

.method static synthetic a(Lcom/instabug/apm/b/a/c/f;)Lcom/instabug/apm/c/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/apm/b/a/c/f;->c:Lcom/instabug/apm/c/c;

    return-object p0
.end method


# virtual methods
.method a(J)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/instabug/apm/model/APMNetworkLog;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/instabug/apm/b/a/c/f;->b:Lcom/instabug/apm/b/a/c/a;

    invoke-interface {v0, p1, p2}, Lcom/instabug/apm/b/a/c/a;->b(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/instabug/apm/model/APMNetworkLog;Lcom/instabug/library/model/common/Session;)V
    .locals 2
    .param p1    # Lcom/instabug/apm/model/APMNetworkLog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/library/model/common/Session;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/instabug/apm/b/a/c/f;->e:Lcom/instabug/apm/b/a/d/c;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/instabug/apm/b/a/c/f;->a:Lcom/instabug/apm/b/a/c/c;

    invoke-interface {p2}, Lcom/instabug/library/model/common/Session;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/instabug/apm/b/a/c/c;->a(Ljava/lang/String;Lcom/instabug/apm/model/APMNetworkLog;)J

    .line 6
    iget-object p1, p0, Lcom/instabug/apm/b/a/c/f;->e:Lcom/instabug/apm/b/a/d/c;

    invoke-interface {p2}, Lcom/instabug/library/model/common/Session;->getId()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/instabug/apm/b/a/d/c;->b(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/instabug/library/model/common/Session;Lcom/instabug/library/model/common/Session;)V
    .locals 2
    .param p1    # Lcom/instabug/library/model/common/Session;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/library/model/common/Session;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/b/a/c/f;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/instabug/apm/b/a/c/f$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/instabug/apm/b/a/c/f$a;-><init>(Lcom/instabug/apm/b/a/c/f;Lcom/instabug/library/model/common/Session;Lcom/instabug/library/model/common/Session;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/apm/model/APMNetworkLog;",
            ">;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/instabug/apm/b/a/c/f;->b:Lcom/instabug/apm/b/a/c/a;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/instabug/apm/b/a/c/a;->a(I)V

    return-void
.end method

.method a(Lcom/instabug/apm/model/APMNetworkLog;)Z
    .locals 0
    .param p1    # Lcom/instabug/apm/model/APMNetworkLog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 8
    invoke-virtual {p1}, Lcom/instabug/apm/model/APMNetworkLog;->executedInBackground()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
