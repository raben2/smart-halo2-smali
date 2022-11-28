.class Lcom/instabug/apm/b/a/c/f$a;
.super Ljava/lang/Object;
.source "NetworkLogMigrationHandlerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/apm/b/a/c/f;->a(Lcom/instabug/library/model/common/Session;Lcom/instabug/library/model/common/Session;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/model/common/Session;

.field final synthetic b:Lcom/instabug/library/model/common/Session;

.field final synthetic c:Lcom/instabug/apm/b/a/c/f;


# direct methods
.method constructor <init>(Lcom/instabug/apm/b/a/c/f;Lcom/instabug/library/model/common/Session;Lcom/instabug/library/model/common/Session;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/b/a/c/f$a;->c:Lcom/instabug/apm/b/a/c/f;

    iput-object p2, p0, Lcom/instabug/apm/b/a/c/f$a;->a:Lcom/instabug/library/model/common/Session;

    iput-object p3, p0, Lcom/instabug/apm/b/a/c/f$a;->b:Lcom/instabug/library/model/common/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/b/a/c/f$a;->c:Lcom/instabug/apm/b/a/c/f;

    invoke-static {v0}, Lcom/instabug/apm/b/a/c/f;->a(Lcom/instabug/apm/b/a/c/f;)Lcom/instabug/apm/c/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/instabug/apm/c/c;->h()J

    move-result-wide v0

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/instabug/apm/b/a/c/f$a;->c:Lcom/instabug/apm/b/a/c/f;

    invoke-virtual {v2, v0, v1}, Lcom/instabug/apm/b/a/c/f;->a(J)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/instabug/apm/model/APMNetworkLog;

    .line 7
    iget-object v5, p0, Lcom/instabug/apm/b/a/c/f$a;->c:Lcom/instabug/apm/b/a/c/f;

    invoke-virtual {v5, v4}, Lcom/instabug/apm/b/a/c/f;->a(Lcom/instabug/apm/model/APMNetworkLog;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/instabug/apm/b/a/c/f$a;->c:Lcom/instabug/apm/b/a/c/f;

    iget-object v6, p0, Lcom/instabug/apm/b/a/c/f$a;->a:Lcom/instabug/library/model/common/Session;

    invoke-virtual {v5, v4, v6}, Lcom/instabug/apm/b/a/c/f;->a(Lcom/instabug/apm/model/APMNetworkLog;Lcom/instabug/library/model/common/Session;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v5, p0, Lcom/instabug/apm/b/a/c/f$a;->c:Lcom/instabug/apm/b/a/c/f;

    iget-object v6, p0, Lcom/instabug/apm/b/a/c/f$a;->b:Lcom/instabug/library/model/common/Session;

    invoke-virtual {v5, v4, v6}, Lcom/instabug/apm/b/a/c/f;->a(Lcom/instabug/apm/model/APMNetworkLog;Lcom/instabug/library/model/common/Session;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v3, p0, Lcom/instabug/apm/b/a/c/f$a;->c:Lcom/instabug/apm/b/a/c/f;

    invoke-virtual {v3, v2}, Lcom/instabug/apm/b/a/c/f;->a(Ljava/util/List;)V

    :cond_3
    if-eqz v2, :cond_4

    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_4
    return-void
.end method
