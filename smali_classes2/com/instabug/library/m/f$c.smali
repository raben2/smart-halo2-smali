.class Lcom/instabug/library/m/f$c;
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
        "Lcom/instabug/library/model/session/SessionLocalEntity;",
        ">;",
        "Ljava/util/List<",
        "Lcom/instabug/library/model/session/CoreSession;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/m/f;


# direct methods
.method constructor <init>(Lcom/instabug/library/m/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/m/f$c;->a:Lcom/instabug/library/m/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/session/SessionLocalEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/session/CoreSession;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/m/f$c;->a:Lcom/instabug/library/m/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessions ready for sync."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/library/m/f;->a(Lcom/instabug/library/m/f;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/instabug/library/model/session/SessionMapper;->toModels(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

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

    invoke-virtual {p0, p1}, Lcom/instabug/library/m/f$c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
