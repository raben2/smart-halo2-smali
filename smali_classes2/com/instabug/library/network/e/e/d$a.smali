.class Lcom/instabug/library/network/e/e/d$a;
.super Ljava/lang/Object;
.source "AttributesRepository.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/network/e/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Completable;
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
        "Lcom/instabug/library/model/h;",
        ">;",
        "Lio/reactivex/CompletableSource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/network/e/e/d;


# direct methods
.method constructor <init>(Lcom/instabug/library/network/e/e/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/network/e/e/d$a;->a:Lcom/instabug/library/network/e/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lio/reactivex/CompletableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/h;",
            ">;)",
            "Lio/reactivex/CompletableSource;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Lio/reactivex/CompletableSource;

    iget-object v1, p0, Lcom/instabug/library/network/e/e/d$a;->a:Lcom/instabug/library/network/e/e/d;

    .line 2
    invoke-static {v1}, Lcom/instabug/library/network/e/e/d;->a(Lcom/instabug/library/network/e/e/d;)Lcom/instabug/library/network/e/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/network/e/e/b;->a()Lio/reactivex/Completable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/instabug/library/network/e/e/d$a;->a:Lcom/instabug/library/network/e/e/d;

    .line 3
    invoke-static {v1}, Lcom/instabug/library/network/e/e/d;->a(Lcom/instabug/library/network/e/e/d;)Lcom/instabug/library/network/e/e/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/instabug/library/network/e/e/b;->a(Ljava/util/List;)Lio/reactivex/Completable;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 4
    invoke-static {v0}, Lio/reactivex/Completable;->concatArray([Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

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

    invoke-virtual {p0, p1}, Lcom/instabug/library/network/e/e/d$a;->a(Ljava/util/List;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
