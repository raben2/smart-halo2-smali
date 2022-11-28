.class Lcom/instabug/library/network/e/e/b;
.super Lcom/instabug/library/l/a/a;
.source "AttributesLocalDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/l/a/a<",
        "Lcom/instabug/library/model/h;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/l/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/Completable;
    .locals 1

    .line 3
    new-instance v0, Lcom/instabug/library/network/e/e/b$b;

    invoke-direct {v0, p0}, Lcom/instabug/library/network/e/e/b$b;-><init>(Lcom/instabug/library/network/e/e/b;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Lio/reactivex/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/h;",
            ">;)",
            "Lio/reactivex/Completable;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/instabug/library/network/e/e/b$a;

    invoke-direct {v0, p0}, Lcom/instabug/library/network/e/e/b$a;-><init>(Lcom/instabug/library/network/e/e/b;)V

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
