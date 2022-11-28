.class Lcom/instabug/library/m/f$b;
.super Ljava/lang/Object;
.source "SessionsSyncManager.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/m/f;->b()Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/util/List<",
        "Lcom/instabug/library/model/session/CoreSession;",
        ">;",
        "Ljava/util/List<",
        "Lcom/instabug/library/model/session/SessionsBatchDTO;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/m/f;


# direct methods
.method constructor <init>(Lcom/instabug/library/m/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/m/f$b;->a:Lcom/instabug/library/m/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/session/CoreSession;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/session/SessionsBatchDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/m/f$b;->a:Lcom/instabug/library/m/f;

    invoke-static {v0}, Lcom/instabug/library/m/f;->a(Lcom/instabug/library/m/f;)Lcom/instabug/library/model/session/config/SessionsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/session/config/SessionsConfig;->getSyncMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/m/f$b;->a:Lcom/instabug/library/m/f;

    invoke-static {v0}, Lcom/instabug/library/m/f;->b(Lcom/instabug/library/m/f;)Lcom/instabug/library/m/a;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Lcom/instabug/library/m/a;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/instabug/library/m/f$b;->a:Lcom/instabug/library/m/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Syncing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " batches of max 1 session per batch."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/library/m/f;->a(Lcom/instabug/library/m/f;Ljava/lang/String;)V

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/m/f$b;->a:Lcom/instabug/library/m/f;

    invoke-static {v0}, Lcom/instabug/library/m/f;->a(Lcom/instabug/library/m/f;)Lcom/instabug/library/model/session/config/SessionsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/session/config/SessionsConfig;->getMaxSessionsPerRequest()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/instabug/library/m/f$b;->a:Lcom/instabug/library/m/f;

    invoke-static {v1}, Lcom/instabug/library/m/f;->b(Lcom/instabug/library/m/f;)Lcom/instabug/library/m/a;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/instabug/library/m/a;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 8
    iget-object v1, p0, Lcom/instabug/library/m/f$b;->a:Lcom/instabug/library/m/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Syncing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " batches of max "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sessions per batch."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instabug/library/m/f;->a(Lcom/instabug/library/m/f;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/instabug/library/m/f$b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
