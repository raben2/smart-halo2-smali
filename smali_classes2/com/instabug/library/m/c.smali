.class public Lcom/instabug/library/m/c;
.super Ljava/lang/Object;
.source "SessionsLocalDataSource.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/Completable;
    .locals 1

    .line 6
    new-instance v0, Lcom/instabug/library/m/c$h;

    invoke-direct {v0, p0}, Lcom/instabug/library/m/c$h;-><init>(Lcom/instabug/library/m/c;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/instabug/library/model/session/SessionLocalEntity;)Lio/reactivex/Completable;
    .locals 1
    .param p1    # Lcom/instabug/library/model/session/SessionLocalEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/instabug/library/m/c$a;

    invoke-direct {v0, p0, p1}, Lcom/instabug/library/m/c$a;-><init>(Lcom/instabug/library/m/c;Lcom/instabug/library/model/session/SessionLocalEntity;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lio/reactivex/Completable;
    .locals 1

    .line 5
    new-instance v0, Lcom/instabug/library/m/c$g;

    invoke-direct {v0, p0, p1}, Lcom/instabug/library/m/c$g;-><init>(Lcom/instabug/library/m/c;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Completable;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lcom/instabug/library/m/c$e;

    invoke-direct {v0, p0, p2, p1}, Lcom/instabug/library/m/c$e;-><init>(Lcom/instabug/library/m/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;)Lio/reactivex/Completable;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Completable;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/instabug/library/m/c$f;

    invoke-direct {v0, p0}, Lcom/instabug/library/m/c$f;-><init>(Lcom/instabug/library/m/c;)V

    .line 4
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public b()Lio/reactivex/Completable;
    .locals 1

    .line 4
    new-instance v0, Lcom/instabug/library/m/c$d;

    invoke-direct {v0, p0}, Lcom/instabug/library/m/c$d;-><init>(Lcom/instabug/library/m/c;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lio/reactivex/Completable;
    .locals 1

    .line 3
    new-instance v0, Lcom/instabug/library/m/c$c;

    invoke-direct {v0, p0, p1}, Lcom/instabug/library/m/c$c;-><init>(Lcom/instabug/library/m/c;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;)Lio/reactivex/Completable;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Completable;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/instabug/library/m/c$b;

    invoke-direct {v0, p0}, Lcom/instabug/library/m/c$b;-><init>(Lcom/instabug/library/m/c;)V

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public c()Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/session/SessionLocalEntity;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/m/c$i;

    invoke-direct {v0, p0}, Lcom/instabug/library/m/c$i;-><init>(Lcom/instabug/library/m/c;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method
