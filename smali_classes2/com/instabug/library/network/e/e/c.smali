.class Lcom/instabug/library/network/e/e/c;
.super Lcom/instabug/library/l/a/a;
.source "AttributesRemoteDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/l/a/a<",
        "Ljava/util/List<",
        "Lcom/instabug/library/model/h;",
        ">;",
        "Lcom/instabug/library/network/Request;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instabug/library/internal/utils/PreferencesUtils;

.field private final b:Lcom/instabug/library/network/a;

.field private final c:Lcom/instabug/library/util/TaskDebouncer;


# direct methods
.method constructor <init>(Lcom/instabug/library/network/a;Lcom/instabug/library/internal/utils/PreferencesUtils;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/l/a/a;-><init>()V

    .line 2
    new-instance v0, Lcom/instabug/library/util/TaskDebouncer;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/util/TaskDebouncer;-><init>(J)V

    iput-object v0, p0, Lcom/instabug/library/network/e/e/c;->c:Lcom/instabug/library/util/TaskDebouncer;

    .line 3
    iput-object p2, p0, Lcom/instabug/library/network/e/e/c;->a:Lcom/instabug/library/internal/utils/PreferencesUtils;

    .line 4
    iput-object p1, p0, Lcom/instabug/library/network/e/e/c;->b:Lcom/instabug/library/network/a;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/instabug/library/network/Request;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/network/e/e/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/instabug/library/network/e/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/instabug/library/network/Request;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/instabug/library/network/Request;)Lio/reactivex/Observable;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/network/Request;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/instabug/library/network/RequestResponse;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/instabug/library/network/e/e/c;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/library/network/e/e/c;->b:Lcom/instabug/library/network/a;

    invoke-interface {v0, p1}, Lcom/instabug/library/network/a;->doRequest(Lcom/instabug/library/network/Request;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method a()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/instabug/library/network/e/e/c;->a:Lcom/instabug/library/internal/utils/PreferencesUtils;

    const-string v1, "key_user_attrs_hash"

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/utils/PreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/instabug/library/network/e/e/c;->a:Lcom/instabug/library/internal/utils/PreferencesUtils;

    const-string v1, "key_user_attrs_hash"

    invoke-virtual {v0, v1, p1}, Lcom/instabug/library/internal/utils/PreferencesUtils;->saveOrUpdateString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(J)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/instabug/library/network/e/e/c;->b()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 9
    invoke-virtual {p0}, Lcom/instabug/library/network/e/e/c;->c()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method b()J
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/instabug/library/network/e/e/c;->a:Lcom/instabug/library/internal/utils/PreferencesUtils;

    const-string v1, "key_user_attrs_last_sync"

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/utils/PreferencesUtils;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Lcom/instabug/library/network/Request;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/network/Request;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/h;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/e/e/c;->c:Lcom/instabug/library/util/TaskDebouncer;

    invoke-virtual {p0, p1}, Lcom/instabug/library/network/e/e/c;->a(Lcom/instabug/library/network/Request;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/library/util/TaskDebouncer;->debounce(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/instabug/library/network/e/e/c$i;

    invoke-direct {v0, p0}, Lcom/instabug/library/network/e/e/c$i;-><init>(Lcom/instabug/library/network/e/e/c;)V

    .line 3
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/instabug/library/network/e/e/c$h;

    invoke-direct {v0, p0}, Lcom/instabug/library/network/e/e/c$h;-><init>(Lcom/instabug/library/network/e/e/c;)V

    .line 10
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/instabug/library/network/e/e/c$g;

    invoke-direct {v0, p0}, Lcom/instabug/library/network/e/e/c$g;-><init>(Lcom/instabug/library/network/e/e/c;)V

    .line 17
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/instabug/library/network/e/e/c$f;

    invoke-direct {v0, p0}, Lcom/instabug/library/network/e/e/c$f;-><init>(Lcom/instabug/library/network/e/e/c;)V

    .line 24
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/instabug/library/network/e/e/c$e;

    invoke-direct {v0, p0}, Lcom/instabug/library/network/e/e/c$e;-><init>(Lcom/instabug/library/network/e/e/c;)V

    .line 32
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/instabug/library/network/e/e/c$d;

    invoke-direct {v0, p0}, Lcom/instabug/library/network/e/e/c$d;-><init>(Lcom/instabug/library/network/e/e/c;)V

    .line 39
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/instabug/library/network/e/e/c$c;

    invoke-direct {v0, p0}, Lcom/instabug/library/network/e/e/c$c;-><init>(Lcom/instabug/library/network/e/e/c;)V

    .line 46
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/instabug/library/network/e/e/c$b;

    invoke-direct {v0, p0}, Lcom/instabug/library/network/e/e/c$b;-><init>(Lcom/instabug/library/network/e/e/c;)V

    .line 54
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/instabug/library/network/e/e/c$a;

    invoke-direct {v0, p0}, Lcom/instabug/library/network/e/e/c$a;-><init>(Lcom/instabug/library/network/e/e/c;)V

    .line 62
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method b(J)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/instabug/library/network/e/e/c;->a:Lcom/instabug/library/internal/utils/PreferencesUtils;

    const-string v1, "key_user_attrs_last_sync"

    invoke-virtual {v0, v1, p1, p2}, Lcom/instabug/library/internal/utils/PreferencesUtils;->saveOrUpdateLong(Ljava/lang/String;J)V

    return-void
.end method

.method c()J
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/library/network/e/e/c;->a:Lcom/instabug/library/internal/utils/PreferencesUtils;

    const-string v1, "key_user_attrs_ttl"

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/utils/PreferencesUtils;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method c(J)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/e/e/c;->a:Lcom/instabug/library/internal/utils/PreferencesUtils;

    const-string v1, "key_user_attrs_ttl"

    invoke-virtual {v0, v1, p1, p2}, Lcom/instabug/library/internal/utils/PreferencesUtils;->saveOrUpdateLong(Ljava/lang/String;J)V

    return-void
.end method
