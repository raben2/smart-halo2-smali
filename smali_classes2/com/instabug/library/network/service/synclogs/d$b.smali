.class Lcom/instabug/library/network/service/synclogs/d$b;
.super Ljava/lang/Object;
.source "SyncLogService.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/network/service/synclogs/d;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/network/service/synclogs/d;


# direct methods
.method constructor <init>(Lcom/instabug/library/network/service/synclogs/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/network/service/synclogs/d$b;->a:Lcom/instabug/library/network/service/synclogs/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/service/synclogs/d$b;->a:Lcom/instabug/library/network/service/synclogs/d;

    invoke-virtual {v0}, Lcom/instabug/library/network/e/d/b;->a()Lcom/instabug/library/network/Request$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/network/service/synclogs/d$b;->a:Lcom/instabug/library/network/service/synclogs/d;

    invoke-virtual {v0}, Lcom/instabug/library/network/e/d/b;->a()Lcom/instabug/library/network/Request$Callbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/instabug/library/network/Request$Callbacks;->onSucceeded(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/instabug/library/network/service/synclogs/d$b;->a(Ljava/util/List;)V

    return-void
.end method
