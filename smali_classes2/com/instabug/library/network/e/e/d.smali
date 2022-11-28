.class Lcom/instabug/library/network/e/e/d;
.super Ljava/lang/Object;
.source "AttributesRepository.java"


# instance fields
.field private final a:Lcom/instabug/library/network/e/e/c;

.field private final b:Lcom/instabug/library/network/e/e/b;


# direct methods
.method constructor <init>(Lcom/instabug/library/network/e/e/c;Lcom/instabug/library/network/e/e/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/network/e/e/d;->a:Lcom/instabug/library/network/e/e/c;

    .line 3
    iput-object p2, p0, Lcom/instabug/library/network/e/e/d;->b:Lcom/instabug/library/network/e/e/b;

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/network/e/e/d;)Lcom/instabug/library/network/e/e/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/network/e/e/d;->b:Lcom/instabug/library/network/e/e/b;

    return-object p0
.end method

.method static synthetic b(Lcom/instabug/library/network/e/e/d;)Lcom/instabug/library/network/e/e/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/network/e/e/d;->a:Lcom/instabug/library/network/e/e/c;

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Completable;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/instabug/library/network/e/e/d;->a:Lcom/instabug/library/network/e/e/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/instabug/library/network/e/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/instabug/library/network/Request;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p3, Lcom/instabug/library/network/e/e/d$c;

    invoke-direct {p3, p0}, Lcom/instabug/library/network/e/e/d$c;-><init>(Lcom/instabug/library/network/e/e/d;)V

    .line 4
    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p3, Lcom/instabug/library/network/e/e/d$b;

    invoke-direct {p3, p0, p2}, Lcom/instabug/library/network/e/e/d$b;-><init>(Lcom/instabug/library/network/e/e/d;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/instabug/library/network/e/e/d$a;

    invoke-direct {p2, p0}, Lcom/instabug/library/network/e/e/d$a;-><init>(Lcom/instabug/library/network/e/e/d;)V

    .line 16
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/util/List;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/h;",
            ">;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/h;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/model/h;

    .line 19
    invoke-virtual {v1}, Lcom/instabug/library/model/h;->a()Lcom/instabug/library/model/h$b;

    move-result-object v1

    .line 20
    invoke-virtual {v1, p3}, Lcom/instabug/library/model/h$b;->a(Z)Lcom/instabug/library/model/h$b;

    move-result-object v1

    .line 21
    invoke-virtual {v1, p2}, Lcom/instabug/library/model/h$b;->a(Ljava/lang/String;)Lcom/instabug/library/model/h$b;

    move-result-object v1

    .line 22
    invoke-virtual {v1, p4}, Lcom/instabug/library/model/h$b;->a(I)Lcom/instabug/library/model/h$b;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/instabug/library/model/h$b;->a()Lcom/instabug/library/model/h;

    move-result-object v1

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
