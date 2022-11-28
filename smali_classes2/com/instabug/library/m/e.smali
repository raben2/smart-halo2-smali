.class public Lcom/instabug/library/m/e;
.super Lcom/instabug/library/l/a/a;
.source "SessionsRemoteDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/l/a/a<",
        "Lcom/instabug/library/model/session/SessionsBatchDTO;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instabug/library/network/a;

.field private final b:Lcom/instabug/library/util/f;


# direct methods
.method public constructor <init>(Lcom/instabug/library/network/a;Lcom/instabug/library/util/f;)V
    .locals 0
    .param p1    # Lcom/instabug/library/network/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/library/util/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/l/a/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/m/e;->a:Lcom/instabug/library/network/a;

    .line 3
    iput-object p2, p0, Lcom/instabug/library/m/e;->b:Lcom/instabug/library/util/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/model/session/SessionsBatchDTO;)Lio/reactivex/Completable;
    .locals 3
    .param p1    # Lcom/instabug/library/model/session/SessionsBatchDTO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/instabug/library/model/session/SessionMapper;->toJson(Lcom/instabug/library/model/session/SessionsBatchDTO;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/instabug/library/model/session/SessionMapper;->toRequest(Lorg/json/JSONObject;)Lcom/instabug/library/network/Request;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/instabug/library/m/e;->a:Lcom/instabug/library/network/a;

    invoke-interface {v0, p1}, Lcom/instabug/library/network/a;->doRequest(Lcom/instabug/library/network/Request;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/library/m/e;->b:Lcom/instabug/library/util/f;

    .line 4
    invoke-virtual {v0}, Lcom/instabug/library/util/f;->b()Lio/reactivex/functions/Predicate;

    move-result-object v0

    const-wide/16 v1, 0x3

    invoke-virtual {p1, v1, v2, v0}, Lio/reactivex/Observable;->retry(JLio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lio/reactivex/Observable;->ignoreElements()Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
