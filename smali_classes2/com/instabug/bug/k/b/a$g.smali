.class final Lcom/instabug/bug/k/b/a$g;
.super Ljava/lang/Object;
.source "ActivityViewInspector.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/k/b/a;->b(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/instabug/bug/k/b/b;",
        "Lio/reactivex/Observable<",
        "Lcom/instabug/bug/k/b/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/bug/k/b/b;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/instabug/bug/k/b/b;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/k/b/a$g;->a:Lcom/instabug/bug/k/b/b;

    iput-object p2, p0, Lcom/instabug/bug/k/b/a$g;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/bug/k/b/b;)Lio/reactivex/Observable;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_RETURN_NOT_NULLABLE"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/bug/k/b/b;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/instabug/bug/k/b/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/k/b/a$g;->a:Lcom/instabug/bug/k/b/b;

    invoke-virtual {v0, p1}, Lcom/instabug/bug/k/b/b;->a(Lcom/instabug/bug/k/b/b;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/k/b/a$g;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/instabug/library/util/memory/MemoryUtils;->isLowMemory(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/instabug/bug/k/b/c;->b(Lcom/instabug/bug/k/b/b;)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_RETURN_NOT_NULLABLE"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/instabug/bug/k/b/b;

    invoke-virtual {p0, p1}, Lcom/instabug/bug/k/b/a$g;->a(Lcom/instabug/bug/k/b/b;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
