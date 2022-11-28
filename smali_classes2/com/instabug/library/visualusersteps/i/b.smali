.class final Lcom/instabug/library/visualusersteps/i/b;
.super Ljava/lang/Object;
.source "Functions.java"


# direct methods
.method static synthetic a(Ljava/util/Iterator;)Lio/reactivex/Maybe;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/instabug/library/visualusersteps/i/b;->b(Ljava/util/Iterator;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method static a()Lio/reactivex/functions/Function;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;>()",
            "Lio/reactivex/functions/Function<",
            "TT;",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/instabug/library/visualusersteps/i/b$c;

    invoke-direct {v0}, Lcom/instabug/library/visualusersteps/i/b$c;-><init>()V

    return-object v0
.end method

.method static a(FF)Lio/reactivex/functions/Predicate;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lio/reactivex/functions/Predicate<",
            "-",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/instabug/library/visualusersteps/i/b$b;

    invoke-direct {v0, p0, p1}, Lcom/instabug/library/visualusersteps/i/b$b;-><init>(FF)V

    return-object v0
.end method

.method private static b(Ljava/util/Iterator;)Lio/reactivex/Maybe;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Landroid/view/View;",
            ">;)",
            "Lio/reactivex/Maybe<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/instabug/library/visualusersteps/i/b$h;

    invoke-direct {v0, p0}, Lcom/instabug/library/visualusersteps/i/b$h;-><init>(Ljava/util/Iterator;)V

    invoke-static {v0}, Lio/reactivex/Maybe;->create(Lio/reactivex/MaybeOnSubscribe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method static b()Lio/reactivex/functions/Function;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;+",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/visualusersteps/i/b$e;

    invoke-direct {v0}, Lcom/instabug/library/visualusersteps/i/b$e;-><init>()V

    return-object v0
.end method

.method static c()Lio/reactivex/functions/Function;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/visualusersteps/i/b$f;

    invoke-direct {v0}, Lcom/instabug/library/visualusersteps/i/b$f;-><init>()V

    return-object v0
.end method

.method static d()Lio/reactivex/functions/Function;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;+",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/visualusersteps/i/b$d;

    invoke-direct {v0}, Lcom/instabug/library/visualusersteps/i/b$d;-><init>()V

    return-object v0
.end method

.method static e()Lio/reactivex/functions/Function;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;",
            "Lio/reactivex/MaybeSource<",
            "+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/visualusersteps/i/b$g;

    invoke-direct {v0}, Lcom/instabug/library/visualusersteps/i/b$g;-><init>()V

    return-object v0
.end method

.method static f()Lio/reactivex/functions/Predicate;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Predicate<",
            "-",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/visualusersteps/i/b$a;

    invoke-direct {v0}, Lcom/instabug/library/visualusersteps/i/b$a;-><init>()V

    return-object v0
.end method
