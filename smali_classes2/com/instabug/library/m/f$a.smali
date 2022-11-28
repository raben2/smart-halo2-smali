.class Lcom/instabug/library/m/f$a;
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
        "Lcom/instabug/library/model/session/SessionsBatchDTO;",
        ">;",
        "Lio/reactivex/CompletableSource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/m/f;


# direct methods
.method constructor <init>(Lcom/instabug/library/m/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/m/f$a;->a:Lcom/instabug/library/m/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lio/reactivex/CompletableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/session/SessionsBatchDTO;",
            ">;)",
            "Lio/reactivex/CompletableSource;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/m/f$a;->a:Lcom/instabug/library/m/f;

    invoke-static {v0, p1}, Lcom/instabug/library/m/f;->a(Lcom/instabug/library/m/f;Ljava/util/List;)Lio/reactivex/Completable;

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

    invoke-virtual {p0, p1}, Lcom/instabug/library/m/f$a;->a(Ljava/util/List;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
